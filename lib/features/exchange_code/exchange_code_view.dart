import 'dart:convert';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lumine/features/exchange_code/data/saved_codes_provider.dart';
import 'package:lumine/utils/date_formatter.dart';

class ExchangeCodeView extends HookConsumerWidget {
  const ExchangeCodeView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final editingController = useTextEditingController();
    final sortType = useState(ExchangeCodeSortType.all);

    return Scaffold(
      appBar: AppBar(
        title: const Text('交換コード適用'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(
                left: 16,
                right: 16,
                top: 8,
              ),
              child: TextFormField(
                controller: editingController,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  label: const Text('交換コード'),
                  suffixIcon: Wrap(
                    children: [
                      IconButton(
                        onPressed: () async {
                          final clipboard = await Clipboard.getData('text/plain');

                          if (clipboard?.text != null) {
                            editingController.text = clipboard!.text!;
                          }
                        },
                        icon: const Icon(Icons.assignment),
                        tooltip: 'クリップボードから貼り付け',
                      ),
                      IconButton(
                        onPressed: () async {
                          final String code = editingController.text;

                          editingController.clear();

                          ref.read(savedCodesNotifierProvider.notifier).apply(code).then((message) {
                            showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title: const Text('交換結果'),
                                  content: Text(message),
                                  actions: [
                                    TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: const Text('閉じる')
                                    )
                                  ],
                                );
                              },
                            );
                          });
                        },
                        icon: const Icon(Icons.arrow_forward),
                        tooltip: '交換'
                      ),
                    ]
                  )
                ),
              )
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 16
              ),
              child: SegmentedButton<ExchangeCodeSortType>(
                segments: const [
                  ButtonSegment(
                    value: ExchangeCodeSortType.all,
                    icon: Icon(Icons.list_outlined),
                    label: Text('全て'),
                  ),
                  ButtonSegment(
                    value: ExchangeCodeSortType.success,
                    icon: Icon(Icons.checklist_outlined),
                    label: Text('成功')
                  ),
                  ButtonSegment(
                    value: ExchangeCodeSortType.failed,
                    icon: Icon(Icons.warning_amber_outlined),
                    label: Text('失敗')
                  ),
                ],
                selected: {sortType.value},
                onSelectionChanged: (Set<ExchangeCodeSortType> newSelection) {
                  sortType.value = newSelection.first;
                },
              )
            ),
            
            ...ref.watch(savedCodesNotifierProvider).where((item) {
              final codeInfo = json.decode(item);
              switch (sortType.value) {
                case ExchangeCodeSortType.success:
                  return codeInfo['isSuccess'] == true;
                case ExchangeCodeSortType.failed:
                  return codeInfo['isSuccess'] == false;
                default:
                  return true;
              }
            }).mapIndexed((index, item) {
              final codeInfo = json.decode(item);
              return ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                title: Text(
                  codeInfo['code'],
                  style: const TextStyle(
                    fontSize: 18
                  ),
                ),
                subtitle: Text('${DateFormatter.formatDate(int.parse(codeInfo['date']), 'yyyy M/d H:mm:ss')} ${codeInfo['isSuccess'] ? '成功' : '失敗'}'),
                trailing: IconButton(
                  onPressed: () async {
                    await Clipboard.setData(ClipboardData(text: codeInfo['code']));
                  },
                  icon: const Icon(Icons.copy),
                ),
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    showDragHandle: true,
                    builder: (context) {
                      return Wrap(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                            child: Text(codeInfo['code'], style: const TextStyle(fontSize: 20))
                          ),
                          ListTile(
                            leading: Icon(codeInfo['isSuccess'] ? Icons.done : Icons.close),
                            title: Text(codeInfo?['message'] ?? 'メッセージがありません'),
                          ),
                          ListTile(
                            leading: const Icon(Icons.copy_outlined),
                            title: const Text('コードをコピー'),
                            onTap: () {
                              Clipboard.setData(ClipboardData(text: codeInfo['code']));
                              Navigator.pop(context);
                            }
                          ),
                          ListTile(
                            leading: const Icon(Icons.delete_outline),
                            title: const Text('コードを削除'),
                            onTap: () {
                              ref.read(savedCodesNotifierProvider.notifier).remove(index);
                              Navigator.pop(context);
                            }
                          ),
                        ],
                      );
                    },
                  );
                },
              );
            }),
          ],
        ),
      )
    );
  } 
}

enum ExchangeCodeSortType { all, success, failed }
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:path_provider/path_provider.dart';

class StorageSettingsView extends HookWidget {
  const StorageSettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ストレージ'),
      ),
      body: ListView(
        children: [
          ListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 16),
            leading: const Icon(Icons.delete_rounded),
            title: const Text('キャッシュを削除'),
            onTap: () async {
              final isDeleteCache = await showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text('確認'),
                    content: const Text('キャッシュを削除しますか？'),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: const Text('キャンセル')
                      ),
                      TextButton(
                        onPressed: () async {
                          Navigator.pop(context, true);
                        },
                        child: const Text('はい')
                      )
                    ],
                  );
                }
              );

              switch (isDeleteCache) {
                case true:
                  try {
                    final tempDir = await getTemporaryDirectory();
                    tempDir.deleteSync(recursive: true);
                    if (!context.mounted) return;
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('正常に削除されました'),
                        showCloseIcon: true,
                        behavior: SnackBarBehavior.floating,
                      )
                    );
                  } catch (err) {
                    if (!context.mounted) return;
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: const Text('削除中にエラーが発生しました'),
                        action: SnackBarAction(
                          label: '詳細',
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title: const Text('エラー詳細'),
                                  content: SingleChildScrollView(
                                    child: Text(err.toString()),
                                  ),
                                  actions: [
                                    TextButton(
                                      onPressed: () => Navigator.pop(context),
                                      child: const Text('閉じる')
                                    )
                                  ],
                                );
                              }
                            );
                          }
                        ),
                        showCloseIcon: true,
                        behavior: SnackBarBehavior.floating,
                      )
                    );
                  }
                break;
              }
            },
          )
        ],
      ),
    );
  }
}
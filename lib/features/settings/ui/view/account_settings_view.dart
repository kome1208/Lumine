import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lumine/core/api/hoyolab_api.dart';
import 'package:lumine/core/provider/account_list_provider.dart';
import 'package:lumine/core/provider/account_provider.dart';
import 'package:lumine/features/setup/ui/view/manual_login_view.dart';
import 'package:lumine/features/setup/ui/view/web_login_view.dart';

class AccountSettingsView extends HookConsumerWidget {
  const AccountSettingsView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final accounts = ref.watch(accountListNotifierProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('アカウント設定'),
        actions: [
          PopupMenuButton(
            icon: const Icon(Icons.add),
            onSelected: (value) async {
              switch (value) {
                case 'web':
                  final Map<String, dynamic>? cookie = await Navigator.push(context, MaterialPageRoute(builder: (context) => const WebLoginView()));

                  if (cookie != null) {
                    final api = HoYoLAB(
                      ltoken: cookie['ltoken_v2'],
                      ltmid: cookie['ltmid_v2'],
                      ltuid: cookie['ltuid_v2'],
                      cookieToken: cookie['cookie_token_v2'],
                    );

                    api.getGameRecordCard().then((data) {
                      final genshinRecord = data.list.firstWhereOrNull((record) => record.gameId == 2);

                      if (genshinRecord != null) {
                        final Map<String, dynamic> accountInfo = {
                          "ltoken": cookie['ltoken_v2'],
                          "ltmid": cookie['ltmid_v2'],
                          "ltuid": cookie['ltuid_v2'],
                          "cookieToken": cookie['cookie_token_v2'],
                          "nickname": genshinRecord.nickname,
                          "region": genshinRecord.region,
                          "regionName": genshinRecord.regionName,
                          "uid": genshinRecord.gameRoleId,
                        };

                        if (accounts.any((account) => account['uid'] == genshinRecord.gameRoleId)) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('このアカウントは既に追加されています'),
                              showCloseIcon: true,
                              behavior: SnackBarBehavior.floating,
                            )
                          );
                          return;
                        }

                        ref.read(accountListNotifierProvider.notifier).add(accountInfo);
                      } else {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: const Text('エラー'),
                              content: const Text('原神のデータが見つかりませんでした'),
                              actions: [
                                TextButton(
                                  onPressed: () => Navigator.pop(context),
                                  child: const Text('閉じる')
                                )
                              ],
                            );
                          },
                        );
                      }
                    });
                  }
                  break;
                case 'manual':
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const ManualLoginView()));
                  break;
                default:
                  break;
              }
            },
            itemBuilder: (context) {
              return [
                const PopupMenuItem(
                  value: 'web',
                  child: Text('Webでログイン')
                ),
                const PopupMenuItem(
                  value: 'manual',
                  child: Text('手動で入力')
                ),
              ];
            },
          )
        ],
      ),
      body: ListView.builder(
        itemCount: accounts.length,
        itemBuilder: (context, index) {
          final account = accounts[index];

          return ListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 16),
            title: Text('${account['nickname']}'),
            subtitle: Text('UID: ${account['uid']}'),
            trailing: IconButton(
              onPressed: () async {
                final action = await showModalBottomSheet(
                  context: context,
                  showDragHandle: true,
                  builder: (context) {
                    return ListView(
                      shrinkWrap: true,
                      children: [
                        ListTile(
                          leading: const Icon(Icons.delete),
                          title: const Text('アカウントを削除'),
                          onTap: () {
                            Navigator.pop(context, 'delete_account');
                          },
                        )
                      ],
                    );
                  },
                );

                if (!context.mounted) return;
                switch (action) {
                  case 'delete_account':
                    if (accounts.length <= 1) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('アカウントは一つ以上必要なのでこのアカウントを削除することはできません'),
                          showCloseIcon: true,
                          behavior: SnackBarBehavior.floating,
                        )
                      );
                      return;
                    }
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: const Text('確認'),
                          content: Text('${account['nickname']}(${account['uid']})を削除しますか？'),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text('キャンセル')
                            ),
                            TextButton(
                              onPressed: () {
                                ref.read(accountListNotifierProvider.notifier).remove(account['uid']);
                                Navigator.pop(context);
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text('アカウントを削除しました'),
                                    showCloseIcon: true,
                                    behavior: SnackBarBehavior.floating,
                                  )
                                );
                              },
                              child: const Text('削除')
                            )
                          ],
                        );
                      }
                    );
                    break;
                  default:
                }
              },
              icon: const Icon(Icons.more_vert)
            ),
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text('確認'),
                    content: Text('アカウントを${account['nickname']}(${account['uid']})に変更しますか？'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('キャンセル')
                      ),
                      TextButton(
                        onPressed: () {
                          ref.read(accountNotifierProvider.notifier).change(account['uid']);
                          Navigator.pop(context);
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('アカウントを変更しました'),
                              showCloseIcon: true,
                              behavior: SnackBarBehavior.floating,
                            )
                          );
                        },
                        child: const Text('変更')
                      )
                    ],
                  );
                }
              );
            },
          );
        },
      )
    );
  }
}
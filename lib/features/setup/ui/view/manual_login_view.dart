import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lumine/core/api/hoyolab_api.dart';
import 'package:lumine/core/provider/account_list_provider.dart';

class ManualLoginView extends HookConsumerWidget {
  const ManualLoginView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    final theme = Theme.of(context);
    final ltokenEditingController = useTextEditingController();
    final ltmidEditingController = useTextEditingController();
    final ltuidEditingController = useTextEditingController();
    final cookieTokenEditingController = useTextEditingController();
    final accounts = ref.watch(accountListNotifierProvider);
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('手動ログイン'),
      ),
      body: Form(
        key: formKey,
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          children: [
            const SizedBox(height: 16),
            TextFormField(
              controller: ltokenEditingController,
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                labelText: 'ltoken_v2',
                suffixIcon: IconButton(
                  onPressed: ltokenEditingController.clear,
                  icon: const Icon(Icons.close)
                )
              ),
              validator: validator,
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: cookieTokenEditingController,
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                labelText: 'cookie_token_v2',
                suffixIcon: IconButton(
                  onPressed: cookieTokenEditingController.clear,
                  icon: const Icon(Icons.close)
                )
              ),
              validator: validator,
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: ltmidEditingController,
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                labelText: 'ltmid_v2(account_mid_v2)',
                suffixIcon: IconButton(
                  onPressed: ltmidEditingController.clear,
                  icon: const Icon(Icons.close)
                )
              ),
              validator: validator,
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: ltuidEditingController,
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                labelText: 'ltuid_v2(account_id_v2)',
                suffixIcon: IconButton(
                  onPressed: ltuidEditingController.clear,
                  icon: const Icon(Icons.close)
                )
              ),
              validator: validator,
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: theme.colorScheme.primary,
                foregroundColor: theme.colorScheme.onPrimary
              ),
              child: const Text('ログイン'),
              onPressed: () {
                final isValid = formKey.currentState?.validate() ?? false;

                if (!isValid) return;

                final api = HoYoLAB(
                  ltoken: ltokenEditingController.text,
                  ltmid: ltmidEditingController.text,
                  ltuid: ltuidEditingController.text,
                  cookieToken: cookieTokenEditingController.text
                );

                api.getGameRecordCard().then((data) {
                  final genshinRecord = data.list.firstWhereOrNull((record) => record.gameId == 2);

                  if (genshinRecord != null) {
                    final Map<String, dynamic> accountInfo = {
                      "ltoken": ltokenEditingController.text,
                      "ltmid": ltmidEditingController.text,
                      "ltuid": ltuidEditingController.text,
                      "cookieToken": cookieTokenEditingController.text,
                      "nickname": genshinRecord.nickname,
                      "region": genshinRecord.region,
                      "regionName": genshinRecord.regionName,
                      "uid": genshinRecord.gameRoleId,
                    };

                    formKey.currentState?.reset();

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

                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('アカウントが追加されました'),
                        showCloseIcon: true,
                        behavior: SnackBarBehavior.floating,
                      )
                    );
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
              },
            )
          ],
        )
      )
    );
  }
}

String? validator(String? value) {
  if (value == null || value.isEmpty) {
    return 'このフィールドは入力必須です';
  }
  return null;
}
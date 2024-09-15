import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lumine/features/settings/ui/view/account_settings_view.dart';
import 'package:lumine/features/settings/ui/view/notification_settings_view.dart';
import 'package:lumine/features/settings/ui/view/storage_settings_view.dart';
import 'package:lumine/features/settings/ui/view/theme_settings_view.dart';
import 'package:lumine/features/setup/login_view.dart';
import 'package:permission_handler/permission_handler.dart';

class SettingsView extends HookConsumerWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('設定'),
      ),
      body: ListView(
        children: [
          ListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 16),
            leading: const Icon(Icons.palette_rounded),
            title: const Text('表示設定'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const ThemeSettingView()));
            },
          ),
          if (Platform.isAndroid) ListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 16),
            leading: const Icon(Icons.notifications_rounded),
            title: const Text('通知設定'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const NotificationSettingView()));
            },
          ),
          ListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 16),
            leading: const Icon(Icons.account_circle_rounded),
            title: const Text('アカウント設定'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const AccountSettingsView()));
            },
          ),
          ListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 16),
            leading: const Icon(Icons.storage_rounded),
            title: const Text('ストレージ'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const StorageSettingsView()));
            },
          ),
          ListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 16),
            title: const Text('ウェルカム画面を開く'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const SetupView()
                )
              );
            },
          ),
          if (Platform.isAndroid) ListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 16),
            title: const Text('バッテリーの最適化を無効にする'),
            onTap: () {
              Permission.ignoreBatteryOptimizations
              .onDeniedCallback(() {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text('警告'),
                      content: const Text('最適化されている場合、各種通知やウィジェットが動作しなくなる可能性があります。'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('閉じる')
                        ),
                        TextButton(
                          onPressed: () {
                            openAppSettings();
                            Navigator.pop(context);
                          },
                          child: const Text('設定へ')
                        )
                      ],
                    );
                  },
                );
              })
              .request();
            },
            trailing: IconButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text('最適化を無効にする理由'),
                      content: const Text('天然樹脂の回復通知や探索派遣の完了通知などの通知や、ウィジェットのバッググラウンド更新を時間通りに行うためですが、上記機能を利用しない場合は変更しなくても構いません。'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            openAppSettings();
                            Navigator.pop(context);
                          },
                          child: const Text('設定')
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('閉じる')
                        ),
                      ],
                    );
                  },
                );
              },
              icon: const Icon(Icons.info_outline)
            ),
          ),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lumine/core/preference/notification/app_notification_provider.dart';
import 'package:permission_handler/permission_handler.dart';

class NotificationSettingView extends HookConsumerWidget {
  const NotificationSettingView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settings = ref.watch(appNotificationNotifierProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('通知設定'),
      ),
      body: ListView(
        children: [
          SwitchListTile(
            title: const Text('アプリの通知'),
            value: settings.enabled,
            onChanged: (value) async {
              if (!value) {
                ref.read(appNotificationNotifierProvider.notifier).setEnabled(value);
                return;
              }
              if (await Permission.notification.request().isGranted) {
                ref.read(appNotificationNotifierProvider.notifier).setEnabled(value);
              } else {
                if (!context.mounted) return;
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text('警告'),
                      content: const Text('この機能を利用するには通知権限が必要です'),
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
              }
            }
          ),
          if (settings.enabled) ...[
            SwitchListTile(
              title: const Text('天然樹脂の回復通知'),
              value: settings.resinRemindEnabled,
              onChanged: (value) {
                ref.read(appNotificationNotifierProvider.notifier).setResinRemindEnabled(value);
              }
            ),
            if (settings.resinRemindEnabled) ListTile(
              title: const Text('通知するタイミング'),
              subtitle: Slider(
                divisions: 10,
                label: '${settings.resinRemindOffset.truncateToDouble()}',
                value: settings.resinRemindOffset.truncateToDouble(),
                max: 200,
                min: 1,
                onChanged: (value) {
                  ref.read(appNotificationNotifierProvider.notifier).setResinRemindOffset(value.truncate());
                }
              ),
            ),
            SwitchListTile(
              title: const Text('探索派遣の完了通知'),
              value: settings.expeditionFinishRemindEnabled,
              onChanged: (value) {
                ref.read(appNotificationNotifierProvider.notifier).setExpeditionFinishRemindEnabled(value);
              }
            ),
            if (settings.expeditionFinishRemindEnabled) ListTile(
              title: const Text('通知するタイミング'),
              trailing: DropdownButton(
                items: const [
                  DropdownMenuItem(
                    value: 'zenninndone',
                    child: Text('全員完了時')
                  ),
                  DropdownMenuItem(
                    value: 'hitorizutsu',
                    child: Text('一人ずつ')
                  )
                ],
                value: settings.expeditionFinishRemindMode,
                onChanged: (value) {
                  ref.read(appNotificationNotifierProvider.notifier).setExpeditionFinishRemindMode(value as String);
                },
              ),
            )
          ]
        ],
      )
    );
  }
}
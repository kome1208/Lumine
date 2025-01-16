import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lumine/core/preference/notification/app_notification_provider.dart';
import 'package:lumine/main.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:workmanager/workmanager.dart';

class NotificationSettingView extends HookConsumerWidget {
  const NotificationSettingView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settings = ref.watch(appNotificationNotifierProvider);

    ref.listen(appNotificationNotifierProvider, (previous, next) {
      Workmanager().cancelByUniqueName(dailyNoteTask);
      registerDailyNote();

      if (!next.enabled) {
        FlutterLocalNotificationsPlugin().cancelAll();
      }
    });

    return Scaffold(
      appBar: AppBar(
        title: const Text('通知設定'),
        actions: [
          if (kDebugMode) TextButton(
            child: Text('Pending Notifications'),
            onPressed: () async {
              final notifications = await FlutterLocalNotificationsPlugin().pendingNotificationRequests();
              if (!context.mounted) return;
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text('Pending Notifications'),
                    content: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: notifications.map((e) => ListTile(
                          title: Text(e.title ?? 'No Title'),
                          subtitle: Text(e.body ?? 'No Body'),
                        )).toList(),
                      )
                    ),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('閉じる')
                      )
                    ],
                  );
                }
              );
            },
          )
        ]
      ),
      body: ListView(
        children: [
          Card.filled(
            color: Theme.of(context).colorScheme.primaryContainer,
            clipBehavior: Clip.hardEdge,
            margin: const EdgeInsets.all(16),
            child: SwitchListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
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
            )
          ),
          if (settings.enabled) ...[
            SwitchListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 16),
              title: const Text('天然樹脂の回復通知'),
              subtitle: const Text('天然樹脂が指定した値になった時に通知します'),
              value: settings.resinRemindEnabled,
              onChanged: (value) {
                ref.read(appNotificationNotifierProvider.notifier).setResinRemindEnabled(value);
              }
            ),
            if (settings.resinRemindEnabled) ...[
              ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 16),
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
                contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                title: const Text('上限に達した時も通知する'),
                subtitle: const Text('天然樹脂が上限に達した時にも通知します'),
                value: settings.noticeWhenResinFull,
                onChanged: (value) {
                  ref.read(appNotificationNotifierProvider.notifier).setNoticeWhenResinFull(value);
                }
              ),
            ],
            Divider(height: 1),
            SwitchListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 16),
              title: const Text('デイリー依頼の通知'),
              subtitle: const Text('デイリー依頼の報酬が受け取られていない時に通知します'),
              value: settings.dailyTaskRemindEnabled,
              onChanged: (value) {
                ref.read(appNotificationNotifierProvider.notifier).setDailyTaskRemindEnabled(value);
              }
            ),
            if (settings.dailyTaskRemindEnabled) ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 16),
              title: Text('通知する時間'),
              subtitle: Text('ヒント: デイリー依頼は毎日5:00にリセットされます'),
              trailing: DropdownButton(
                items: List.generate(24, (index) => DropdownMenuItem(
                  value: index,
                  child: Text('$index時')
                )),
                value: settings.dailyTaskRemindTime,
                onChanged: (value) {
                  ref.read(appNotificationNotifierProvider.notifier).setDailyTaskRemindTime(value as int);
                },
              ),
            ),
            Divider(height: 1),
            SwitchListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 16),
              title: const Text('探索派遣の完了通知'),
              subtitle: const Text('探索派遣が完了した時に通知します'),
              value: settings.expeditionFinishRemindEnabled,
              onChanged: (value) {
                ref.read(appNotificationNotifierProvider.notifier).setExpeditionFinishRemindEnabled(value);
              }
            ),
            if (settings.expeditionFinishRemindEnabled) ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 16),
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
            ),
            Divider(height: 1),
            SwitchListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 16),
              title: const Text('参量物質変化器の準備完了通知'),
              value: settings.transformerRemindEnabled,
              onChanged: (value) {
                ref.read(appNotificationNotifierProvider.notifier).setTransformerRemindEnabled(value);
              }
            ),
            Divider(height: 1),
            SwitchListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 16),
              title: const Text('洞天宝銭上限通知'),
              value: settings.homeCoinRemindEnabled,
              onChanged: (value) {
                ref.read(appNotificationNotifierProvider.notifier).setHomeCoinRemindEnabled(value);
              }
            ),
            Divider(height: 1),
            SwitchListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 16),
              title: const Text('デイリーログイン通知'),
              subtitle: const Text('毎日指定した時間にデイリーログイン状況を取得して通知します'),
              value: settings.checkDailySignStatusEnabled,
              onChanged: (value) {
                ref.read(appNotificationNotifierProvider.notifier).setCheckDailySignStatusEnabled(value);

                Workmanager().cancelByUniqueName(checkDailySignStatusTask);
              }
            ),
            if (settings.checkDailySignStatusEnabled) ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 16),
              title: const Text('通知する時間'),
              subtitle: Text('ヒント: 新しい報酬は毎日1:00に開放されます'),
              trailing: DropdownButton(
                items: List.generate(24, (index) => DropdownMenuItem(
                  value: index,
                  child: Text('$index時')
                )),
                value: settings.checkDailySignStatusTime,
                onChanged: (value) {
                  ref.read(appNotificationNotifierProvider.notifier).setCheckDailySignStatusTime(value as int);
                },
              ),
            ),
            // Divider(height: 1),
            // SwitchListTile(
            //   contentPadding: const EdgeInsets.symmetric(horizontal: 16),
            //   title: Text('週ボス樹脂半減回数リセット通知'),
            //   value: settings.weeklyBossRemindEnabled,
            //   onChanged: (value) {
            //     ref.read(appNotificationNotifierProvider.notifier).setWeeklyBossRemindEnabled(value);

            //     FlutterLocalNotificationsPlugin().cancel(21);

            //     if (!value) return;

            //     registerWeeklyBossRemind();
            //   }
            // ),
          ],
        ],
      )
    );
  }
}
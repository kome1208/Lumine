import 'dart:io';

import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
// import 'package:home_widget/home_widget.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lumine/app.dart';
import 'package:lumine/core/preference/notification/app_notification_provider.dart';
import 'package:lumine/core/provider/package_info.dart';
import 'package:lumine/core/provider/shared_preferences.dart';
import 'package:lumine/features/daily_bonus/data/sign_info_notifier_provider.dart';
import 'package:lumine/features/home/data/daily_note.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/timezone.dart' as tz;
import 'package:workmanager/workmanager.dart';

const checkDailySignStatusTask = 'checkDailySignStatus';
const weeklyBossRemindTask = 'weeklyBossRemind';
const dailyNoteTask = 'dailyNote';

Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized();

  if (!kIsWeb && defaultTargetPlatform == TargetPlatform.android) {
    await InAppWebViewController.setWebContentsDebuggingEnabled(kDebugMode);
  }

  if (Platform.isAndroid) {
    final flnp = FlutterLocalNotificationsPlugin();
    const AndroidInitializationSettings initializationSettingsAndroid = AndroidInitializationSettings('@mipmap/ic_launcher');
    const InitializationSettings initializationSettings = InitializationSettings(android: initializationSettingsAndroid);
    await flnp.initialize(initializationSettings);
  }

  Workmanager().initialize(callbackDispatcher, isInDebugMode: kDebugMode);

  Future.wait([
    registerCheckDailySignStatusTask(),
    // registerWeeklyBossRemind(),
    registerDailyNote(),
  ]);

  runApp(
    ProviderScope(
      overrides: [
        sharedPreferencesProvider.overrideWithValue(await SharedPreferences.getInstance()),
        packageInfoProvider.overrideWithValue(await PackageInfo.fromPlatform())
      ],
      child: const App()
    )
  );
}

@pragma('vm:entry-point')
void callbackDispatcher() {
  Workmanager().executeTask((task, inputData) async {
    switch (task) {
      case checkDailySignStatusTask:
        await checkDailySignStatus();
        break;
      case dailyNoteTask:
        await getDailyNote();
        break;
    }

    return Future.value(true);
  });
}


Future<void> registerCheckDailySignStatusTask() async {
  final container = ProviderContainer(
    overrides: [
      sharedPreferencesProvider.overrideWithValue(await SharedPreferences.getInstance()),
    ]
  );

  final prefs = container.read(appNotificationNotifierProvider);

  if (!prefs.enabled || !prefs.checkDailySignStatusEnabled) {
    return;
  }

  final now = DateTime.now();
  final firstRun = DateTime(now.year, now.month, now.day, prefs.checkDailySignStatusTime, 0);

  final initialDelay = firstRun.isAfter(now)
    ? firstRun.difference(now)
    : firstRun.add(Duration(days: 1)).difference(now);

  Workmanager().registerPeriodicTask(
    checkDailySignStatusTask,
    checkDailySignStatusTask,
    initialDelay: initialDelay,
    frequency: Duration(days: 1),
  );

  container.dispose();
}

Future<void> registerWeeklyBossRemind() async {
  final container = ProviderContainer(
    overrides: [
      sharedPreferencesProvider.overrideWithValue(await SharedPreferences.getInstance()),
    ]
  );

  final prefs = container.read(appNotificationNotifierProvider);

  if (!prefs.enabled && !prefs.weeklyBossRemindEnabled) {
    return;
  }

  final flnp = FlutterLocalNotificationsPlugin();

  const AndroidNotificationDetails androidPlatformChannelSpecifics = AndroidNotificationDetails(
    'com.kome1.lumine.notification',
    'weekly_boss_remind',
    importance: Importance.defaultImportance,
    priority: Priority.defaultPriority,
    showWhen: true,
  );

  const NotificationDetails platformChannelSpecifics = NotificationDetails(android: androidPlatformChannelSpecifics);

  final now = tz.TZDateTime.now(tz.UTC);
  int todayWeekday = now.weekday;

  int daysToNextMonday = 8 - todayWeekday;

  DateTime nextMonday = now.add(Duration(days: daysToNextMonday));

  final scheduleTime = tz.TZDateTime(tz.UTC, nextMonday.year, nextMonday.month, nextMonday.day, 5, 0, 0);

  final adjustedTime = scheduleTime.isBefore(now)
    ? scheduleTime.add(Duration(days: 1))
    : scheduleTime;

  print(adjustedTime.toUtc());

  await flnp.zonedSchedule(
    21,
    '週ボス樹脂半減回数リセット通知',
    '週ボス樹脂半減回数がリセットされました。',
    adjustedTime,
    platformChannelSpecifics,
    uiLocalNotificationDateInterpretation: UILocalNotificationDateInterpretation.absoluteTime,
    androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
  );

  container.dispose();
}

Future<void> registerDailyNote() async {
  final container = ProviderContainer(
    overrides: [
      sharedPreferencesProvider.overrideWithValue(await SharedPreferences.getInstance()),
    ]
  );

  final prefs = container.read(appNotificationNotifierProvider);

  if (!prefs.enabled) return;

  if (prefs.resinRemindEnabled || prefs.weeklyBossRemindEnabled || prefs.expeditionFinishRemindEnabled || prefs.transformerRemindEnabled || prefs.homeCoinRemindEnabled) {
    Workmanager().registerPeriodicTask(
      dailyNoteTask,
      dailyNoteTask,
      initialDelay: Duration(minutes: 1),
      frequency: Duration(hours: 1),
    );
  }

  container.dispose();
}

Future<void> getDailyNote () async {
  final container = ProviderContainer(
    overrides: [
      sharedPreferencesProvider.overrideWithValue(await SharedPreferences.getInstance()),
    ]
  );

  final prefs = container.read(appNotificationNotifierProvider);

  if (!prefs.enabled) return;

  if (
    prefs.resinRemindEnabled ||
    prefs.weeklyBossRemindEnabled ||
    prefs.expeditionFinishRemindEnabled ||
    prefs.transformerRemindEnabled ||
    prefs.homeCoinRemindEnabled ||
    prefs.dailyTaskRemindEnabled
  ) {
    final dailyNote = await container.read(dailyNoteNotifierProvider.future);

    final flnp = FlutterLocalNotificationsPlugin();

    const AndroidNotificationDetails androidPlatformChannelSpecifics = AndroidNotificationDetails(
      'com.kome1.lumine.notification',
      'daily_note',
      importance: Importance.defaultImportance,
      priority: Priority.defaultPriority,
      showWhen: true,
    );

    const NotificationDetails platformChannelSpecifics = NotificationDetails(android: androidPlatformChannelSpecifics);
    
    if (prefs.resinRemindEnabled && dailyNote.resinRecoveryTime != '0') {
      final resinReminderOffset = prefs.resinRemindOffset.truncate();
      int time = int.parse(dailyNote.resinRecoveryTime) - (96000 - (60 * 8 * resinReminderOffset));
      String message = '天然樹脂が$resinReminderOffsetに達しました';

      if (dailyNote.currentResin > resinReminderOffset && prefs.noticeWhenResinFull) {
        time = int.parse(dailyNote.resinRecoveryTime);
        message = '天然樹脂が上限に達しました';
      }

      final scheduledTime = tz.TZDateTime.now(tz.UTC).add(Duration(seconds: time));

      await flnp.zonedSchedule(
        0,
        '天然樹脂回復通知',
        message,
        scheduledTime,
        platformChannelSpecifics,
        uiLocalNotificationDateInterpretation: UILocalNotificationDateInterpretation.absoluteTime,
        androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
      );
    }

    if (prefs.expeditionFinishRemindEnabled && dailyNote.expeditions.any((expedition) => expedition.remainedTime != '0')) {
      switch (prefs.expeditionFinishRemindMode) {
        case 'zenninndone':
          await flnp.zonedSchedule(
            100,
            '探索派遣完了通知',
            '全員探索が完了しました',
            tz.TZDateTime.now(tz.UTC).add(Duration(seconds: int.parse(dailyNote.expeditions.reduce((a, b) => int.parse(a.remainedTime) > int.parse(b.remainedTime) ? a : b).remainedTime))),
            platformChannelSpecifics,
            uiLocalNotificationDateInterpretation: UILocalNotificationDateInterpretation.absoluteTime,
            androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
          );
          break;
        case 'hitorizutsu':
          dailyNote.expeditions.forEachIndexed((i, expedition) {
            flnp.zonedSchedule(
              i + 100,
              '探索派遣完了通知',
              '一件の探索派遣が完了しました',
              tz.TZDateTime.now(tz.UTC).add(Duration(seconds: int.parse(expedition.remainedTime))),
              platformChannelSpecifics,
              uiLocalNotificationDateInterpretation: UILocalNotificationDateInterpretation.absoluteTime,
              androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
            );
          });
          break;
      }
    }

    if (prefs.transformerRemindEnabled && !dailyNote.transformer.recoveryTime['reached']) {
      final recoveryTime = dailyNote.transformer.recoveryTime;

      await flnp.zonedSchedule(
        6,
        '参量物質変化器の準備完了',
        '参量物質変化器が再び使用可能になりました',
        tz.TZDateTime.now(tz.UTC).add(Duration(
          days: recoveryTime['Day'],
          hours: recoveryTime['Hour'],
          minutes: recoveryTime['Minute'],
          seconds: recoveryTime['Second'],
        )),
        platformChannelSpecifics,
        uiLocalNotificationDateInterpretation: UILocalNotificationDateInterpretation.absoluteTime,
        androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
      );
    }

    if (prefs.homeCoinRemindEnabled && dailyNote.homeCoinRecoveryTime != '0') {
      await flnp.zonedSchedule(
        7,
        '洞天宝銭上限通知',
        '洞天宝銭が上限に達しました',
        tz.TZDateTime.now(tz.UTC).add(Duration(seconds: int.parse(dailyNote.homeCoinRecoveryTime))),
        platformChannelSpecifics,
        uiLocalNotificationDateInterpretation: UILocalNotificationDateInterpretation.absoluteTime,
        androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
      );
    }

    if (prefs.dailyTaskRemindEnabled && !dailyNote.isExtraTaskRewardReceived && prefs.dailyTaskRemindTime == DateTime.now().hour) {
      await flnp.show(
        8,
        'デイリー依頼通知',
        '本日のデイリー依頼報酬はまだ受け取られていません。任務を完了して受け取りましょう！',
        platformChannelSpecifics,
      );
    }
  }

  container.dispose();
}

Future<void> checkDailySignStatus () async {
  final flnp = FlutterLocalNotificationsPlugin();

  final container = ProviderContainer(
    overrides: [
      sharedPreferencesProvider.overrideWithValue(await SharedPreferences.getInstance()),
    ]
  );

  final result = await container.read(signInfoNotifierProvider.future);

  if (!result.isSign) {
    const AndroidNotificationDetails androidPlatformChannelSpecifics = AndroidNotificationDetails(
      'com.kome1.lumine.notification',
      'daily_bonus',
      importance: Importance.defaultImportance,
      priority: Priority.defaultPriority,
      showWhen: true,
    );

    const NotificationDetails platformChannelSpecifics = NotificationDetails(android: androidPlatformChannelSpecifics);

    await flnp.show(
      20,
      'デイリーボーナスが受け取り可能',
      '本日のデイリーボーナスはまだ受け取られていません。受け取りましょう！',
      platformChannelSpecifics
    );
  }

  container.dispose();
}
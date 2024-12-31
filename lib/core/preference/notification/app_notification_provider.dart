import 'package:lumine/core/provider/shared_preferences.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_notification_provider.g.dart';

class NotificationSettings {
  final bool enabled;
  final bool resinRemindEnabled;
  final int resinRemindOffset;
  final bool expeditionFinishRemindEnabled;
  final String expeditionFinishRemindMode;
  final bool homeCoinRemindEnabled;
  final bool dailyTaskRemindEnabled;
  final int dailyTaskRemindTime;
  final bool weeklyBossRemindEnabled;
  final bool transformerRemindEnabled;
  final bool checkDailySignStatusEnabled;
  final int checkDailySignStatusTime;
  final bool noticeWhenResinFull;

  NotificationSettings({
    required this.enabled,
    required this.resinRemindEnabled,
    required this.resinRemindOffset,
    required this.expeditionFinishRemindEnabled,
    required this.expeditionFinishRemindMode,
    required this.homeCoinRemindEnabled,
    required this.dailyTaskRemindEnabled,
    required this.dailyTaskRemindTime,
    required this.weeklyBossRemindEnabled,
    required this.transformerRemindEnabled,
    required this.checkDailySignStatusEnabled,
    required this.checkDailySignStatusTime,
    required this.noticeWhenResinFull,
  });

  NotificationSettings copyWith({
    bool? enabled,
    bool? resinRemindEnabled,
    int? resinRemindOffset,
    bool? expeditionFinishRemindEnabled,
    String? expeditionFinishRemindMode,
    bool? homeCoinRemindEnabled,
    int? homeCoinRemindTime,
    bool? dailyTaskRemindEnabled,
    int? dailyTaskRemindTime,
    bool? weeklyBossRemindEnabled,
    int? weeklyBossRemindDate,
    bool? transformerRemindEnabled,
    bool? checkDailySignStatusEnabled,
    int? checkDailySignStatusTime,
    bool? noticeWhenResinFull,
  }) {
    return NotificationSettings(
      enabled: enabled ?? this.enabled,
      resinRemindEnabled: resinRemindEnabled ?? this.resinRemindEnabled,
      resinRemindOffset: resinRemindOffset ?? this.resinRemindOffset,
      expeditionFinishRemindEnabled: expeditionFinishRemindEnabled ?? this.expeditionFinishRemindEnabled,
      expeditionFinishRemindMode: expeditionFinishRemindMode ?? this.expeditionFinishRemindMode,
      homeCoinRemindEnabled: homeCoinRemindEnabled ?? this.homeCoinRemindEnabled,
      dailyTaskRemindEnabled: dailyTaskRemindEnabled ?? this.dailyTaskRemindEnabled,
      dailyTaskRemindTime: dailyTaskRemindTime ?? this.dailyTaskRemindTime,
      weeklyBossRemindEnabled: weeklyBossRemindEnabled ?? this.weeklyBossRemindEnabled,
      transformerRemindEnabled: transformerRemindEnabled ?? this.transformerRemindEnabled,
      checkDailySignStatusEnabled: checkDailySignStatusEnabled ?? this.checkDailySignStatusEnabled,
      checkDailySignStatusTime: checkDailySignStatusTime ?? this.checkDailySignStatusTime,
      noticeWhenResinFull: noticeWhenResinFull ?? this.noticeWhenResinFull,
    );
  }
}

@Riverpod(keepAlive: true)
class AppNotificationNotifier extends _$AppNotificationNotifier {
  @override
  NotificationSettings build() {
    return _load();
  }

  void setEnabled(bool value) {
    state = state.copyWith(
      enabled: value
    );
    ref.read(sharedPreferencesProvider).setBool(_enabledKey, value);
  }

  void setResinRemindEnabled(bool value) {
    state = state.copyWith(
      resinRemindEnabled: value
    );
    ref.read(sharedPreferencesProvider).setBool(_resinRemindEnabledKey, value);
  }

  void setResinRemindOffset(int value) {
    state = state.copyWith(
      resinRemindOffset: value
    );
    ref.read(sharedPreferencesProvider).setInt(_resinRemindOffsetKey, value);
  }

  void setExpeditionFinishRemindEnabled(bool value) {
    state = state.copyWith(
      expeditionFinishRemindEnabled: value
    );
    ref.read(sharedPreferencesProvider).setBool(_expeditionFinishRemindEnabledKey, value);
  }

  void setExpeditionFinishRemindMode(String value) {
    state = state.copyWith(
      expeditionFinishRemindMode: value
    );
    ref.read(sharedPreferencesProvider).setString(_expeditionFinishRemindModeKey, value);
  }

  void setHomeCoinRemindEnabled(bool value) {
    state = state.copyWith(
      homeCoinRemindEnabled: value
    );
    ref.read(sharedPreferencesProvider).setBool(_homeCoinRemindEnabledKey, value);
  }

  void setDailyTaskRemindEnabled(bool value) {
    state = state.copyWith(
      dailyTaskRemindEnabled: value
    );
    ref.read(sharedPreferencesProvider).setBool(_dailyTaskRemindEnabledKey, value);
  }

  void setDailyTaskRemindTime(int value) {
    state = state.copyWith(
      dailyTaskRemindTime: value
    );
    ref.read(sharedPreferencesProvider).setInt(_dailyTaskRemindTimeKey, value);
  }

  void setWeeklyBossRemindEnabled(bool value) {
    state = state.copyWith(
      weeklyBossRemindEnabled: value
    );
    ref.read(sharedPreferencesProvider).setBool(_weeklyBossRemindEnabledKey, value);
  }

  void setTransformerRemindEnabled(bool value) {
    state = state.copyWith(
      transformerRemindEnabled: value
    );
    ref.read(sharedPreferencesProvider).setBool(_transformerRemindEnabledKey, value);
  }

  void setCheckDailySignStatusEnabled(bool value) {
    state = state.copyWith(
      checkDailySignStatusEnabled: value
    );
    ref.read(sharedPreferencesProvider).setBool(_checkDailySignStatusEnabledKey, value);
  }

  void setCheckDailySignStatusTime(int value) {
    state = state.copyWith(
      checkDailySignStatusTime: value
    );
    ref.read(sharedPreferencesProvider).setInt(_checkDailySignStatusTimeKey, value);
  }

  void setNoticeWhenResinFull(bool value) {
    state = state.copyWith(
      noticeWhenResinFull: value
    );
    ref.read(sharedPreferencesProvider).setBool(_noticeWhenResinFullKey, value);
  }

  NotificationSettings _load() {
    final prefs = ref.read(sharedPreferencesProvider);

    final settings = NotificationSettings(
      enabled: prefs.getBool(_enabledKey) ?? false,
      resinRemindEnabled: prefs.getBool(_resinRemindEnabledKey) ?? false,
      resinRemindOffset: prefs.getInt(_resinRemindOffsetKey) ?? 1,
      expeditionFinishRemindEnabled: prefs.getBool(_expeditionFinishRemindEnabledKey) ?? false,
      expeditionFinishRemindMode: prefs.getString(_expeditionFinishRemindModeKey) ?? 'zenninndone',
      homeCoinRemindEnabled: prefs.getBool(_homeCoinRemindEnabledKey) ?? false,
      dailyTaskRemindEnabled: prefs.getBool(_dailyTaskRemindEnabledKey) ?? false,
      dailyTaskRemindTime: prefs.getInt(_dailyTaskRemindTimeKey) ?? 18,
      weeklyBossRemindEnabled: prefs.getBool(_weeklyBossRemindEnabledKey) ?? false,
      transformerRemindEnabled: prefs.getBool(_transformerRemindEnabledKey) ?? false,
      checkDailySignStatusEnabled: prefs.getBool(_checkDailySignStatusEnabledKey) ?? false,
      checkDailySignStatusTime: prefs.getInt(_checkDailySignStatusTimeKey) ?? 18,
      noticeWhenResinFull: prefs.getBool(_noticeWhenResinFullKey) ?? false,
    );

    return settings;
  }

  static const _enabledKey = 'app_notification_enabled';
  static const _resinRemindEnabledKey = 'resin_remind_enabled';
  static const _resinRemindOffsetKey = 'resin_remind_offset';
  static const _expeditionFinishRemindEnabledKey = 'expedition_finish_remind_enabled';
  static const _expeditionFinishRemindModeKey = 'expedition_finish_remind_mode';
  static const _homeCoinRemindEnabledKey = 'home_coin_remind_enabled';
  static const _dailyTaskRemindEnabledKey = 'daily_task_remind_enabled';
  static const _dailyTaskRemindTimeKey = 'daily_task_remind_time';
  static const _weeklyBossRemindEnabledKey = 'weekly_boss_remind_enabled';
  static const _transformerRemindEnabledKey = 'transformer_remind_enabled';
  static const _checkDailySignStatusEnabledKey = 'check_daily_sign_status_enabled';
  static const _checkDailySignStatusTimeKey = 'check_daily_sign_status_time';
  static const _noticeWhenResinFullKey = 'notice_when_resin_full';
}
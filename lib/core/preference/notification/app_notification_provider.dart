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
  final int homeCoinRemindTime;
  final bool dailyTaskRemindEnabled;
  final int dailyTaskRemindTime;
  final bool weeklyBossRemindEnabled;
  final int weeklyBossRemindDate;
  final bool transformerRemindEnabled;

  NotificationSettings({
    required this.enabled,
    required this.resinRemindEnabled,
    required this.resinRemindOffset,
    required this.expeditionFinishRemindEnabled,
    required this.expeditionFinishRemindMode,
    required this.homeCoinRemindEnabled,
    required this.homeCoinRemindTime,
    required this.dailyTaskRemindEnabled,
    required this.dailyTaskRemindTime,
    required this.weeklyBossRemindEnabled,
    required this.weeklyBossRemindDate,
    required this.transformerRemindEnabled,
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
  }) {
    return NotificationSettings(
      enabled: enabled ?? this.enabled,
      resinRemindEnabled: resinRemindEnabled ?? this.resinRemindEnabled,
      resinRemindOffset: resinRemindOffset ?? this.resinRemindOffset,
      expeditionFinishRemindEnabled: expeditionFinishRemindEnabled ?? this.expeditionFinishRemindEnabled,
      expeditionFinishRemindMode: expeditionFinishRemindMode ?? this.expeditionFinishRemindMode,
      homeCoinRemindEnabled: homeCoinRemindEnabled ?? this.homeCoinRemindEnabled,
      homeCoinRemindTime: homeCoinRemindTime ?? this.homeCoinRemindTime,
      dailyTaskRemindEnabled: dailyTaskRemindEnabled ?? this.dailyTaskRemindEnabled,
      dailyTaskRemindTime: dailyTaskRemindTime ?? this.dailyTaskRemindTime,
      weeklyBossRemindEnabled: weeklyBossRemindEnabled ?? this.weeklyBossRemindEnabled,
      weeklyBossRemindDate: weeklyBossRemindDate ?? this.weeklyBossRemindDate,
      transformerRemindEnabled: transformerRemindEnabled ?? this.transformerRemindEnabled,
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

  void setHomeCoinRemindTime(int value) {
    state = state.copyWith(
      homeCoinRemindTime: value
    );
    ref.read(sharedPreferencesProvider).setInt(_homeCoinRemindTimeKey, value);
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

  void setWeeklyBossRemindDate(int value) {
    state = state.copyWith(
      weeklyBossRemindDate: value
    );
    ref.read(sharedPreferencesProvider).setInt(_weeklyBossRemindDateKey, value);
  }

  void setTransformerRemindEnabled(bool value) {
    state = state.copyWith(
      transformerRemindEnabled: value
    );
    ref.read(sharedPreferencesProvider).setBool(_transformerRemindEnabledKey, value);
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
      homeCoinRemindTime: prefs.getInt(_homeCoinRemindTimeKey) ?? 0,
      dailyTaskRemindEnabled: prefs.getBool(_dailyTaskRemindEnabledKey) ?? false,
      dailyTaskRemindTime: prefs.getInt(_dailyTaskRemindTimeKey) ?? 0,
      weeklyBossRemindEnabled: prefs.getBool(_weeklyBossRemindEnabledKey) ?? false,
      weeklyBossRemindDate: prefs.getInt(_weeklyBossRemindDateKey) ?? 0,
      transformerRemindEnabled: prefs.getBool(_transformerRemindEnabledKey) ?? false,
    );

    return settings;
  }

  static const _enabledKey = 'app_notification_enabled';
  static const _resinRemindEnabledKey = 'resin_remind_enabled';
  static const _resinRemindOffsetKey = 'resin_remind_offset';
  static const _expeditionFinishRemindEnabledKey = 'expedition_finish_remind_enabled';
  static const _expeditionFinishRemindModeKey = 'expedition_finish_remind_mode';
  static const _homeCoinRemindEnabledKey = 'home_coin_remind_enabled';
  static const _homeCoinRemindTimeKey = 'home_coin_remind_time';
  static const _dailyTaskRemindEnabledKey = 'daily_task_remind_enabled';
  static const _dailyTaskRemindTimeKey = 'daily_task_remind_time';
  static const _weeklyBossRemindEnabledKey = 'weekly_boss_remind_enabled';
  static const _weeklyBossRemindDateKey = 'weekly_boss_remind_date';
  static const _transformerRemindEnabledKey = 'transformer_remind_enabled';
}
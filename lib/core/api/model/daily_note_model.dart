import 'package:json_annotation/json_annotation.dart';

part 'daily_note_model.g.dart';

@JsonSerializable()
class DailyNote {
  @JsonKey(name: 'current_resin')
  final int currentResin;
  @JsonKey(name: 'max_resin')
  final int maxResin;
  @JsonKey(name: 'resin_recovery_time')
  final String resinRecoveryTime;
  @JsonKey(name: 'finished_task_num')
  final int finishedTaskNum;
  @JsonKey(name: 'total_task_num')
  final int totalTaskNum;
  @JsonKey(name: 'is_extra_task_reward_received')
  final bool isExtraTaskRewardReceived;
  @JsonKey(name: 'remain_resin_discount_num')
  final int remainResinDiscountNum;
  @JsonKey(name: 'resin_discount_num_limit')
  final int resinDiscountNumLimit;
  @JsonKey(name: 'current_expedition_num')
  final int currentExpeditionNum;
  @JsonKey(name: 'max_expedition_num')
  final int maxExpeditionNum;
  final List<Expedition> expeditions;
  @JsonKey(name: 'current_home_coin')
  final int currentHomeCoin;
  @JsonKey(name: 'max_home_coin')
  final int maxHomeCoin;
  @JsonKey(name: 'home_coin_recovery_time')
  final String homeCoinRecoveryTime;
  final Transformer transformer;
  @JsonKey(name: 'daily_task')
  final DailyTask dailyTask;
  @JsonKey(name: 'archon_quest_progress')
  final ArchonQuestProgress archonQuestProgress;

  DailyNote({
    required this.currentResin,
    required this.maxResin,
    required this.resinRecoveryTime,
    required this.finishedTaskNum,
    required this.totalTaskNum,
    required this.isExtraTaskRewardReceived,
    required this.remainResinDiscountNum,
    required this.resinDiscountNumLimit,
    required this.currentExpeditionNum,
    required this.maxExpeditionNum,
    required this.expeditions,
    required this.currentHomeCoin,
    required this.maxHomeCoin,
    required this.homeCoinRecoveryTime,
    required this.transformer,
    required this.dailyTask,
    required this.archonQuestProgress,
  });

  factory DailyNote.fromJson(Map<String, dynamic> json) => _$DailyNoteFromJson(json);

  Map<String, dynamic> toJson() => _$DailyNoteToJson(this);
}

@JsonSerializable()
class DailyTask {
  @JsonKey(name: 'total_num')
  final int totalNum;
  @JsonKey(name: 'finished_num')
  final int finishedNum;
  @JsonKey(name: 'is_extra_task_reward_received')
  final bool isExtraTaskRewardReceived;
  @JsonKey(name: 'task_rewards')
  final List<DailyTaskRewards> taskRewards;
  @JsonKey(name: 'attendance_rewards')
  final List<DailyTaskAttendanceRewards> attendanceRewards;
  @JsonKey(name: 'attendance_visible')
  final bool attendanceVisible;
  @JsonKey(name: 'stored_attendance')
  final String storedAttendance;
  @JsonKey(name: 'stored_attendance_refresh_countdown')
  final int storedAttendanceRefreshCountdown;

  DailyTask({
    required this.totalNum,
    required this.finishedNum,
    required this.isExtraTaskRewardReceived,
    required this.taskRewards,
    required this.attendanceRewards,
    required this.attendanceVisible,
    required this.storedAttendance,
    required this.storedAttendanceRefreshCountdown,
  });

  factory DailyTask.fromJson(Map<String, dynamic> json) => _$DailyTaskFromJson(json);

  Map<String, dynamic> toJson() => _$DailyTaskToJson(this);
}

@JsonSerializable()
class DailyTaskRewards {
  final String status;

  DailyTaskRewards({
    required this.status
  });

  factory DailyTaskRewards.fromJson(Map<String, dynamic> json) => _$DailyTaskRewardsFromJson(json);

  Map<String, dynamic> toJson() => _$DailyTaskRewardsToJson(this);
}

@JsonSerializable()
class DailyTaskAttendanceRewards {
  final String status;
  final int progress;

  DailyTaskAttendanceRewards({
    required this.status,
    required this.progress
  });

  factory DailyTaskAttendanceRewards.fromJson(Map<String, dynamic> json) => _$DailyTaskAttendanceRewardsFromJson(json);

  Map<String, dynamic> toJson() => _$DailyTaskAttendanceRewardsToJson(this);
}

@JsonSerializable()
class ArchonQuestProgress {
  final List<ArchonQuestStatus?> list;
  @JsonKey(name: 'is_open_archon_quest')
  final bool isOpenArchonQuest;
  @JsonKey(name: 'is_finish_all_mainline')
  final bool isFinishAllMainline;
  @JsonKey(name: 'is_finish_all_interchapter')
  final bool isFinishAllInterchapter;

  ArchonQuestProgress({
    required this.list,
    required this.isOpenArchonQuest,
    required this.isFinishAllMainline,
    required this.isFinishAllInterchapter,
  });

  factory ArchonQuestProgress.fromJson(Map<String, dynamic> json) => _$ArchonQuestProgressFromJson(json);

  Map<String, dynamic> toJson() => _$ArchonQuestProgressToJson(this);
}

@JsonSerializable()
class ArchonQuestStatus {
  final String status;
  @JsonKey(name: 'chapter_num')
  final String chapterNum;
  @JsonKey(name: 'chapter_title')
  final String chapterTitle;
  final int id;

  ArchonQuestStatus({
    required this.status,
    required this.chapterNum,
    required this.chapterTitle,
    required this.id,
  });

  factory ArchonQuestStatus.fromJson(Map<String, dynamic> json) => _$ArchonQuestStatusFromJson(json);

  Map<String, dynamic> toJson() => _$ArchonQuestStatusToJson(this);
}

@JsonSerializable()
class Expedition {
  @JsonKey(name: 'avatar_side_icon')
  final String avatarSideIcon;
  final String status;
  @JsonKey(name: 'remained_time')
  final String remainedTime;

  Expedition({
    required this.avatarSideIcon,
    required this.status,
    required this.remainedTime
  });

  factory Expedition.fromJson(Map<String, dynamic> json) => _$ExpeditionFromJson(json);

  Map<String, dynamic> toJson() => _$ExpeditionToJson(this);
}

@JsonSerializable()
class Transformer {
  final bool obtained;
  @JsonKey(name: 'recovery_time')
  final Map<String, dynamic> recoveryTime;
  final bool noticed;
  @JsonKey(name: 'latest_job_id')
  final String latestJobId;

  Transformer({
    required this.obtained,
    required this.recoveryTime,
    required this.noticed,
    required this.latestJobId
  });

  factory Transformer.fromJson(Map<String, dynamic> json) => _$TransformerFromJson(json);

  Map<String, dynamic> toJson() => _$TransformerToJson(this);
}
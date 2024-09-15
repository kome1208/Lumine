// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_note_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DailyNote _$DailyNoteFromJson(Map<String, dynamic> json) => DailyNote(
      currentResin: (json['current_resin'] as num).toInt(),
      maxResin: (json['max_resin'] as num).toInt(),
      resinRecoveryTime: json['resin_recovery_time'] as String,
      finishedTaskNum: (json['finished_task_num'] as num).toInt(),
      totalTaskNum: (json['total_task_num'] as num).toInt(),
      isExtraTaskRewardReceived: json['is_extra_task_reward_received'] as bool,
      remainResinDiscountNum:
          (json['remain_resin_discount_num'] as num).toInt(),
      resinDiscountNumLimit: (json['resin_discount_num_limit'] as num).toInt(),
      currentExpeditionNum: (json['current_expedition_num'] as num).toInt(),
      maxExpeditionNum: (json['max_expedition_num'] as num).toInt(),
      expeditions: (json['expeditions'] as List<dynamic>)
          .map((e) => Expedition.fromJson(e as Map<String, dynamic>))
          .toList(),
      currentHomeCoin: (json['current_home_coin'] as num).toInt(),
      maxHomeCoin: (json['max_home_coin'] as num).toInt(),
      homeCoinRecoveryTime: json['home_coin_recovery_time'] as String,
      transformer:
          Transformer.fromJson(json['transformer'] as Map<String, dynamic>),
      dailyTask: DailyTask.fromJson(json['daily_task'] as Map<String, dynamic>),
      archonQuestProgress: ArchonQuestProgress.fromJson(
          json['archon_quest_progress'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DailyNoteToJson(DailyNote instance) => <String, dynamic>{
      'current_resin': instance.currentResin,
      'max_resin': instance.maxResin,
      'resin_recovery_time': instance.resinRecoveryTime,
      'finished_task_num': instance.finishedTaskNum,
      'total_task_num': instance.totalTaskNum,
      'is_extra_task_reward_received': instance.isExtraTaskRewardReceived,
      'remain_resin_discount_num': instance.remainResinDiscountNum,
      'resin_discount_num_limit': instance.resinDiscountNumLimit,
      'current_expedition_num': instance.currentExpeditionNum,
      'max_expedition_num': instance.maxExpeditionNum,
      'expeditions': instance.expeditions,
      'current_home_coin': instance.currentHomeCoin,
      'max_home_coin': instance.maxHomeCoin,
      'home_coin_recovery_time': instance.homeCoinRecoveryTime,
      'transformer': instance.transformer,
      'daily_task': instance.dailyTask,
      'archon_quest_progress': instance.archonQuestProgress,
    };

DailyTask _$DailyTaskFromJson(Map<String, dynamic> json) => DailyTask(
      totalNum: (json['total_num'] as num).toInt(),
      finishedNum: (json['finished_num'] as num).toInt(),
      isExtraTaskRewardReceived: json['is_extra_task_reward_received'] as bool,
      taskRewards: (json['task_rewards'] as List<dynamic>)
          .map((e) => DailyTaskRewards.fromJson(e as Map<String, dynamic>))
          .toList(),
      attendanceRewards: (json['attendance_rewards'] as List<dynamic>)
          .map((e) =>
              DailyTaskAttendanceRewards.fromJson(e as Map<String, dynamic>))
          .toList(),
      attendanceVisible: json['attendance_visible'] as bool,
      storedAttendance: json['stored_attendance'] as String,
      storedAttendanceRefreshCountdown:
          (json['stored_attendance_refresh_countdown'] as num).toInt(),
    );

Map<String, dynamic> _$DailyTaskToJson(DailyTask instance) => <String, dynamic>{
      'total_num': instance.totalNum,
      'finished_num': instance.finishedNum,
      'is_extra_task_reward_received': instance.isExtraTaskRewardReceived,
      'task_rewards': instance.taskRewards,
      'attendance_rewards': instance.attendanceRewards,
      'attendance_visible': instance.attendanceVisible,
      'stored_attendance': instance.storedAttendance,
      'stored_attendance_refresh_countdown':
          instance.storedAttendanceRefreshCountdown,
    };

DailyTaskRewards _$DailyTaskRewardsFromJson(Map<String, dynamic> json) =>
    DailyTaskRewards(
      status: json['status'] as String,
    );

Map<String, dynamic> _$DailyTaskRewardsToJson(DailyTaskRewards instance) =>
    <String, dynamic>{
      'status': instance.status,
    };

DailyTaskAttendanceRewards _$DailyTaskAttendanceRewardsFromJson(
        Map<String, dynamic> json) =>
    DailyTaskAttendanceRewards(
      status: json['status'] as String,
      progress: (json['progress'] as num).toInt(),
    );

Map<String, dynamic> _$DailyTaskAttendanceRewardsToJson(
        DailyTaskAttendanceRewards instance) =>
    <String, dynamic>{
      'status': instance.status,
      'progress': instance.progress,
    };

ArchonQuestProgress _$ArchonQuestProgressFromJson(Map<String, dynamic> json) =>
    ArchonQuestProgress(
      list: (json['list'] as List<dynamic>)
          .map((e) => e == null
              ? null
              : ArchonQuestStatus.fromJson(e as Map<String, dynamic>))
          .toList(),
      isOpenArchonQuest: json['is_open_archon_quest'] as bool,
      isFinishAllMainline: json['is_finish_all_mainline'] as bool,
      isFinishAllInterchapter: json['is_finish_all_interchapter'] as bool,
    );

Map<String, dynamic> _$ArchonQuestProgressToJson(
        ArchonQuestProgress instance) =>
    <String, dynamic>{
      'list': instance.list,
      'is_open_archon_quest': instance.isOpenArchonQuest,
      'is_finish_all_mainline': instance.isFinishAllMainline,
      'is_finish_all_interchapter': instance.isFinishAllInterchapter,
    };

ArchonQuestStatus _$ArchonQuestStatusFromJson(Map<String, dynamic> json) =>
    ArchonQuestStatus(
      status: json['status'] as String,
      chapterNum: json['chapter_num'] as String,
      chapterTitle: json['chapter_title'] as String,
      id: (json['id'] as num).toInt(),
    );

Map<String, dynamic> _$ArchonQuestStatusToJson(ArchonQuestStatus instance) =>
    <String, dynamic>{
      'status': instance.status,
      'chapter_num': instance.chapterNum,
      'chapter_title': instance.chapterTitle,
      'id': instance.id,
    };

Expedition _$ExpeditionFromJson(Map<String, dynamic> json) => Expedition(
      avatarSideIcon: json['avatar_side_icon'] as String,
      status: json['status'] as String,
      remainedTime: json['remained_time'] as String,
    );

Map<String, dynamic> _$ExpeditionToJson(Expedition instance) =>
    <String, dynamic>{
      'avatar_side_icon': instance.avatarSideIcon,
      'status': instance.status,
      'remained_time': instance.remainedTime,
    };

Transformer _$TransformerFromJson(Map<String, dynamic> json) => Transformer(
      obtained: json['obtained'] as bool,
      recoveryTime: json['recovery_time'] as Map<String, dynamic>,
      noticed: json['noticed'] as bool,
      latestJobId: json['latest_job_id'] as String,
    );

Map<String, dynamic> _$TransformerToJson(Transformer instance) =>
    <String, dynamic>{
      'obtained': instance.obtained,
      'recovery_time': instance.recoveryTime,
      'noticed': instance.noticed,
      'latest_job_id': instance.latestJobId,
    };

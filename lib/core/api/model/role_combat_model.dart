import 'package:json_annotation/json_annotation.dart';

part 'role_combat_model.g.dart';

@JsonSerializable()
class RoleCombat {
  final List<RoleCombatData> data;
  @JsonKey(name: 'is_unlock')
  final bool isUnlock;

  RoleCombat({
    required this.data,
    required this.isUnlock
  });

  factory RoleCombat.fromJson(Map<String, dynamic> json) => _$RoleCombatFromJson(json);

  Map<String, dynamic> toJson() => _$RoleCombatToJson(this);
}

@JsonSerializable()
class RoleCombatData {
  final RoleCombatDetail detail;
  final RoleCombatStat stat;
  final RoleCombatSchedule schedule;
  @JsonKey(name: 'has_data')
  final bool hasData;
  @JsonKey(name: 'has_detail_data')
  final bool hasDetailData;

  RoleCombatData({
    required this.detail,
    required this.stat,
    required this.schedule,
    required this.hasData,
    required this.hasDetailData
  });

  factory RoleCombatData.fromJson(Map<String, dynamic> json) => _$RoleCombatDataFromJson(json);

  Map<String, dynamic> toJson() => _$RoleCombatDataToJson(this);
}

@JsonSerializable()
class RoleCombatDetail {
  @JsonKey(name: 'rounds_data')
  final List<RoleCombatRoundData> roundsData;
  @JsonKey(name: 'detail_stat')
  final RoleCombatStat detailStat;
  @JsonKey(name: 'lineup_link')
  final String lineupLink;
  @JsonKey(name: 'backup_avatars')
  final List<RoleCombatAvatar> backupAvatars;
  @JsonKey(name: 'fight_statisic')
  final RoleCombatFightStatisic fightStatisic;

  RoleCombatDetail({
    required this.roundsData,
    required this.detailStat,
    required this.lineupLink,
    required this.backupAvatars,
    required this.fightStatisic
  });

  factory RoleCombatDetail.fromJson(Map<String, dynamic> json) => _$RoleCombatDetailFromJson(json);

  Map<String, dynamic> toJson() => _$RoleCombatDetailToJson(this);
}

@JsonSerializable()
class RoleCombatFightStatisic {
  @JsonKey(name: 'max_defeat_avatar')
  final RoleCombatFightStatisicAvatar? maxDefeatAvatar;
  @JsonKey(name: 'max_damage_avatar')
  final RoleCombatFightStatisicAvatar? maxDamegeAvatar;
  @JsonKey(name: 'max_take_damage_avatar')
  final RoleCombatFightStatisicAvatar? maxTakeDamageAvatar;
  @JsonKey(name: 'total_coin_consumed')
  final RoleCombatFightStatisicAvatar? totalCoinConsumed;
  @JsonKey(name: 'shortest_avatar_list')
  final List<RoleCombatFightStatisicAvatar> shortestAvatarList;
  @JsonKey(name: 'total_use_time')
  final int totalUseTime;
  @JsonKey(name: 'is_show_battle_stats')
  final bool isShowBattleStats;

  RoleCombatFightStatisic({
    required this.maxDefeatAvatar,
    required this.maxDamegeAvatar,
    required this.maxTakeDamageAvatar,
    required this.totalCoinConsumed,
    required this.shortestAvatarList,
    required this.totalUseTime,
    required this.isShowBattleStats,
  });

  factory RoleCombatFightStatisic.fromJson(Map<String, dynamic> json) => _$RoleCombatFightStatisicFromJson(json);

  Map<String, dynamic> toJson() => _$RoleCombatFightStatisicToJson(this);
}

@JsonSerializable()
class RoleCombatFightStatisicAvatar {
  @JsonKey(name: 'avatar_id')
  final int avatarId;
  @JsonKey(name: 'avatar_icon')
  final String avatarIcon;
  final String value;
  final int rarity;

  RoleCombatFightStatisicAvatar({
    required this.avatarId,
    required this.avatarIcon,
    required this.value,
    required this.rarity,
  });

  factory RoleCombatFightStatisicAvatar.fromJson(Map<String, dynamic> json) => _$RoleCombatFightStatisicAvatarFromJson(json);

  Map<String, dynamic> toJson() => _$RoleCombatFightStatisicAvatarToJson(this);
}

@JsonSerializable()
class RoleCombatStat {
  @JsonKey(name: 'difficulty_id')
  final int difficultyId;
  @JsonKey(name: 'max_round_id')
  final int maxRoundId;
  final int heraldry;
  @JsonKey(name: 'get_medal_round_list')
  final List<int> getMedalRoundList;
  @JsonKey(name: 'medal_num')
  final int medalNum;
  @JsonKey(name: 'coin_num')
  final int coinNum;
  @JsonKey(name: 'avatar_bonus_num')
  final int avatarBonusNum;
  @JsonKey(name: 'rent_cnt')
  final int rentCnt;

  RoleCombatStat({
    required this.difficultyId,
    required this.maxRoundId,
    required this.heraldry,
    required this.getMedalRoundList,
    required this.medalNum,
    required this.coinNum,
    required this.avatarBonusNum,
    required this.rentCnt,
  });

  factory RoleCombatStat.fromJson(Map<String, dynamic> json) => _$RoleCombatStatFromJson(json);

  Map<String, dynamic> toJson() => _$RoleCombatStatToJson(this);
}

@JsonSerializable()
class RoleCombatSchedule {
  @JsonKey(name: 'start_time')
  final String startTime;
  @JsonKey(name: 'end_time')
  final String endTime;
  @JsonKey(name: 'schedule_type')
  final int scheduleType;
  @JsonKey(name: 'schedule_id')
  final int scheduleId;
  @JsonKey(name: 'start_date_time')
  final RoleCombatDateTime startDateTime;
  @JsonKey(name: 'end_date_time')
  final RoleCombatDateTime endDateTime;

  RoleCombatSchedule({
    required this.startTime,
    required this.endTime,
    required this.scheduleType,
    required this.scheduleId,
    required this.startDateTime,
    required this.endDateTime,
  });

  factory RoleCombatSchedule.fromJson(Map<String, dynamic> json) => _$RoleCombatScheduleFromJson(json);

  Map<String, dynamic> toJson() => _$RoleCombatScheduleToJson(this);
}

@JsonSerializable()
class RoleCombatDateTime {
  final int year;
  final int month;
  final int day;
  final int hour;
  final int minute;
  final int second;

  RoleCombatDateTime({
    required this.year,
    required this.month,
    required this.day,
    required this.hour,
    required this.minute,
    required this.second,
  });

  factory RoleCombatDateTime.fromJson(Map<String, dynamic> json) => _$RoleCombatDateTimeFromJson(json);

  Map<String, dynamic> toJson() => _$RoleCombatDateTimeToJson(this);
}

@JsonSerializable()
class RoleCombatRoundData {
  final List<RoleCombatAvatar> avatars;
  @JsonKey(name: 'choice_cards')
  final List<RoleCombatEffect> choiceCards;
  final List<RoleCombatEffect> buffs;
  @JsonKey(name: 'is_get_medal')
  final bool isGetMedal;
  @JsonKey(name: 'round_id')
  final int roundId;
  @JsonKey(name: 'finish_time')
  final String finishTime;
  @JsonKey(name: 'finish_date_time')
  final RoleCombatDateTime finishDateTime;
  final List<RoleCombatEnemy> enemies;
  @JsonKey(name: 'splendour_buff')
  final RoleCombatSplendourBuff splendourBuff;

  RoleCombatRoundData({
    required this.avatars,
    required this.choiceCards,
    required this.buffs,
    required this.isGetMedal,
    required this.roundId,
    required this.finishTime,
    required this.finishDateTime,
    required this.enemies,
    required this.splendourBuff
  });

  factory RoleCombatRoundData.fromJson(Map<String, dynamic> json) => _$RoleCombatRoundDataFromJson(json);

  Map<String, dynamic> toJson() => _$RoleCombatRoundDataToJson(this);
}

@JsonSerializable()
class RoleCombatSplendourBuff {
  final RoleCombatSplendourBuffSummary summary;
  final List<RoleCombatSplendourBuffInfo> buffs;

  RoleCombatSplendourBuff({
    required this.summary,
    required this.buffs
  });

  factory RoleCombatSplendourBuff.fromJson(Map<String, dynamic> json) => _$RoleCombatSplendourBuffFromJson(json);

  Map<String, dynamic> toJson() => _$RoleCombatSplendourBuffToJson(this);
}

@JsonSerializable()
class RoleCombatSplendourBuffSummary {
  @JsonKey(name: 'total_level')
  final int totalLevel;
  final String desc;

  RoleCombatSplendourBuffSummary({
    required this.totalLevel,
    required this.desc
  });

  factory RoleCombatSplendourBuffSummary.fromJson(Map<String, dynamic> json) => _$RoleCombatSplendourBuffSummaryFromJson(json);

  Map<String, dynamic> toJson() => _$RoleCombatSplendourBuffSummaryToJson(this);
}

@JsonSerializable()
class RoleCombatSplendourBuffInfo {
  final String name;
  final String icon;
  final int level;
  @JsonKey(name: 'level_effect')
  final List<RoleCombatSplendourBuffLevelEffect> levelEffect;

  RoleCombatSplendourBuffInfo({
    required this.name,
    required this.icon,
    required this.level,
    required this.levelEffect
  });

  factory RoleCombatSplendourBuffInfo.fromJson(Map<String, dynamic> json) => _$RoleCombatSplendourBuffInfoFromJson(json);

  Map<String, dynamic> toJson() => _$RoleCombatSplendourBuffInfoToJson(this);
}

@JsonSerializable()
class RoleCombatSplendourBuffLevelEffect {
  final String icon;
  final String name;
  final String desc;

  RoleCombatSplendourBuffLevelEffect({
    required this.icon,
    required this.name,
    required this.desc
  });

  factory RoleCombatSplendourBuffLevelEffect.fromJson(Map<String, dynamic> json) => _$RoleCombatSplendourBuffLevelEffectFromJson(json);

  Map<String, dynamic> toJson() => _$RoleCombatSplendourBuffLevelEffectToJson(this);
}

@JsonSerializable()
class RoleCombatAvatar {
  @JsonKey(name: 'avatar_id')
  final int avatarId;
  @JsonKey(name: 'avatar_type')
  final int avatarType;
  final String name;
  final String element;
  final String image;
  final int level;
  final int rarity;

  RoleCombatAvatar({
    required this.avatarId,
    required this.avatarType,
    required this.name,
    required this.element,
    required this.image,
    required this.level,
    required this.rarity,
  });

  factory RoleCombatAvatar.fromJson(Map<String, dynamic> json) => _$RoleCombatAvatarFromJson(json);

  Map<String, dynamic> toJson() => _$RoleCombatAvatarToJson(this);
}

@JsonSerializable()
class RoleCombatEffect {
  final String icon;
  final String name;
  final String desc;
  @JsonKey(name: 'is_enhanced')
  final bool isEnhanced;
  final int id;

  RoleCombatEffect({
    required this.icon,
    required this.name,
    required this.desc,
    required this.isEnhanced,
    required this.id,
  });

  factory RoleCombatEffect.fromJson(Map<String, dynamic> json) => _$RoleCombatEffectFromJson(json);

  Map<String, dynamic> toJson() => _$RoleCombatEffectToJson(this);
}

@JsonSerializable()
class RoleCombatEnemy {
  final String name;
  final String icon;
  final int level;

  RoleCombatEnemy({
    required this.name,
    required this.icon,
    required this.level
  });

  factory RoleCombatEnemy.fromJson(Map<String, dynamic> json) => _$RoleCombatEnemyFromJson(json);

  Map<String, dynamic> toJson() => _$RoleCombatEnemyToJson(this);
}
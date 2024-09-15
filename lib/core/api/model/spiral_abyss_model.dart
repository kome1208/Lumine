import 'package:json_annotation/json_annotation.dart';

part 'spiral_abyss_model.g.dart';

@JsonSerializable()
class SpiralAbyss {
  @JsonKey(name: 'schedule_id')
  final int scheduleId;
  @JsonKey(name: 'start_time')
  final String startTime;
  @JsonKey(name: 'end_time')
  final String endTime;
  @JsonKey(name: 'total_battle_times')
  final int totalBattleTimes;
  @JsonKey(name: 'total_win_times')
  final int totalWinTimes;
  @JsonKey(name: 'max_floor')
  final String maxFloor;
  @JsonKey(name: 'reveal_rank')
  final List<SpiralAbyssRank> revealRank;
  @JsonKey(name: 'defeat_rank')
  final List<SpiralAbyssRank> defeatRank;
  @JsonKey(name: 'damage_rank')
  final List<SpiralAbyssRank> damageRank;
  @JsonKey(name: 'take_damage_rank')
  final List<SpiralAbyssRank> takeDamageRank;
  @JsonKey(name: 'normal_skill_rank')
  final List<SpiralAbyssRank> normalSkillRank;
  @JsonKey(name: 'energy_skill_rank')
  final List<SpiralAbyssRank> energySkillRank;
  final List<SpiralAbyssFloor> floors;
  @JsonKey(name: 'total_star')
  final int totalStar;
  @JsonKey(name: 'is_unlock')
  final bool isUnlock;

  SpiralAbyss({
    required this.scheduleId,
    required this.startTime,
    required this.endTime,
    required this.totalBattleTimes,
    required this.totalWinTimes,
    required this.maxFloor,
    required this.revealRank,
    required this.defeatRank,
    required this.damageRank,
    required this.takeDamageRank,
    required this.normalSkillRank,
    required this.energySkillRank,
    required this.floors,
    required this.totalStar,
    required this.isUnlock,
  });

  factory SpiralAbyss.fromJson(Map<String, dynamic> json) => _$SpiralAbyssFromJson(json);

  Map<String, dynamic> toJson() => _$SpiralAbyssToJson(this);
}

@JsonSerializable()
class SpiralAbyssRank {
  @JsonKey(name: 'avatar_id')
  final int avatarId;
  @JsonKey(name: 'avatar_icon')
  final String avatarIcon;
  final int value;
  final int rarity;

  SpiralAbyssRank({
    required this.avatarId,
    required this.avatarIcon,
    required this.value,
    required this.rarity
  });

  factory SpiralAbyssRank.fromJson(Map<String, dynamic> json) => _$SpiralAbyssRankFromJson(json);

  Map<String, dynamic> toJson() => _$SpiralAbyssRankToJson(this);
}

@JsonSerializable()
class SpiralAbyssFloor {
  final int index;
  final String icon;
  @JsonKey(name: 'is_unlock')
  final bool isUnlock;
  @JsonKey(name: 'settle_time')
  final String settleTime;
  final int star;
  @JsonKey(name: 'max_star')
  final int maxStar;
  final List<SpiralAbyssLevel> levels;
  @JsonKey(name: 'ley_line_disorder')
  final List<String> leyLineDisorder;

  SpiralAbyssFloor({
    required this.index,
    required this.icon,
    required this.isUnlock,
    required this.settleTime,
    required this.star,
    required this.maxStar,
    required this.levels,
    required this.leyLineDisorder,
  });

  factory SpiralAbyssFloor.fromJson(Map<String, dynamic> json) => _$SpiralAbyssFloorFromJson(json);

  Map<String, dynamic> toJson() => _$SpiralAbyssFloorToJson(this);
}

@JsonSerializable()
class SpiralAbyssLevel {
  final int index;
  final int star;
  @JsonKey(name: 'max_star')
  final int maxStar;
  final List<SpiralAbyssBattle> battles;
  @JsonKey(name: 'top_half_floor_monster')
  final List<SpiralAbyssFloorMonster> topHalfFloorMonster;
  @JsonKey(name: 'bottom_half_floor_monster')
  final List<SpiralAbyssFloorMonster> bottomHalfFloorMonster;

  SpiralAbyssLevel({
    required this.index,
    required this.star,
    required this.maxStar,
    required this.battles,
    required this.topHalfFloorMonster,
    required this.bottomHalfFloorMonster
  });

  factory SpiralAbyssLevel.fromJson(Map<String, dynamic> json) => _$SpiralAbyssLevelFromJson(json);

  Map<String, dynamic> toJson() => _$SpiralAbyssLevelToJson(this);
}

@JsonSerializable()
class SpiralAbyssBattle {
  final int index;
  final String timestamp;
  final List<SpiralAbyssAvatar> avatars;
  @JsonKey(name: 'settle_date_time')
  final SpiralAbyssDateTime settleDateTime;

  SpiralAbyssBattle({
    required this.index,
    required this.timestamp,
    required this.avatars,
    required this.settleDateTime
  });

  factory SpiralAbyssBattle.fromJson(Map<String, dynamic> json) => _$SpiralAbyssBattleFromJson(json);

  Map<String, dynamic> toJson() => _$SpiralAbyssBattleToJson(this);
}

@JsonSerializable()
class SpiralAbyssFloorMonster {
  final String name;
  final String icon;
  final int level;

  SpiralAbyssFloorMonster({
    required this.name,
    required this.icon,
    required this.level
  });

  factory SpiralAbyssFloorMonster.fromJson(Map<String, dynamic> json) => _$SpiralAbyssFloorMonsterFromJson(json);

  Map<String, dynamic> toJson() => _$SpiralAbyssFloorMonsterToJson(this);
}

@JsonSerializable()
class SpiralAbyssAvatar {
  final int id;
  final String icon;
  final int level;
  final int rarity;

  SpiralAbyssAvatar({
    required this.id,
    required this.icon,
    required this.level,
    required this.rarity
  });

  factory SpiralAbyssAvatar.fromJson(Map<String, dynamic> json) => _$SpiralAbyssAvatarFromJson(json);

  Map<String, dynamic> toJson() => _$SpiralAbyssAvatarToJson(this);
}

@JsonSerializable()
class SpiralAbyssDateTime {
  final int year;
  final int month;
  final int day;
  final int hour;
  final int minute;
  final int second;

  SpiralAbyssDateTime({
    required this.year,
    required this.month,
    required this.day,
    required this.hour,
    required this.minute,
    required this.second,
  });

  factory SpiralAbyssDateTime.fromJson(Map<String, dynamic> json) => _$SpiralAbyssDateTimeFromJson(json);

  Map<String, dynamic> toJson() => _$SpiralAbyssDateTimeToJson(this);
}
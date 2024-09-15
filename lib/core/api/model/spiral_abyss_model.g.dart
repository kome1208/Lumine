// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spiral_abyss_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpiralAbyss _$SpiralAbyssFromJson(Map<String, dynamic> json) => SpiralAbyss(
      scheduleId: (json['schedule_id'] as num).toInt(),
      startTime: json['start_time'] as String,
      endTime: json['end_time'] as String,
      totalBattleTimes: (json['total_battle_times'] as num).toInt(),
      totalWinTimes: (json['total_win_times'] as num).toInt(),
      maxFloor: json['max_floor'] as String,
      revealRank: (json['reveal_rank'] as List<dynamic>)
          .map((e) => SpiralAbyssRank.fromJson(e as Map<String, dynamic>))
          .toList(),
      defeatRank: (json['defeat_rank'] as List<dynamic>)
          .map((e) => SpiralAbyssRank.fromJson(e as Map<String, dynamic>))
          .toList(),
      damageRank: (json['damage_rank'] as List<dynamic>)
          .map((e) => SpiralAbyssRank.fromJson(e as Map<String, dynamic>))
          .toList(),
      takeDamageRank: (json['take_damage_rank'] as List<dynamic>)
          .map((e) => SpiralAbyssRank.fromJson(e as Map<String, dynamic>))
          .toList(),
      normalSkillRank: (json['normal_skill_rank'] as List<dynamic>)
          .map((e) => SpiralAbyssRank.fromJson(e as Map<String, dynamic>))
          .toList(),
      energySkillRank: (json['energy_skill_rank'] as List<dynamic>)
          .map((e) => SpiralAbyssRank.fromJson(e as Map<String, dynamic>))
          .toList(),
      floors: (json['floors'] as List<dynamic>)
          .map((e) => SpiralAbyssFloor.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalStar: (json['total_star'] as num).toInt(),
      isUnlock: json['is_unlock'] as bool,
    );

Map<String, dynamic> _$SpiralAbyssToJson(SpiralAbyss instance) =>
    <String, dynamic>{
      'schedule_id': instance.scheduleId,
      'start_time': instance.startTime,
      'end_time': instance.endTime,
      'total_battle_times': instance.totalBattleTimes,
      'total_win_times': instance.totalWinTimes,
      'max_floor': instance.maxFloor,
      'reveal_rank': instance.revealRank,
      'defeat_rank': instance.defeatRank,
      'damage_rank': instance.damageRank,
      'take_damage_rank': instance.takeDamageRank,
      'normal_skill_rank': instance.normalSkillRank,
      'energy_skill_rank': instance.energySkillRank,
      'floors': instance.floors,
      'total_star': instance.totalStar,
      'is_unlock': instance.isUnlock,
    };

SpiralAbyssRank _$SpiralAbyssRankFromJson(Map<String, dynamic> json) =>
    SpiralAbyssRank(
      avatarId: (json['avatar_id'] as num).toInt(),
      avatarIcon: json['avatar_icon'] as String,
      value: (json['value'] as num).toInt(),
      rarity: (json['rarity'] as num).toInt(),
    );

Map<String, dynamic> _$SpiralAbyssRankToJson(SpiralAbyssRank instance) =>
    <String, dynamic>{
      'avatar_id': instance.avatarId,
      'avatar_icon': instance.avatarIcon,
      'value': instance.value,
      'rarity': instance.rarity,
    };

SpiralAbyssFloor _$SpiralAbyssFloorFromJson(Map<String, dynamic> json) =>
    SpiralAbyssFloor(
      index: (json['index'] as num).toInt(),
      icon: json['icon'] as String,
      isUnlock: json['is_unlock'] as bool,
      settleTime: json['settle_time'] as String,
      star: (json['star'] as num).toInt(),
      maxStar: (json['max_star'] as num).toInt(),
      levels: (json['levels'] as List<dynamic>)
          .map((e) => SpiralAbyssLevel.fromJson(e as Map<String, dynamic>))
          .toList(),
      leyLineDisorder: (json['ley_line_disorder'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$SpiralAbyssFloorToJson(SpiralAbyssFloor instance) =>
    <String, dynamic>{
      'index': instance.index,
      'icon': instance.icon,
      'is_unlock': instance.isUnlock,
      'settle_time': instance.settleTime,
      'star': instance.star,
      'max_star': instance.maxStar,
      'levels': instance.levels,
      'ley_line_disorder': instance.leyLineDisorder,
    };

SpiralAbyssLevel _$SpiralAbyssLevelFromJson(Map<String, dynamic> json) =>
    SpiralAbyssLevel(
      index: (json['index'] as num).toInt(),
      star: (json['star'] as num).toInt(),
      maxStar: (json['max_star'] as num).toInt(),
      battles: (json['battles'] as List<dynamic>)
          .map((e) => SpiralAbyssBattle.fromJson(e as Map<String, dynamic>))
          .toList(),
      topHalfFloorMonster: (json['top_half_floor_monster'] as List<dynamic>)
          .map((e) =>
              SpiralAbyssFloorMonster.fromJson(e as Map<String, dynamic>))
          .toList(),
      bottomHalfFloorMonster:
          (json['bottom_half_floor_monster'] as List<dynamic>)
              .map((e) =>
                  SpiralAbyssFloorMonster.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$SpiralAbyssLevelToJson(SpiralAbyssLevel instance) =>
    <String, dynamic>{
      'index': instance.index,
      'star': instance.star,
      'max_star': instance.maxStar,
      'battles': instance.battles,
      'top_half_floor_monster': instance.topHalfFloorMonster,
      'bottom_half_floor_monster': instance.bottomHalfFloorMonster,
    };

SpiralAbyssBattle _$SpiralAbyssBattleFromJson(Map<String, dynamic> json) =>
    SpiralAbyssBattle(
      index: (json['index'] as num).toInt(),
      timestamp: json['timestamp'] as String,
      avatars: (json['avatars'] as List<dynamic>)
          .map((e) => SpiralAbyssAvatar.fromJson(e as Map<String, dynamic>))
          .toList(),
      settleDateTime: SpiralAbyssDateTime.fromJson(
          json['settle_date_time'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SpiralAbyssBattleToJson(SpiralAbyssBattle instance) =>
    <String, dynamic>{
      'index': instance.index,
      'timestamp': instance.timestamp,
      'avatars': instance.avatars,
      'settle_date_time': instance.settleDateTime,
    };

SpiralAbyssFloorMonster _$SpiralAbyssFloorMonsterFromJson(
        Map<String, dynamic> json) =>
    SpiralAbyssFloorMonster(
      name: json['name'] as String,
      icon: json['icon'] as String,
      level: (json['level'] as num).toInt(),
    );

Map<String, dynamic> _$SpiralAbyssFloorMonsterToJson(
        SpiralAbyssFloorMonster instance) =>
    <String, dynamic>{
      'name': instance.name,
      'icon': instance.icon,
      'level': instance.level,
    };

SpiralAbyssAvatar _$SpiralAbyssAvatarFromJson(Map<String, dynamic> json) =>
    SpiralAbyssAvatar(
      id: (json['id'] as num).toInt(),
      icon: json['icon'] as String,
      level: (json['level'] as num).toInt(),
      rarity: (json['rarity'] as num).toInt(),
    );

Map<String, dynamic> _$SpiralAbyssAvatarToJson(SpiralAbyssAvatar instance) =>
    <String, dynamic>{
      'id': instance.id,
      'icon': instance.icon,
      'level': instance.level,
      'rarity': instance.rarity,
    };

SpiralAbyssDateTime _$SpiralAbyssDateTimeFromJson(Map<String, dynamic> json) =>
    SpiralAbyssDateTime(
      year: (json['year'] as num).toInt(),
      month: (json['month'] as num).toInt(),
      day: (json['day'] as num).toInt(),
      hour: (json['hour'] as num).toInt(),
      minute: (json['minute'] as num).toInt(),
      second: (json['second'] as num).toInt(),
    );

Map<String, dynamic> _$SpiralAbyssDateTimeToJson(
        SpiralAbyssDateTime instance) =>
    <String, dynamic>{
      'year': instance.year,
      'month': instance.month,
      'day': instance.day,
      'hour': instance.hour,
      'minute': instance.minute,
      'second': instance.second,
    };

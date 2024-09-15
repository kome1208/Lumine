// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'role_combat_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RoleCombat _$RoleCombatFromJson(Map<String, dynamic> json) => RoleCombat(
      data: (json['data'] as List<dynamic>)
          .map((e) => RoleCombatData.fromJson(e as Map<String, dynamic>))
          .toList(),
      isUnlock: json['is_unlock'] as bool,
    );

Map<String, dynamic> _$RoleCombatToJson(RoleCombat instance) =>
    <String, dynamic>{
      'data': instance.data,
      'is_unlock': instance.isUnlock,
    };

RoleCombatData _$RoleCombatDataFromJson(Map<String, dynamic> json) =>
    RoleCombatData(
      detail: RoleCombatDetail.fromJson(json['detail'] as Map<String, dynamic>),
      stat: RoleCombatStat.fromJson(json['stat'] as Map<String, dynamic>),
      schedule:
          RoleCombatSchedule.fromJson(json['schedule'] as Map<String, dynamic>),
      hasData: json['has_data'] as bool,
      hasDetailData: json['has_detail_data'] as bool,
    );

Map<String, dynamic> _$RoleCombatDataToJson(RoleCombatData instance) =>
    <String, dynamic>{
      'detail': instance.detail,
      'stat': instance.stat,
      'schedule': instance.schedule,
      'has_data': instance.hasData,
      'has_detail_data': instance.hasDetailData,
    };

RoleCombatDetail _$RoleCombatDetailFromJson(Map<String, dynamic> json) =>
    RoleCombatDetail(
      roundsData: (json['rounds_data'] as List<dynamic>)
          .map((e) => RoleCombatRoundData.fromJson(e as Map<String, dynamic>))
          .toList(),
      detailStat:
          RoleCombatStat.fromJson(json['detail_stat'] as Map<String, dynamic>),
      lineupLink: json['lineup_link'] as String,
      backupAvatars: (json['backup_avatars'] as List<dynamic>)
          .map((e) => RoleCombatAvatar.fromJson(e as Map<String, dynamic>))
          .toList(),
      fightStatisic: RoleCombatFightStatisic.fromJson(
          json['fight_statisic'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RoleCombatDetailToJson(RoleCombatDetail instance) =>
    <String, dynamic>{
      'rounds_data': instance.roundsData,
      'detail_stat': instance.detailStat,
      'lineup_link': instance.lineupLink,
      'backup_avatars': instance.backupAvatars,
      'fight_statisic': instance.fightStatisic,
    };

RoleCombatFightStatisic _$RoleCombatFightStatisicFromJson(
        Map<String, dynamic> json) =>
    RoleCombatFightStatisic(
      maxDefeatAvatar: json['max_defeat_avatar'] == null
          ? null
          : RoleCombatFightStatisicAvatar.fromJson(
              json['max_defeat_avatar'] as Map<String, dynamic>),
      maxDamegeAvatar: json['max_damage_avatar'] == null
          ? null
          : RoleCombatFightStatisicAvatar.fromJson(
              json['max_damage_avatar'] as Map<String, dynamic>),
      maxTakeDamageAvatar: json['max_take_damage_avatar'] == null
          ? null
          : RoleCombatFightStatisicAvatar.fromJson(
              json['max_take_damage_avatar'] as Map<String, dynamic>),
      totalCoinConsumed: json['total_coin_consumed'] == null
          ? null
          : RoleCombatFightStatisicAvatar.fromJson(
              json['total_coin_consumed'] as Map<String, dynamic>),
      shortestAvatarList: (json['shortest_avatar_list'] as List<dynamic>)
          .map((e) =>
              RoleCombatFightStatisicAvatar.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalUseTime: (json['total_use_time'] as num).toInt(),
      isShowBattleStats: json['is_show_battle_stats'] as bool,
    );

Map<String, dynamic> _$RoleCombatFightStatisicToJson(
        RoleCombatFightStatisic instance) =>
    <String, dynamic>{
      'max_defeat_avatar': instance.maxDefeatAvatar,
      'max_damage_avatar': instance.maxDamegeAvatar,
      'max_take_damage_avatar': instance.maxTakeDamageAvatar,
      'total_coin_consumed': instance.totalCoinConsumed,
      'shortest_avatar_list': instance.shortestAvatarList,
      'total_use_time': instance.totalUseTime,
      'is_show_battle_stats': instance.isShowBattleStats,
    };

RoleCombatFightStatisicAvatar _$RoleCombatFightStatisicAvatarFromJson(
        Map<String, dynamic> json) =>
    RoleCombatFightStatisicAvatar(
      avatarId: (json['avatar_id'] as num).toInt(),
      avatarIcon: json['avatar_icon'] as String,
      value: json['value'] as String,
      rarity: (json['rarity'] as num).toInt(),
    );

Map<String, dynamic> _$RoleCombatFightStatisicAvatarToJson(
        RoleCombatFightStatisicAvatar instance) =>
    <String, dynamic>{
      'avatar_id': instance.avatarId,
      'avatar_icon': instance.avatarIcon,
      'value': instance.value,
      'rarity': instance.rarity,
    };

RoleCombatStat _$RoleCombatStatFromJson(Map<String, dynamic> json) =>
    RoleCombatStat(
      difficultyId: (json['difficulty_id'] as num).toInt(),
      maxRoundId: (json['max_round_id'] as num).toInt(),
      heraldry: (json['heraldry'] as num).toInt(),
      getMedalRoundList: (json['get_medal_round_list'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      medalNum: (json['medal_num'] as num).toInt(),
      coinNum: (json['coin_num'] as num).toInt(),
      avatarBonusNum: (json['avatar_bonus_num'] as num).toInt(),
      rentCnt: (json['rent_cnt'] as num).toInt(),
    );

Map<String, dynamic> _$RoleCombatStatToJson(RoleCombatStat instance) =>
    <String, dynamic>{
      'difficulty_id': instance.difficultyId,
      'max_round_id': instance.maxRoundId,
      'heraldry': instance.heraldry,
      'get_medal_round_list': instance.getMedalRoundList,
      'medal_num': instance.medalNum,
      'coin_num': instance.coinNum,
      'avatar_bonus_num': instance.avatarBonusNum,
      'rent_cnt': instance.rentCnt,
    };

RoleCombatSchedule _$RoleCombatScheduleFromJson(Map<String, dynamic> json) =>
    RoleCombatSchedule(
      startTime: json['start_time'] as String,
      endTime: json['end_time'] as String,
      scheduleType: (json['schedule_type'] as num).toInt(),
      scheduleId: (json['schedule_id'] as num).toInt(),
      startDateTime: RoleCombatDateTime.fromJson(
          json['start_date_time'] as Map<String, dynamic>),
      endDateTime: RoleCombatDateTime.fromJson(
          json['end_date_time'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RoleCombatScheduleToJson(RoleCombatSchedule instance) =>
    <String, dynamic>{
      'start_time': instance.startTime,
      'end_time': instance.endTime,
      'schedule_type': instance.scheduleType,
      'schedule_id': instance.scheduleId,
      'start_date_time': instance.startDateTime,
      'end_date_time': instance.endDateTime,
    };

RoleCombatDateTime _$RoleCombatDateTimeFromJson(Map<String, dynamic> json) =>
    RoleCombatDateTime(
      year: (json['year'] as num).toInt(),
      month: (json['month'] as num).toInt(),
      day: (json['day'] as num).toInt(),
      hour: (json['hour'] as num).toInt(),
      minute: (json['minute'] as num).toInt(),
      second: (json['second'] as num).toInt(),
    );

Map<String, dynamic> _$RoleCombatDateTimeToJson(RoleCombatDateTime instance) =>
    <String, dynamic>{
      'year': instance.year,
      'month': instance.month,
      'day': instance.day,
      'hour': instance.hour,
      'minute': instance.minute,
      'second': instance.second,
    };

RoleCombatRoundData _$RoleCombatRoundDataFromJson(Map<String, dynamic> json) =>
    RoleCombatRoundData(
      avatars: (json['avatars'] as List<dynamic>)
          .map((e) => RoleCombatAvatar.fromJson(e as Map<String, dynamic>))
          .toList(),
      choiceCards: (json['choice_cards'] as List<dynamic>)
          .map((e) => RoleCombatEffect.fromJson(e as Map<String, dynamic>))
          .toList(),
      buffs: (json['buffs'] as List<dynamic>)
          .map((e) => RoleCombatEffect.fromJson(e as Map<String, dynamic>))
          .toList(),
      isGetMedal: json['is_get_medal'] as bool,
      roundId: (json['round_id'] as num).toInt(),
      finishTime: json['finish_time'] as String,
      finishDateTime: RoleCombatDateTime.fromJson(
          json['finish_date_time'] as Map<String, dynamic>),
      enemies: (json['enemies'] as List<dynamic>)
          .map((e) => RoleCombatEnemy.fromJson(e as Map<String, dynamic>))
          .toList(),
      splendourBuff: RoleCombatSplendourBuff.fromJson(
          json['splendour_buff'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RoleCombatRoundDataToJson(
        RoleCombatRoundData instance) =>
    <String, dynamic>{
      'avatars': instance.avatars,
      'choice_cards': instance.choiceCards,
      'buffs': instance.buffs,
      'is_get_medal': instance.isGetMedal,
      'round_id': instance.roundId,
      'finish_time': instance.finishTime,
      'finish_date_time': instance.finishDateTime,
      'enemies': instance.enemies,
      'splendour_buff': instance.splendourBuff,
    };

RoleCombatSplendourBuff _$RoleCombatSplendourBuffFromJson(
        Map<String, dynamic> json) =>
    RoleCombatSplendourBuff(
      summary: RoleCombatSplendourBuffSummary.fromJson(
          json['summary'] as Map<String, dynamic>),
      buffs: (json['buffs'] as List<dynamic>)
          .map((e) =>
              RoleCombatSplendourBuffInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RoleCombatSplendourBuffToJson(
        RoleCombatSplendourBuff instance) =>
    <String, dynamic>{
      'summary': instance.summary,
      'buffs': instance.buffs,
    };

RoleCombatSplendourBuffSummary _$RoleCombatSplendourBuffSummaryFromJson(
        Map<String, dynamic> json) =>
    RoleCombatSplendourBuffSummary(
      totalLevel: (json['total_level'] as num).toInt(),
      desc: json['desc'] as String,
    );

Map<String, dynamic> _$RoleCombatSplendourBuffSummaryToJson(
        RoleCombatSplendourBuffSummary instance) =>
    <String, dynamic>{
      'total_level': instance.totalLevel,
      'desc': instance.desc,
    };

RoleCombatSplendourBuffInfo _$RoleCombatSplendourBuffInfoFromJson(
        Map<String, dynamic> json) =>
    RoleCombatSplendourBuffInfo(
      name: json['name'] as String,
      icon: json['icon'] as String,
      level: (json['level'] as num).toInt(),
      levelEffect: (json['level_effect'] as List<dynamic>)
          .map((e) => RoleCombatSplendourBuffLevelEffect.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RoleCombatSplendourBuffInfoToJson(
        RoleCombatSplendourBuffInfo instance) =>
    <String, dynamic>{
      'name': instance.name,
      'icon': instance.icon,
      'level': instance.level,
      'level_effect': instance.levelEffect,
    };

RoleCombatSplendourBuffLevelEffect _$RoleCombatSplendourBuffLevelEffectFromJson(
        Map<String, dynamic> json) =>
    RoleCombatSplendourBuffLevelEffect(
      icon: json['icon'] as String,
      name: json['name'] as String,
      desc: json['desc'] as String,
    );

Map<String, dynamic> _$RoleCombatSplendourBuffLevelEffectToJson(
        RoleCombatSplendourBuffLevelEffect instance) =>
    <String, dynamic>{
      'icon': instance.icon,
      'name': instance.name,
      'desc': instance.desc,
    };

RoleCombatAvatar _$RoleCombatAvatarFromJson(Map<String, dynamic> json) =>
    RoleCombatAvatar(
      avatarId: (json['avatar_id'] as num).toInt(),
      avatarType: (json['avatar_type'] as num).toInt(),
      name: json['name'] as String,
      element: json['element'] as String,
      image: json['image'] as String,
      level: (json['level'] as num).toInt(),
      rarity: (json['rarity'] as num).toInt(),
    );

Map<String, dynamic> _$RoleCombatAvatarToJson(RoleCombatAvatar instance) =>
    <String, dynamic>{
      'avatar_id': instance.avatarId,
      'avatar_type': instance.avatarType,
      'name': instance.name,
      'element': instance.element,
      'image': instance.image,
      'level': instance.level,
      'rarity': instance.rarity,
    };

RoleCombatEffect _$RoleCombatEffectFromJson(Map<String, dynamic> json) =>
    RoleCombatEffect(
      icon: json['icon'] as String,
      name: json['name'] as String,
      desc: json['desc'] as String,
      isEnhanced: json['is_enhanced'] as bool,
      id: (json['id'] as num).toInt(),
    );

Map<String, dynamic> _$RoleCombatEffectToJson(RoleCombatEffect instance) =>
    <String, dynamic>{
      'icon': instance.icon,
      'name': instance.name,
      'desc': instance.desc,
      'is_enhanced': instance.isEnhanced,
      'id': instance.id,
    };

RoleCombatEnemy _$RoleCombatEnemyFromJson(Map<String, dynamic> json) =>
    RoleCombatEnemy(
      name: json['name'] as String,
      icon: json['icon'] as String,
      level: (json['level'] as num).toInt(),
    );

Map<String, dynamic> _$RoleCombatEnemyToJson(RoleCombatEnemy instance) =>
    <String, dynamic>{
      'name': instance.name,
      'icon': instance.icon,
      'level': instance.level,
    };

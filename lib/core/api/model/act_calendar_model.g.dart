// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'act_calendar_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ActCalendarImpl _$$ActCalendarImplFromJson(Map<String, dynamic> json) =>
    _$ActCalendarImpl(
      avatarCardPoolList: (json['avatar_card_pool_list'] as List<dynamic>)
          .map((e) => CardPool.fromJson(e as Map<String, dynamic>))
          .toList(),
      weaponCardPoolList: (json['weapon_card_pool_list'] as List<dynamic>)
          .map((e) => CardPool.fromJson(e as Map<String, dynamic>))
          .toList(),
      selectedAvatarCardPoolList:
          (json['selected_avatar_card_pool_list'] as List<dynamic>)
              .map((e) => CardPool.fromJson(e as Map<String, dynamic>))
              .toList(),
      actList: (json['act_list'] as List<dynamic>)
          .map((e) => ActItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      fixedActList: (json['fixed_act_list'] as List<dynamic>)
          .map((e) => ActItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ActCalendarImplToJson(_$ActCalendarImpl instance) =>
    <String, dynamic>{
      'avatar_card_pool_list': instance.avatarCardPoolList,
      'weapon_card_pool_list': instance.weaponCardPoolList,
      'selected_avatar_card_pool_list': instance.selectedAvatarCardPoolList,
      'act_list': instance.actList,
      'fixed_act_list': instance.fixedActList,
    };

_$CardPoolImpl _$$CardPoolImplFromJson(Map<String, dynamic> json) =>
    _$CardPoolImpl(
      poolId: (json['pool_id'] as num).toInt(),
      versionName: json['version_name'] as String,
      poolName: json['pool_name'] as String,
      poolType: $enumDecode(_$PoolTypeEnumMap, json['pool_type']),
      avatars: (json['avatars'] as List<dynamic>)
          .map((e) => CardPoolAvatar.fromJson(e as Map<String, dynamic>))
          .toList(),
      weapon: (json['weapon'] as List<dynamic>)
          .map((e) => CardPoolWeapon.fromJson(e as Map<String, dynamic>))
          .toList(),
      startTimestamp: json['start_timestamp'] as String,
      endTimestamp: json['end_timestamp'] as String,
      poolStatus: $enumDecode(_$PoolStatusEnumMap, json['pool_status']),
      countdownSeconds: (json['countdown_seconds'] as num).toInt(),
    );

Map<String, dynamic> _$$CardPoolImplToJson(_$CardPoolImpl instance) =>
    <String, dynamic>{
      'pool_id': instance.poolId,
      'version_name': instance.versionName,
      'pool_name': instance.poolName,
      'pool_type': _$PoolTypeEnumMap[instance.poolType]!,
      'avatars': instance.avatars,
      'weapon': instance.weapon,
      'start_timestamp': instance.startTimestamp,
      'end_timestamp': instance.endTimestamp,
      'pool_status': _$PoolStatusEnumMap[instance.poolStatus]!,
      'countdown_seconds': instance.countdownSeconds,
    };

const _$PoolTypeEnumMap = {
  PoolType.characterEventWish: 1,
  PoolType.weaponEventWish: 2,
};

const _$PoolStatusEnumMap = {
  PoolStatus.beforeStart: 1,
  PoolStatus.onGoing: 2,
  PoolStatus.ended: 3,
};

_$CardPoolAvatarImpl _$$CardPoolAvatarImplFromJson(Map<String, dynamic> json) =>
    _$CardPoolAvatarImpl(
      id: (json['id'] as num).toInt(),
      icon: json['icon'] as String,
      name: json['name'] as String,
      element: json['element'] as String,
      rarity: (json['rarity'] as num).toInt(),
      isInvisible: json['is_invisible'] as bool,
    );

Map<String, dynamic> _$$CardPoolAvatarImplToJson(
        _$CardPoolAvatarImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'icon': instance.icon,
      'name': instance.name,
      'element': instance.element,
      'rarity': instance.rarity,
      'is_invisible': instance.isInvisible,
    };

_$CardPoolWeaponImpl _$$CardPoolWeaponImplFromJson(Map<String, dynamic> json) =>
    _$CardPoolWeaponImpl(
      id: (json['id'] as num).toInt(),
      icon: json['icon'] as String,
      rarity: (json['rarity'] as num).toInt(),
      name: json['name'] as String,
      wikiUrl: json['wiki_url'] as String,
    );

Map<String, dynamic> _$$CardPoolWeaponImplToJson(
        _$CardPoolWeaponImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'icon': instance.icon,
      'rarity': instance.rarity,
      'name': instance.name,
      'wiki_url': instance.wikiUrl,
    };

_$ActItemImpl _$$ActItemImplFromJson(Map<String, dynamic> json) =>
    _$ActItemImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      type: $enumDecode(_$ActTypeEnumMap, json['type']),
      startTimestamp: json['start_timestamp'] as String,
      endTimestamp: json['end_timestamp'] as String,
      desc: json['desc'] as String,
      strategy: json['strategy'] as String,
      countdownSeconds: (json['countdown_seconds'] as num).toInt(),
      status: $enumDecode(_$PoolStatusEnumMap, json['status']),
      rewardList: (json['reward_list'] as List<dynamic>)
          .map((e) => ActReward.fromJson(e as Map<String, dynamic>))
          .toList(),
      isFinished: json['is_finished'] as bool,
      exploreDetail: json['explore_detail'] == null
          ? null
          : ExploreDetail.fromJson(
              json['explore_detail'] as Map<String, dynamic>),
      libenDetail: json['liben_detail'] == null
          ? null
          : LibenDetail.fromJson(json['liben_detail'] as Map<String, dynamic>),
      roleCombatDetail: json['role_combat_detail'] == null
          ? null
          : RoleCombatDetail.fromJson(
              json['role_combat_detail'] as Map<String, dynamic>),
      towerDetail: json['tower_detail'] == null
          ? null
          : TowerDetail.fromJson(json['tower_detail'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ActItemImplToJson(_$ActItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': _$ActTypeEnumMap[instance.type]!,
      'start_timestamp': instance.startTimestamp,
      'end_timestamp': instance.endTimestamp,
      'desc': instance.desc,
      'strategy': instance.strategy,
      'countdown_seconds': instance.countdownSeconds,
      'status': _$PoolStatusEnumMap[instance.status]!,
      'reward_list': instance.rewardList,
      'is_finished': instance.isFinished,
      'explore_detail': instance.exploreDetail,
      'liben_detail': instance.libenDetail,
      'role_combat_detail': instance.roleCombatDetail,
      'tower_detail': instance.towerDetail,
    };

const _$ActTypeEnumMap = {
  ActType.other: 'ActTypeOther',
  ActType.explore: 'ActTypeExplore',
  ActType.liBen: 'ActTypeLiBen',
  ActType.roleCombat: 'ActTypeRoleCombat',
  ActType.tower: 'ActTypeTower',
  ActType.double: 'ActTypeDouble',
};

_$ActRewardImpl _$$ActRewardImplFromJson(Map<String, dynamic> json) =>
    _$ActRewardImpl(
      itemId: (json['item_id'] as num).toInt(),
      name: json['name'] as String,
      icon: json['icon'] as String,
      wikiUrl: json['wiki_url'] as String,
      num: (json['num'] as num).toInt(),
      rarity: json['rarity'] as String,
      homepageShow: json['homepage_show'] as bool,
    );

Map<String, dynamic> _$$ActRewardImplToJson(_$ActRewardImpl instance) =>
    <String, dynamic>{
      'item_id': instance.itemId,
      'name': instance.name,
      'icon': instance.icon,
      'wiki_url': instance.wikiUrl,
      'num': instance.num,
      'rarity': instance.rarity,
      'homepage_show': instance.homepageShow,
    };

_$ExploreDetailImpl _$$ExploreDetailImplFromJson(Map<String, dynamic> json) =>
    _$ExploreDetailImpl(
      explorePercent: (json['explore_percent'] as num).toInt(),
      isFinished: json['is_finished'] as bool,
    );

Map<String, dynamic> _$$ExploreDetailImplToJson(_$ExploreDetailImpl instance) =>
    <String, dynamic>{
      'explore_percent': instance.explorePercent,
      'is_finished': instance.isFinished,
    };

_$LibenDetailImpl _$$LibenDetailImplFromJson(Map<String, dynamic> json) =>
    _$LibenDetailImpl(
      status: (json['status'] as num).toInt(),
      progress: (json['progress'] as num).toInt(),
      total: (json['total'] as num).toInt(),
      isHasTakenSpecialReward: json['is_has_taken_special_reward'] as bool,
    );

Map<String, dynamic> _$$LibenDetailImplToJson(_$LibenDetailImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'progress': instance.progress,
      'total': instance.total,
      'is_has_taken_special_reward': instance.isHasTakenSpecialReward,
    };

_$TowerDetailImpl _$$TowerDetailImplFromJson(Map<String, dynamic> json) =>
    _$TowerDetailImpl(
      isUnlock: json['is_unlock'] as bool,
      maxStar: (json['max_star'] as num).toInt(),
      totalStar: (json['total_star'] as num).toInt(),
      hasData: json['has_data'] as bool,
    );

Map<String, dynamic> _$$TowerDetailImplToJson(_$TowerDetailImpl instance) =>
    <String, dynamic>{
      'is_unlock': instance.isUnlock,
      'max_star': instance.maxStar,
      'total_star': instance.totalStar,
      'has_data': instance.hasData,
    };

_$RoleCombatDetailImpl _$$RoleCombatDetailImplFromJson(
        Map<String, dynamic> json) =>
    _$RoleCombatDetailImpl(
      isUnlock: json['is_unlock'] as bool,
      maxRoundId: (json['max_round_id'] as num).toInt(),
      hasData: json['has_data'] as bool,
    );

Map<String, dynamic> _$$RoleCombatDetailImplToJson(
        _$RoleCombatDetailImpl instance) =>
    <String, dynamic>{
      'is_unlock': instance.isUnlock,
      'max_round_id': instance.maxRoundId,
      'has_data': instance.hasData,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_record_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GameRecord _$GameRecordFromJson(Map<String, dynamic> json) => GameRecord(
      role: GameRecordRoleData.fromJson(json['role'] as Map<String, dynamic>),
      avatars: (json['avatars'] as List<dynamic>)
          .map((e) => GameRecordAvatarData.fromJson(e as Map<String, dynamic>))
          .toList(),
      stats:
          GameRecordStatsData.fromJson(json['stats'] as Map<String, dynamic>),
      worldExploration: (json['world_explorations'] as List<dynamic>)
          .map((e) => WorldExploration.fromJson(e as Map<String, dynamic>))
          .toList(),
      homes: (json['homes'] as List<dynamic>)
          .map((e) => SereniteaPot.fromJson(e as Map<String, dynamic>))
          .toList(),
      queryToolImage: json['query_tool_image'] as String,
      queryToolLink: json['query_tool_link'] as String,
    );

Map<String, dynamic> _$GameRecordToJson(GameRecord instance) =>
    <String, dynamic>{
      'role': instance.role,
      'avatars': instance.avatars,
      'stats': instance.stats,
      'world_explorations': instance.worldExploration,
      'homes': instance.homes,
      'query_tool_link': instance.queryToolLink,
      'query_tool_image': instance.queryToolImage,
    };

GameRecordRoleData _$GameRecordRoleDataFromJson(Map<String, dynamic> json) =>
    GameRecordRoleData(
      avatarUrl: json['AvatarUrl'] as String,
      nickname: json['nickname'] as String,
      region: json['region'] as String,
      level: (json['level'] as num).toInt(),
      gameHeadIcon: json['game_head_icon'] as String,
    );

Map<String, dynamic> _$GameRecordRoleDataToJson(GameRecordRoleData instance) =>
    <String, dynamic>{
      'AvatarUrl': instance.avatarUrl,
      'nickname': instance.nickname,
      'region': instance.region,
      'level': instance.level,
      'game_head_icon': instance.gameHeadIcon,
    };

GameRecordAvatarData _$GameRecordAvatarDataFromJson(
        Map<String, dynamic> json) =>
    GameRecordAvatarData(
      id: (json['id'] as num).toInt(),
      image: json['image'] as String,
      name: json['name'] as String,
      element: json['element'] as String,
      fetter: (json['fetter'] as num).toInt(),
      level: (json['level'] as num).toInt(),
      rarity: (json['rarity'] as num).toInt(),
      activedConstellationNum:
          (json['actived_constellation_num'] as num).toInt(),
      cardImage: json['card_image'] as String,
      isChosen: json['is_chosen'] as bool,
    );

Map<String, dynamic> _$GameRecordAvatarDataToJson(
        GameRecordAvatarData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
      'name': instance.name,
      'element': instance.element,
      'fetter': instance.fetter,
      'level': instance.level,
      'rarity': instance.rarity,
      'actived_constellation_num': instance.activedConstellationNum,
      'card_image': instance.cardImage,
      'is_chosen': instance.isChosen,
    };

GameRecordStatsData _$GameRecordStatsDataFromJson(Map<String, dynamic> json) =>
    GameRecordStatsData(
      activeDayNumber: (json['active_day_number'] as num).toInt(),
      achievementNumber: (json['achievement_number'] as num).toInt(),
      anemoculusNumber: (json['anemoculus_number'] as num).toInt(),
      geoculusNumber: (json['geoculus_number'] as num).toInt(),
      avatarNumber: (json['avatar_number'] as num).toInt(),
      wayPointNumber: (json['way_point_number'] as num).toInt(),
      domainNumber: (json['domain_number'] as num).toInt(),
      spiralAbyss: json['spiral_abyss'] as String,
      preciousChestNumber: (json['precious_chest_number'] as num).toInt(),
      luxuriousChestNumber: (json['luxurious_chest_number'] as num).toInt(),
      exquisiteChestNumber: (json['exquisite_chest_number'] as num).toInt(),
      commonChestNumber: (json['common_chest_number'] as num).toInt(),
      electroculusNumber: (json['electroculus_number'] as num).toInt(),
      magicChestNumber: (json['magic_chest_number'] as num).toInt(),
      dendroculusNumber: (json['dendroculus_number'] as num).toInt(),
      hydroculusNumber: (json['hydroculus_number'] as num).toInt(),
      pyroculusNumber: (json['pyroculus_number'] as num).toInt(),
      roleCombat:
          RoleCombatStat.fromJson(json['role_combat'] as Map<String, dynamic>),
      fullFetterAvatarNum: (json['full_fetter_avatar_num'] as num).toInt(),
    );

Map<String, dynamic> _$GameRecordStatsDataToJson(
        GameRecordStatsData instance) =>
    <String, dynamic>{
      'active_day_number': instance.activeDayNumber,
      'achievement_number': instance.achievementNumber,
      'anemoculus_number': instance.anemoculusNumber,
      'geoculus_number': instance.geoculusNumber,
      'avatar_number': instance.avatarNumber,
      'way_point_number': instance.wayPointNumber,
      'domain_number': instance.domainNumber,
      'spiral_abyss': instance.spiralAbyss,
      'precious_chest_number': instance.preciousChestNumber,
      'luxurious_chest_number': instance.luxuriousChestNumber,
      'exquisite_chest_number': instance.exquisiteChestNumber,
      'common_chest_number': instance.commonChestNumber,
      'electroculus_number': instance.electroculusNumber,
      'magic_chest_number': instance.magicChestNumber,
      'dendroculus_number': instance.dendroculusNumber,
      'hydroculus_number': instance.hydroculusNumber,
      'pyroculus_number': instance.pyroculusNumber,
      'role_combat': instance.roleCombat,
      'full_fetter_avatar_num': instance.fullFetterAvatarNum,
    };

RoleCombatStat _$RoleCombatStatFromJson(Map<String, dynamic> json) =>
    RoleCombatStat(
      isUnlock: json['is_unlock'] as bool,
      maxRoundId: (json['max_round_id'] as num).toInt(),
      hasData: json['has_data'] as bool,
      hasDetailData: json['has_detail_data'] as bool,
    );

Map<String, dynamic> _$RoleCombatStatToJson(RoleCombatStat instance) =>
    <String, dynamic>{
      'is_unlock': instance.isUnlock,
      'max_round_id': instance.maxRoundId,
      'has_data': instance.hasData,
      'has_detail_data': instance.hasDetailData,
    };

WorldExploration _$WorldExplorationFromJson(Map<String, dynamic> json) =>
    WorldExploration(
      level: (json['level'] as num).toInt(),
      explorationPercentage: (json['exploration_percentage'] as num).toInt(),
      icon: json['icon'] as String,
      name: json['name'] as String,
      type: json['type'] as String,
      offerings: (json['offerings'] as List<dynamic>)
          .map((e) =>
              WorldExplorationOfferfing.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: (json['id'] as num).toInt(),
      parentId: (json['parent_id'] as num).toInt(),
      mapUrl: json['map_url'] as String,
      strategyUrl: json['strategy_url'] as String,
      backgroundImage: json['background_image'] as String,
      innerIcon: json['inner_icon'] as String,
      cover: json['cover'] as String,
      areaExplorationList: (json['area_exploration_list'] as List<dynamic>)
          .map((e) => WorldExplorationAreaExploration.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      bossList: (json['boss_list'] as List<dynamic>)
          .map((e) => WorldExplorationBoss.fromJson(e as Map<String, dynamic>))
          .toList(),
      sevenStatueLevel: (json['seven_statue_level'] as num).toInt(),
      isHot: json['is_hot'] as bool,
      indexActive: json['index_active'] as bool,
      detailActive: json['detail_active'] as bool,
      natanReputaion: json['natan_reputation'] == null
          ? null
          : NatanReputaion.fromJson(
              json['natan_reputation'] as Map<String, dynamic>),
      worldType: (json['world_type'] as num).toInt(),
    );

Map<String, dynamic> _$WorldExplorationToJson(WorldExploration instance) =>
    <String, dynamic>{
      'level': instance.level,
      'exploration_percentage': instance.explorationPercentage,
      'icon': instance.icon,
      'name': instance.name,
      'type': instance.type,
      'offerings': instance.offerings,
      'id': instance.id,
      'parent_id': instance.parentId,
      'map_url': instance.mapUrl,
      'strategy_url': instance.strategyUrl,
      'background_image': instance.backgroundImage,
      'inner_icon': instance.innerIcon,
      'cover': instance.cover,
      'area_exploration_list': instance.areaExplorationList,
      'boss_list': instance.bossList,
      'seven_statue_level': instance.sevenStatueLevel,
      'is_hot': instance.isHot,
      'index_active': instance.indexActive,
      'detail_active': instance.detailActive,
      'world_type': instance.worldType,
      'natan_reputation': instance.natanReputaion,
    };

WorldExplorationOfferfing _$WorldExplorationOfferfingFromJson(
        Map<String, dynamic> json) =>
    WorldExplorationOfferfing(
      name: json['name'] as String,
      level: (json['level'] as num).toInt(),
      icon: json['icon'] as String,
    );

Map<String, dynamic> _$WorldExplorationOfferfingToJson(
        WorldExplorationOfferfing instance) =>
    <String, dynamic>{
      'name': instance.name,
      'level': instance.level,
      'icon': instance.icon,
    };

WorldExplorationAreaExploration _$WorldExplorationAreaExplorationFromJson(
        Map<String, dynamic> json) =>
    WorldExplorationAreaExploration(
      name: json['name'] as String,
      explorationPercentage: (json['exploration_percentage'] as num).toInt(),
    );

Map<String, dynamic> _$WorldExplorationAreaExplorationToJson(
        WorldExplorationAreaExploration instance) =>
    <String, dynamic>{
      'name': instance.name,
      'exploration_percentage': instance.explorationPercentage,
    };

WorldExplorationBoss _$WorldExplorationBossFromJson(
        Map<String, dynamic> json) =>
    WorldExplorationBoss(
      name: json['name'] as String,
      killNum: (json['kill_num'] as num).toInt(),
    );

Map<String, dynamic> _$WorldExplorationBossToJson(
        WorldExplorationBoss instance) =>
    <String, dynamic>{
      'name': instance.name,
      'kill_num': instance.killNum,
    };

SereniteaPot _$SereniteaPotFromJson(Map<String, dynamic> json) => SereniteaPot(
      level: (json['level'] as num).toInt(),
      visitNum: (json['visit_num'] as num).toInt(),
      comfortNum: (json['comfort_num'] as num).toInt(),
      itemNum: (json['item_num'] as num).toInt(),
      name: json['name'] as String,
      icon: json['icon'] as String,
      comfortLevelName: json['comfort_level_name'] as String,
      comfortLevelIcon: json['comfort_level_icon'] as String,
    );

Map<String, dynamic> _$SereniteaPotToJson(SereniteaPot instance) =>
    <String, dynamic>{
      'level': instance.level,
      'visit_num': instance.visitNum,
      'comfort_num': instance.comfortNum,
      'item_num': instance.itemNum,
      'name': instance.name,
      'icon': instance.icon,
      'comfort_level_name': instance.comfortLevelName,
      'comfort_level_icon': instance.comfortLevelIcon,
    };

NatanReputaion _$NatanReputaionFromJson(Map<String, dynamic> json) =>
    NatanReputaion(
      tribalList: (json['tribal_list'] as List<dynamic>)
          .map((e) => Tribal.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$NatanReputaionToJson(NatanReputaion instance) =>
    <String, dynamic>{
      'tribal_list': instance.tribalList,
    };

Tribal _$TribalFromJson(Map<String, dynamic> json) => Tribal(
      icon: json['icon'] as String,
      image: json['image'] as String,
      name: json['name'] as String,
      id: (json['id'] as num).toInt(),
      level: (json['level'] as num).toInt(),
    );

Map<String, dynamic> _$TribalToJson(Tribal instance) => <String, dynamic>{
      'icon': instance.icon,
      'image': instance.image,
      'name': instance.name,
      'id': instance.id,
      'level': instance.level,
    };


import 'package:json_annotation/json_annotation.dart';

part 'game_record_model.g.dart';

@JsonSerializable()
class GameRecord {
  final GameRecordRoleData role;
  final List<GameRecordAvatarData> avatars;
  final GameRecordStatsData stats;
  @JsonKey(name: 'world_explorations')
  final List<WorldExploration> worldExploration;
  final List<SereniteaPot> homes;
  @JsonKey(name: 'query_tool_link')
  final String queryToolLink;
  @JsonKey(name: 'query_tool_image')
  final String queryToolImage;

  GameRecord({
    required this.role,
    required this.avatars,
    required this.stats,
    required this.worldExploration,
    required this.homes,
    required this.queryToolImage,
    required this.queryToolLink
  });

  factory GameRecord.fromJson(Map<String, dynamic> json) => _$GameRecordFromJson(json);

  Map<String, dynamic> toJson() => _$GameRecordToJson(this);
}

@JsonSerializable()
class GameRecordRoleData {
  @JsonKey(name: 'AvatarUrl')
  final String avatarUrl;
  final String nickname;
  final String region;
  final int level;
  @JsonKey(name: 'game_head_icon')
  final String gameHeadIcon;

  GameRecordRoleData({
    required this.avatarUrl,
    required this.nickname,
    required this.region,
    required this.level,
    required this.gameHeadIcon,
  });

  factory GameRecordRoleData.fromJson(Map<String, dynamic> json) => _$GameRecordRoleDataFromJson(json);

  Map<String, dynamic> toJson() => _$GameRecordRoleDataToJson(this);
}

@JsonSerializable()
class GameRecordAvatarData {
  final int id;
  final String image;
  final String name;
  final String element;
  final int fetter;
  final int level;
  final int rarity;
  @JsonKey(name: 'actived_constellation_num')
  final int activedConstellationNum;
  @JsonKey(name: 'card_image')
  final String cardImage;
  @JsonKey(name: 'is_chosen')
  final bool isChosen;

  GameRecordAvatarData({
    required this.id,
    required this.image,
    required this.name,
    required this.element,
    required this.fetter,
    required this.level,
    required this.rarity,
    required this.activedConstellationNum,
    required this.cardImage,
    required this.isChosen
  });

  factory GameRecordAvatarData.fromJson(Map<String, dynamic> json) => _$GameRecordAvatarDataFromJson(json);

  Map<String, dynamic> toJson() => _$GameRecordAvatarDataToJson(this);
}

@JsonSerializable()
class GameRecordStatsData {
  @JsonKey(name: 'active_day_number')
  final int activeDayNumber;
  @JsonKey(name: 'achievement_number')
  final int achievementNumber;
  @JsonKey(name: 'anemoculus_number')
  final int anemoculusNumber;
  @JsonKey(name: 'geoculus_number')
  final int geoculusNumber;
  @JsonKey(name: 'avatar_number')
  final int avatarNumber;
  @JsonKey(name: 'way_point_number')
  final int wayPointNumber;
  @JsonKey(name: 'domain_number')
  final int domainNumber;
  @JsonKey(name: 'spiral_abyss')
  final String spiralAbyss;
  @JsonKey(name: 'precious_chest_number')
  final int preciousChestNumber;
  @JsonKey(name: 'luxurious_chest_number')
  final int luxuriousChestNumber;
  @JsonKey(name: 'exquisite_chest_number')
  final int exquisiteChestNumber;
  @JsonKey(name: 'common_chest_number')
  final int commonChestNumber;
  @JsonKey(name: 'electroculus_number')
  final int electroculusNumber;
  @JsonKey(name: 'magic_chest_number')
  final int magicChestNumber;
  @JsonKey(name: 'dendroculus_number')
  final int dendroculusNumber;
  @JsonKey(name: 'hydroculus_number')
  final int hydroculusNumber;
  @JsonKey(name: 'pyroculus_number')
  final int pyroculusNumber;
  @JsonKey(name: 'role_combat')
  final RoleCombatStat roleCombat;
  @JsonKey(name: 'full_fetter_avatar_num')
  final int fullFetterAvatarNum;

  GameRecordStatsData({
    required this.activeDayNumber,
    required this.achievementNumber,
    required this.anemoculusNumber,
    required this.geoculusNumber,
    required this.avatarNumber,
    required this.wayPointNumber,
    required this.domainNumber,
    required this.spiralAbyss,
    required this.preciousChestNumber,
    required this.luxuriousChestNumber,
    required this.exquisiteChestNumber,
    required this.commonChestNumber,
    required this.electroculusNumber,
    required this.magicChestNumber,
    required this.dendroculusNumber,
    required this.hydroculusNumber,
    required this.pyroculusNumber,
    required this.roleCombat,
    required this.fullFetterAvatarNum
  });

  factory GameRecordStatsData.fromJson(Map<String, dynamic> json) => _$GameRecordStatsDataFromJson(json);

  Map<String, dynamic> toJson() => _$GameRecordStatsDataToJson(this);
}

@JsonSerializable()
class RoleCombatStat {
  @JsonKey(name: 'is_unlock')
  final bool isUnlock;
  @JsonKey(name: 'max_round_id')
  final int maxRoundId;
  @JsonKey(name: 'has_data')
  final bool hasData;
  @JsonKey(name: 'has_detail_data')
  final bool hasDetailData;

  RoleCombatStat({
    required this.isUnlock,
    required this.maxRoundId,
    required this.hasData,
    required this.hasDetailData
  });

  factory RoleCombatStat.fromJson(Map<String, dynamic> json) => _$RoleCombatStatFromJson(json);

  Map<String, dynamic> toJson() => _$RoleCombatStatToJson(this);
}

@JsonSerializable()
class WorldExploration {
  final int level;
  @JsonKey(name: 'exploration_percentage')
  final int explorationPercentage;
  final String icon;
  final String name;
  final String type;
  final List<WorldExplorationOfferfing> offerings;
  final int id;
  @JsonKey(name: 'parent_id')
  final int parentId;
  @JsonKey(name: 'map_url')
  final String mapUrl;
  @JsonKey(name: 'strategy_url')
  final String strategyUrl;
  @JsonKey(name: 'background_image')
  final String backgroundImage;
  @JsonKey(name: 'inner_icon')
  final String innerIcon;
  final String cover;
  @JsonKey(name: 'area_exploration_list')
  final List<WorldExplorationAreaExploration> areaExplorationList;
  @JsonKey(name: 'boss_list')
  final List<WorldExplorationBoss> bossList;
  @JsonKey(name: 'seven_statue_level')
  final int sevenStatueLevel;
  @JsonKey(name: 'is_hot')
  final bool isHot;
  @JsonKey(name: 'index_active')
  final bool indexActive;
  @JsonKey(name: 'detail_active')
  final bool detailActive;
  @JsonKey(name: 'world_type')
  final int worldType;
  @JsonKey(name: 'natan_reputation')
  final NatanReputaion? natanReputaion;
  
  WorldExploration({
    required this.level,
    required this.explorationPercentage,
    required this.icon,
    required this.name,
    required this.type,
    required this.offerings,
    required this.id,
    required this.parentId,
    required this.mapUrl,
    required this.strategyUrl,
    required this.backgroundImage,
    required this.innerIcon,
    required this.cover,
    required this.areaExplorationList,
    required this.bossList,
    required this.sevenStatueLevel,
    required this.isHot,
    required this.indexActive,
    required this.detailActive,
    required this.natanReputaion,
    required this.worldType
  });

  factory WorldExploration.fromJson(Map<String, dynamic> json) => _$WorldExplorationFromJson(json);

  Map<String, dynamic> toJson() => _$WorldExplorationToJson(this);
}

@JsonSerializable()
class WorldExplorationOfferfing {
  final String name;
  final int level;
  final String icon;

  WorldExplorationOfferfing({
    required this.name,
    required this.level,
    required this.icon
  });

  factory WorldExplorationOfferfing.fromJson(Map<String, dynamic> json) => _$WorldExplorationOfferfingFromJson(json);

  Map<String, dynamic> toJson() => _$WorldExplorationOfferfingToJson(this);
}

@JsonSerializable()
class WorldExplorationAreaExploration {
  final String name;
  @JsonKey(name: 'exploration_percentage')
  final int explorationPercentage;

  WorldExplorationAreaExploration({
    required this.name,
    required this.explorationPercentage,
  });

  factory WorldExplorationAreaExploration.fromJson(Map<String, dynamic> json) => _$WorldExplorationAreaExplorationFromJson(json);

  Map<String, dynamic> toJson() => _$WorldExplorationAreaExplorationToJson(this);
}

@JsonSerializable()
class WorldExplorationBoss {
  final String name;
  @JsonKey(name: 'kill_num')
  final int killNum;

  WorldExplorationBoss({
    required this.name,
    required this.killNum
  });

  factory WorldExplorationBoss.fromJson(Map<String, dynamic> json) => _$WorldExplorationBossFromJson(json);

  Map<String, dynamic> toJson() => _$WorldExplorationBossToJson(this);
}

@JsonSerializable()
class SereniteaPot {
  final int level;
  @JsonKey(name: 'visit_num')
  final int visitNum;
  @JsonKey(name: 'comfort_num')
  final int comfortNum;
  @JsonKey(name: 'item_num')
  final int itemNum;
  final String name;
  final String icon;
  @JsonKey(name: 'comfort_level_name')
  final String comfortLevelName;
  @JsonKey(name: 'comfort_level_icon')
  final String comfortLevelIcon;

  SereniteaPot({
    required this.level,
    required this.visitNum,
    required this.comfortNum,
    required this.itemNum,
    required this.name,
    required this.icon,
    required this.comfortLevelName,
    required this.comfortLevelIcon,
  });

  factory SereniteaPot.fromJson(Map<String, dynamic> json) => _$SereniteaPotFromJson(json);

  Map<String, dynamic> toJson() => _$SereniteaPotToJson(this);
}

@JsonSerializable()
class NatanReputaion {
  @JsonKey(name: 'tribal_list')
  final List<Tribal> tribalList;

  NatanReputaion({
    required this.tribalList
  });

  factory NatanReputaion.fromJson(Map<String, dynamic> json) => _$NatanReputaionFromJson(json);

  Map<String, dynamic> toJson() => _$NatanReputaionToJson(this);
}

@JsonSerializable()
class Tribal {
  final String icon;
  final String image;
  final String name;
  final int id;
  final int level;

  Tribal({
    required this.icon,
    required this.image,
    required this.name,
    required this.id,
    required this.level,
  });

  factory Tribal.fromJson(Map<String, dynamic> json) => _$TribalFromJson(json);

  Map<String, dynamic> toJson() => _$TribalToJson(this);
}
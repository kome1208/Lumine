import 'package:json_annotation/json_annotation.dart';

part 'sync_avatar_model.g.dart';

@JsonSerializable()
class SyncAvatarList {
  final List<SyncAvatar> list;
  final int total;

  SyncAvatarList({
    required this.list,
    required this.total
  });

  factory SyncAvatarList.fromJson(Map<String, dynamic> json) => _$SyncAvatarListFromJson(json);

  Map<String, dynamic> toJson() => _$SyncAvatarListToJson(this);
}

@JsonSerializable()
class SyncAvatar {
  final int id;
  final String name;
  final String icon;
  @JsonKey(name: 'weapon_cat_id')
  final int weaponCatId;
  @JsonKey(name: 'avatar_level')
  final int avatarLevel;
  @JsonKey(name: 'element_attr_id')
  final int elementAttrId;
  @JsonKey(name: 'max_level')
  final int maxLevel;
  @JsonKey(name: 'level_current')
  final String levelCurrent;
  @JsonKey(name: 'skill_list')
  final List<SyncAvatarSkill> skillList;
  final SyncAvatarWeapon weapon;
  @JsonKey(name: 'reliquary_list')
  final List<SyncAvatarReliquary> reliquaryList;
  @JsonKey(name: 'wiki_url')
  final String wikiUrl;

  SyncAvatar({
    required this.id,
    required this.name,
    required this.icon,
    required this.weaponCatId,
    required this.avatarLevel,
    required this.elementAttrId,
    required this.maxLevel,
    required this.levelCurrent,
    required this.skillList,
    required this.weapon,
    required this.reliquaryList,
    required this.wikiUrl,
  });

  factory SyncAvatar.fromJson(Map<String, dynamic> json) => _$SyncAvatarFromJson(json);

  Map<String, dynamic> toJson() => _$SyncAvatarToJson(this);
}

@JsonSerializable()
class SyncAvatarSkill {
  final int id;
  @JsonKey(name: 'group_id')
  final int groupId;
  final String name;
  final String icon;
  @JsonKey(name: 'max_level')
  final int maxLevel;
  @JsonKey(name: 'level_current')
  final int levelCurrent;

  SyncAvatarSkill({
    required this.id,
    required this.groupId,
    required this.name,
    required this.icon,
    required this.maxLevel,
    required this.levelCurrent,
  });

  factory SyncAvatarSkill.fromJson(Map<String, dynamic> json) => _$SyncAvatarSkillFromJson(json);

  Map<String, dynamic> toJson() => _$SyncAvatarSkillToJson(this);
}

@JsonSerializable()
class SyncAvatarWeapon {
  final int id;
  final String name;
  final String icon;
  @JsonKey(name: 'weapon_cat_id')
  final int weaponCatId;
  @JsonKey(name: 'weapon_level')
  final int weaponLevel;
  @JsonKey(name: 'max_level')
  final int maxLevel;
  @JsonKey(name: 'level_current')
  final int levelCurrent;

  SyncAvatarWeapon({
    required this.id,
    required this.weaponCatId,
    required this.weaponLevel,
    required this.name,
    required this.icon,
    required this.maxLevel,
    required this.levelCurrent,
  });

  factory SyncAvatarWeapon.fromJson(Map<String, dynamic> json) => _$SyncAvatarWeaponFromJson(json);

  Map<String, dynamic> toJson() => _$SyncAvatarWeaponToJson(this);
}

@JsonSerializable()
class SyncAvatarReliquary {
  final int id;
  final String name;
  final String icon;
  @JsonKey(name: 'reliquary_cat_id')
  final int reliquaryCatId;
  @JsonKey(name: 'reliquary_level')
  final int reliquaryLevel;
  @JsonKey(name: 'max_level')
  final int maxLevel;
  @JsonKey(name: 'level_current')
  final int levelCurrent;

  SyncAvatarReliquary({
    required this.id,
    required this.reliquaryCatId,
    required this.reliquaryLevel,
    required this.name,
    required this.icon,
    required this.maxLevel,
    required this.levelCurrent,
  });

  factory SyncAvatarReliquary.fromJson(Map<String, dynamic> json) => _$SyncAvatarReliquaryFromJson(json);

  Map<String, dynamic> toJson() => _$SyncAvatarReliquaryToJson(this);
}
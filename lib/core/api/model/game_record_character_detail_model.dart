import 'package:json_annotation/json_annotation.dart';

part 'game_record_character_detail_model.g.dart';

@JsonSerializable()
class GameRecordCharacterDetail {
  final List<CharacterDetail> list;
  @JsonKey(name: 'property_map')
  final Map<String, PropertyMap> propertyMap;

  GameRecordCharacterDetail({
    required this.list,
    required this.propertyMap
  });

  factory GameRecordCharacterDetail.fromJson(Map<String, dynamic> json) => _$GameRecordCharacterDetailFromJson(json);

  Map<String, dynamic> toJson() => _$GameRecordCharacterDetailToJson(this);
}

@JsonSerializable()
class CharacterDetail {
  final CharacterDetailBase base;
  final CharacterDetailWeapon weapon;
  final List<CharacterDetailRelic> relics;
  final List<CharacterDetailConstellation> constellations;
  final List<CharacterDetailCostume> costumes;
  @JsonKey(name: 'selected_properties')
  final List<CharacterDetailProperty> selectedProperties;
  @JsonKey(name: 'base_properties')
  final List<CharacterDetailProperty> baseProperties;
  @JsonKey(name: 'extra_properties')
  final List<CharacterDetailProperty> extraProperties;
  @JsonKey(name: 'element_properties')
  final List<CharacterDetailProperty> elementProperties;
  final List<CharacterDetailSkill> skills;
  @JsonKey(name: 'recommend_relic_property')
  final CharacterDetailRecommendRelicProperty recommendRelicProperty;

  CharacterDetail({
    required this.base,
    required this.weapon,
    required this.relics,
    required this.constellations,
    required this.costumes,
    required this.selectedProperties,
    required this.baseProperties,
    required this.extraProperties,
    required this.elementProperties,
    required this.skills,
    required this.recommendRelicProperty,
  });

  factory CharacterDetail.fromJson(Map<String, dynamic> json) => _$CharacterDetailFromJson(json);

  Map<String, dynamic> toJson() => _$CharacterDetailToJson(this);
}

@JsonSerializable()
class CharacterDetailBase {
  final int id;
  final String icon;
  final String name;
  final String element;
  final int fetter;
  final int level;
  final int rarity;
  @JsonKey(name: 'actived_constellation_num')
  final int activedConstellationNum;
  final String image;
  @JsonKey(name: 'is_chosen')
  final bool isChosen;
  @JsonKey(name: 'side_icon')
  final String sideIcon;
  @JsonKey(name: 'weapon_type')
  final int weaponType;
  final CharacterDetailBaseWeapon weapon;

  CharacterDetailBase({
    required this.id,
    required this.icon,
    required this.name,
    required this.element,
    required this.fetter,
    required this.level,
    required this.rarity,
    required this.activedConstellationNum,
    required this.image,
    required this.isChosen,
    required this.sideIcon,
    required this.weaponType,
    required this.weapon,
  });

  factory CharacterDetailBase.fromJson(Map<String, dynamic> json) => _$CharacterDetailBaseFromJson(json);

  Map<String, dynamic> toJson() => _$CharacterDetailBaseToJson(this);
}

@JsonSerializable()
class CharacterDetailBaseWeapon {
  final int id;
  final String icon;
  final int type;
  final int rarity;
  final int level;
  @JsonKey(name: 'affix_level')
  final int affixLevel;

  CharacterDetailBaseWeapon({
    required this.id,
    required this.icon,
    required this.type,
    required this.rarity,
    required this.level,
    required this.affixLevel,
  });

  factory CharacterDetailBaseWeapon.fromJson(Map<String, dynamic> json) => _$CharacterDetailBaseWeaponFromJson(json);

  Map<String, dynamic> toJson() => _$CharacterDetailBaseWeaponToJson(this);
}

@JsonSerializable()
class CharacterDetailWeapon {
  final int id;
  final String name;
  final String icon;
  final int type;
  final int rarity;
  final int level;
  @JsonKey(name: 'promote_level')
  final int promoteLevel;
  @JsonKey(name: 'type_name')
  final String typeName;
  final String desc;
  @JsonKey(name: 'affix_level')
  final int affixLevel;
  @JsonKey(name: 'main_property')
  final CharacterDetailProperty mainProperty;
  @JsonKey(name: 'sub_property')
  final CharacterDetailProperty? subProperty;

  CharacterDetailWeapon({
    required this.id,
    required this.name,
    required this.icon,
    required this.type,
    required this.rarity,
    required this.level,
    required this.promoteLevel,
    required this.typeName,
    required this.desc,
    required this.affixLevel,
    required this.mainProperty,
    this.subProperty,
  });

  factory CharacterDetailWeapon.fromJson(Map<String, dynamic> json) => _$CharacterDetailWeaponFromJson(json);

  Map<String, dynamic> toJson() => _$CharacterDetailWeaponToJson(this);
}

@JsonSerializable()
class CharacterDetailProperty {
  @JsonKey(name: 'property_type')
  final int propertyType;
  final String base;
  final String add;
  @JsonKey(name: 'final')
  final String value;

  CharacterDetailProperty({
    required this.propertyType,
    required this.base,
    required this.add,
    required this.value
  });

  factory CharacterDetailProperty.fromJson(Map<String, dynamic> json) => _$CharacterDetailPropertyFromJson(json);

  Map<String, dynamic> toJson() => _$CharacterDetailPropertyToJson(this);
}

@JsonSerializable()
class CharacterDetailRelic {
  final int id;
  final String name;
  final String icon;
  final int pos;
  final int rarity;
  final int level;
  final CharacterDetailRelicSet set;
  @JsonKey(name: 'pos_name')
  final String posName;
  @JsonKey(name: 'main_property')
  final CharacterDetailRelicProperty mainProperty;
  @JsonKey(name: 'sub_property_list')
  final List<CharacterDetailRelicProperty> subPropertyList;

  CharacterDetailRelic({
    required this.id,
    required this.name,
    required this.icon,
    required this.pos,
    required this.rarity,
    required this.level,
    required this.set,
    required this.posName,
    required this.mainProperty,
    required this.subPropertyList,
  });

  factory CharacterDetailRelic.fromJson(Map<String, dynamic> json) => _$CharacterDetailRelicFromJson(json);

  Map<String, dynamic> toJson() => _$CharacterDetailRelicToJson(this);
}

@JsonSerializable()
class CharacterDetailRelicSet {
  final int id;
  final String name;
  final List<CharacterDetailRelicSetAffix> affixes;

  CharacterDetailRelicSet({
    required this.id,
    required this.name,
    required this.affixes
  });

  factory CharacterDetailRelicSet.fromJson(Map<String, dynamic> json) => _$CharacterDetailRelicSetFromJson(json);

  Map<String, dynamic> toJson() => _$CharacterDetailRelicSetToJson(this);
}

@JsonSerializable()
class CharacterDetailRelicSetAffix {
  @JsonKey(name: 'activation_number')
  final int activationNumber;
  final String effect;

  CharacterDetailRelicSetAffix({
    required this.activationNumber,
    required this.effect
  });

  factory CharacterDetailRelicSetAffix.fromJson(Map<String, dynamic> json) => _$CharacterDetailRelicSetAffixFromJson(json);

  Map<String, dynamic> toJson() => _$CharacterDetailRelicSetAffixToJson(this);
}

@JsonSerializable()
class CharacterDetailRelicProperty {
  @JsonKey(name: 'property_type')
  final int propertyType;
  final String value;
  final int times;

  CharacterDetailRelicProperty({
    required this.propertyType,
    required this.value,
    required this.times
  });

  factory CharacterDetailRelicProperty.fromJson(Map<String, dynamic> json) => _$CharacterDetailRelicPropertyFromJson(json);

  Map<String, dynamic> toJson() => _$CharacterDetailRelicPropertyToJson(this);
}

@JsonSerializable()
class CharacterDetailConstellation {
  final int id;
  final String name;
  final String icon;
  final String effect;
  @JsonKey(name: 'is_actived')
  final bool isActived;
  final int pos;

  CharacterDetailConstellation({
    required this.id,
    required this.name,
    required this.icon,
    required this.effect,
    required this.isActived,
    required this.pos
  });

  factory CharacterDetailConstellation.fromJson(Map<String, dynamic> json) => _$CharacterDetailConstellationFromJson(json);

  Map<String, dynamic> toJson() => _$CharacterDetailConstellationToJson(this);
}

@JsonSerializable()
class CharacterDetailCostume {
  final int id;
  final String name;
  final String icon;

  CharacterDetailCostume({
    required this.id,
    required this.name,
    required this.icon
  });

  factory CharacterDetailCostume.fromJson(Map<String, dynamic> json) => _$CharacterDetailCostumeFromJson(json);

  Map<String, dynamic> toJson() => _$CharacterDetailCostumeToJson(this);
}

@JsonSerializable()
class CharacterDetailSkill {
  @JsonKey(name: 'skill_id')
  final int skillId;
  @JsonKey(name: 'skill_type')
  final int skillType;
  final int level;
  final String desc;
  @JsonKey(name: 'skill_affix_list')
  final List<CharacterDetailSkillAffix> skillAffixList;
  final String icon;
  @JsonKey(name: 'is_unlock')
  final bool isUnlock;
  final String name;

  CharacterDetailSkill({
    required this.skillId,
    required this.skillType,
    required this.level,
    required this.desc,
    required this.skillAffixList,
    required this.icon,
    required this.isUnlock,
    required this.name,
  });

  factory CharacterDetailSkill.fromJson(Map<String, dynamic> json) => _$CharacterDetailSkillFromJson(json);

  Map<String, dynamic> toJson() => _$CharacterDetailSkillToJson(this);
}

@JsonSerializable()
class CharacterDetailSkillAffix {
  final String name;
  final String value;

  CharacterDetailSkillAffix({
    required this.name,
    required this.value
  });

  factory CharacterDetailSkillAffix.fromJson(Map<String, dynamic> json) => _$CharacterDetailSkillAffixFromJson(json);

  Map<String, dynamic> toJson() => _$CharacterDetailSkillAffixToJson(this);
}

@JsonSerializable()
class CharacterDetailRecommendRelicProperty {
  @JsonKey(name: 'recommend_properties')
  final CharacterDetailRelicProperties recommendProperties;
  @JsonKey(name: 'custom_properties')
  final CharacterDetailRelicProperties? customProperties;
  @JsonKey(name: 'has_set_recommend_prop')
  final bool hasSetRecommendProp;

  CharacterDetailRecommendRelicProperty({
    required this.recommendProperties,
    this.customProperties,
    required this.hasSetRecommendProp
  });

  factory CharacterDetailRecommendRelicProperty.fromJson(Map<String, dynamic> json) => _$CharacterDetailRecommendRelicPropertyFromJson(json);

  Map<String, dynamic> toJson() => _$CharacterDetailRecommendRelicPropertyToJson(this);
}

@JsonSerializable()
class CharacterDetailRelicProperties {
  @JsonKey(name: 'sand_main_property_list')
  final List<int> sandMainPropertyList;
  @JsonKey(name: 'goblet_main_property_list')
  final List<int> gobletMainPropertyList;
  @JsonKey(name: 'circlet_main_property_list')
  final List<int> circletMainPropertyList;
  @JsonKey(name: 'sub_property_list')
  final List<int> subPropertyList;

  CharacterDetailRelicProperties({
    required this.sandMainPropertyList,
    required this.gobletMainPropertyList,
    required this.circletMainPropertyList,
    required this.subPropertyList
  });

  factory CharacterDetailRelicProperties.fromJson(Map<String, dynamic> json) => _$CharacterDetailRelicPropertiesFromJson(json);

  Map<String, dynamic> toJson() => _$CharacterDetailRelicPropertiesToJson(this);
}

@JsonSerializable()
class PropertyMap {
  @JsonKey(name: 'property_type')
  final int propertyType;
  final String name;
  final String icon;
  @JsonKey(name: 'filter_name')
  final String filterName;

  PropertyMap({
    required this.propertyType,
    required this.name,
    required this.icon,
    required this.filterName
  });

  factory PropertyMap.fromJson(Map<String, dynamic> json) => _$PropertyMapFromJson(json);

  Map<String, dynamic> toJson() => _$PropertyMapToJson(this);
}
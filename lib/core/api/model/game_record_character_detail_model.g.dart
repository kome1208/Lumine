// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_record_character_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GameRecordCharacterDetail _$GameRecordCharacterDetailFromJson(
        Map<String, dynamic> json) =>
    GameRecordCharacterDetail(
      list: (json['list'] as List<dynamic>)
          .map((e) => CharacterDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
      propertyMap: (json['property_map'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, PropertyMap.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$GameRecordCharacterDetailToJson(
        GameRecordCharacterDetail instance) =>
    <String, dynamic>{
      'list': instance.list,
      'property_map': instance.propertyMap,
    };

CharacterDetail _$CharacterDetailFromJson(Map<String, dynamic> json) =>
    CharacterDetail(
      base: CharacterDetailBase.fromJson(json['base'] as Map<String, dynamic>),
      weapon: CharacterDetailWeapon.fromJson(
          json['weapon'] as Map<String, dynamic>),
      relics: (json['relics'] as List<dynamic>)
          .map((e) => CharacterDetailRelic.fromJson(e as Map<String, dynamic>))
          .toList(),
      constellations: (json['constellations'] as List<dynamic>)
          .map((e) =>
              CharacterDetailConstellation.fromJson(e as Map<String, dynamic>))
          .toList(),
      costumes: (json['costumes'] as List<dynamic>)
          .map(
              (e) => CharacterDetailCostume.fromJson(e as Map<String, dynamic>))
          .toList(),
      selectedProperties: (json['selected_properties'] as List<dynamic>)
          .map((e) =>
              CharacterDetailProperty.fromJson(e as Map<String, dynamic>))
          .toList(),
      baseProperties: (json['base_properties'] as List<dynamic>)
          .map((e) =>
              CharacterDetailProperty.fromJson(e as Map<String, dynamic>))
          .toList(),
      extraProperties: (json['extra_properties'] as List<dynamic>)
          .map((e) =>
              CharacterDetailProperty.fromJson(e as Map<String, dynamic>))
          .toList(),
      elementProperties: (json['element_properties'] as List<dynamic>)
          .map((e) =>
              CharacterDetailProperty.fromJson(e as Map<String, dynamic>))
          .toList(),
      skills: (json['skills'] as List<dynamic>)
          .map((e) => CharacterDetailSkill.fromJson(e as Map<String, dynamic>))
          .toList(),
      recommendRelicProperty: CharacterDetailRecommendRelicProperty.fromJson(
          json['recommend_relic_property'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CharacterDetailToJson(CharacterDetail instance) =>
    <String, dynamic>{
      'base': instance.base,
      'weapon': instance.weapon,
      'relics': instance.relics,
      'constellations': instance.constellations,
      'costumes': instance.costumes,
      'selected_properties': instance.selectedProperties,
      'base_properties': instance.baseProperties,
      'extra_properties': instance.extraProperties,
      'element_properties': instance.elementProperties,
      'skills': instance.skills,
      'recommend_relic_property': instance.recommendRelicProperty,
    };

CharacterDetailBase _$CharacterDetailBaseFromJson(Map<String, dynamic> json) =>
    CharacterDetailBase(
      id: (json['id'] as num).toInt(),
      icon: json['icon'] as String,
      name: json['name'] as String,
      element: json['element'] as String,
      fetter: (json['fetter'] as num).toInt(),
      level: (json['level'] as num).toInt(),
      rarity: (json['rarity'] as num).toInt(),
      activedConstellationNum:
          (json['actived_constellation_num'] as num).toInt(),
      image: json['image'] as String,
      isChosen: json['is_chosen'] as bool,
      sideIcon: json['side_icon'] as String,
      weaponType: (json['weapon_type'] as num).toInt(),
      weapon: CharacterDetailBaseWeapon.fromJson(
          json['weapon'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CharacterDetailBaseToJson(
        CharacterDetailBase instance) =>
    <String, dynamic>{
      'id': instance.id,
      'icon': instance.icon,
      'name': instance.name,
      'element': instance.element,
      'fetter': instance.fetter,
      'level': instance.level,
      'rarity': instance.rarity,
      'actived_constellation_num': instance.activedConstellationNum,
      'image': instance.image,
      'is_chosen': instance.isChosen,
      'side_icon': instance.sideIcon,
      'weapon_type': instance.weaponType,
      'weapon': instance.weapon,
    };

CharacterDetailBaseWeapon _$CharacterDetailBaseWeaponFromJson(
        Map<String, dynamic> json) =>
    CharacterDetailBaseWeapon(
      id: (json['id'] as num).toInt(),
      icon: json['icon'] as String,
      type: (json['type'] as num).toInt(),
      rarity: (json['rarity'] as num).toInt(),
      level: (json['level'] as num).toInt(),
      affixLevel: (json['affix_level'] as num).toInt(),
    );

Map<String, dynamic> _$CharacterDetailBaseWeaponToJson(
        CharacterDetailBaseWeapon instance) =>
    <String, dynamic>{
      'id': instance.id,
      'icon': instance.icon,
      'type': instance.type,
      'rarity': instance.rarity,
      'level': instance.level,
      'affix_level': instance.affixLevel,
    };

CharacterDetailWeapon _$CharacterDetailWeaponFromJson(
        Map<String, dynamic> json) =>
    CharacterDetailWeapon(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      icon: json['icon'] as String,
      type: (json['type'] as num).toInt(),
      rarity: (json['rarity'] as num).toInt(),
      level: (json['level'] as num).toInt(),
      promoteLevel: (json['promote_level'] as num).toInt(),
      typeName: json['type_name'] as String,
      desc: json['desc'] as String,
      affixLevel: (json['affix_level'] as num).toInt(),
      mainProperty: CharacterDetailProperty.fromJson(
          json['main_property'] as Map<String, dynamic>),
      subProperty: json['sub_property'] == null
          ? null
          : CharacterDetailProperty.fromJson(
              json['sub_property'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CharacterDetailWeaponToJson(
        CharacterDetailWeapon instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'icon': instance.icon,
      'type': instance.type,
      'rarity': instance.rarity,
      'level': instance.level,
      'promote_level': instance.promoteLevel,
      'type_name': instance.typeName,
      'desc': instance.desc,
      'affix_level': instance.affixLevel,
      'main_property': instance.mainProperty,
      'sub_property': instance.subProperty,
    };

CharacterDetailProperty _$CharacterDetailPropertyFromJson(
        Map<String, dynamic> json) =>
    CharacterDetailProperty(
      propertyType: (json['property_type'] as num).toInt(),
      base: json['base'] as String,
      add: json['add'] as String,
      value: json['final'] as String,
    );

Map<String, dynamic> _$CharacterDetailPropertyToJson(
        CharacterDetailProperty instance) =>
    <String, dynamic>{
      'property_type': instance.propertyType,
      'base': instance.base,
      'add': instance.add,
      'final': instance.value,
    };

CharacterDetailRelic _$CharacterDetailRelicFromJson(
        Map<String, dynamic> json) =>
    CharacterDetailRelic(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      icon: json['icon'] as String,
      pos: (json['pos'] as num).toInt(),
      rarity: (json['rarity'] as num).toInt(),
      level: (json['level'] as num).toInt(),
      set:
          CharacterDetailRelicSet.fromJson(json['set'] as Map<String, dynamic>),
      posName: json['pos_name'] as String,
      mainProperty: CharacterDetailRelicProperty.fromJson(
          json['main_property'] as Map<String, dynamic>),
      subPropertyList: (json['sub_property_list'] as List<dynamic>)
          .map((e) =>
              CharacterDetailRelicProperty.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CharacterDetailRelicToJson(
        CharacterDetailRelic instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'icon': instance.icon,
      'pos': instance.pos,
      'rarity': instance.rarity,
      'level': instance.level,
      'set': instance.set,
      'pos_name': instance.posName,
      'main_property': instance.mainProperty,
      'sub_property_list': instance.subPropertyList,
    };

CharacterDetailRelicSet _$CharacterDetailRelicSetFromJson(
        Map<String, dynamic> json) =>
    CharacterDetailRelicSet(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      affixes: (json['affixes'] as List<dynamic>)
          .map((e) =>
              CharacterDetailRelicSetAffix.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CharacterDetailRelicSetToJson(
        CharacterDetailRelicSet instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'affixes': instance.affixes,
    };

CharacterDetailRelicSetAffix _$CharacterDetailRelicSetAffixFromJson(
        Map<String, dynamic> json) =>
    CharacterDetailRelicSetAffix(
      activationNumber: (json['activation_number'] as num).toInt(),
      effect: json['effect'] as String,
    );

Map<String, dynamic> _$CharacterDetailRelicSetAffixToJson(
        CharacterDetailRelicSetAffix instance) =>
    <String, dynamic>{
      'activation_number': instance.activationNumber,
      'effect': instance.effect,
    };

CharacterDetailRelicProperty _$CharacterDetailRelicPropertyFromJson(
        Map<String, dynamic> json) =>
    CharacterDetailRelicProperty(
      propertyType: (json['property_type'] as num).toInt(),
      value: json['value'] as String,
      times: (json['times'] as num).toInt(),
    );

Map<String, dynamic> _$CharacterDetailRelicPropertyToJson(
        CharacterDetailRelicProperty instance) =>
    <String, dynamic>{
      'property_type': instance.propertyType,
      'value': instance.value,
      'times': instance.times,
    };

CharacterDetailConstellation _$CharacterDetailConstellationFromJson(
        Map<String, dynamic> json) =>
    CharacterDetailConstellation(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      icon: json['icon'] as String,
      effect: json['effect'] as String,
      isActived: json['is_actived'] as bool,
      pos: (json['pos'] as num).toInt(),
    );

Map<String, dynamic> _$CharacterDetailConstellationToJson(
        CharacterDetailConstellation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'icon': instance.icon,
      'effect': instance.effect,
      'is_actived': instance.isActived,
      'pos': instance.pos,
    };

CharacterDetailCostume _$CharacterDetailCostumeFromJson(
        Map<String, dynamic> json) =>
    CharacterDetailCostume(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      icon: json['icon'] as String,
    );

Map<String, dynamic> _$CharacterDetailCostumeToJson(
        CharacterDetailCostume instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'icon': instance.icon,
    };

CharacterDetailSkill _$CharacterDetailSkillFromJson(
        Map<String, dynamic> json) =>
    CharacterDetailSkill(
      skillId: (json['skill_id'] as num).toInt(),
      skillType: (json['skill_type'] as num).toInt(),
      level: (json['level'] as num).toInt(),
      desc: json['desc'] as String,
      skillAffixList: (json['skill_affix_list'] as List<dynamic>)
          .map((e) =>
              CharacterDetailSkillAffix.fromJson(e as Map<String, dynamic>))
          .toList(),
      icon: json['icon'] as String,
      isUnlock: json['is_unlock'] as bool,
      name: json['name'] as String,
    );

Map<String, dynamic> _$CharacterDetailSkillToJson(
        CharacterDetailSkill instance) =>
    <String, dynamic>{
      'skill_id': instance.skillId,
      'skill_type': instance.skillType,
      'level': instance.level,
      'desc': instance.desc,
      'skill_affix_list': instance.skillAffixList,
      'icon': instance.icon,
      'is_unlock': instance.isUnlock,
      'name': instance.name,
    };

CharacterDetailSkillAffix _$CharacterDetailSkillAffixFromJson(
        Map<String, dynamic> json) =>
    CharacterDetailSkillAffix(
      name: json['name'] as String,
      value: json['value'] as String,
    );

Map<String, dynamic> _$CharacterDetailSkillAffixToJson(
        CharacterDetailSkillAffix instance) =>
    <String, dynamic>{
      'name': instance.name,
      'value': instance.value,
    };

CharacterDetailRecommendRelicProperty
    _$CharacterDetailRecommendRelicPropertyFromJson(
            Map<String, dynamic> json) =>
        CharacterDetailRecommendRelicProperty(
          recommendProperties: CharacterDetailRelicProperties.fromJson(
              json['recommend_properties'] as Map<String, dynamic>),
          customProperties: json['custom_properties'] == null
              ? null
              : CharacterDetailRelicProperties.fromJson(
                  json['custom_properties'] as Map<String, dynamic>),
          hasSetRecommendProp: json['has_set_recommend_prop'] as bool,
        );

Map<String, dynamic> _$CharacterDetailRecommendRelicPropertyToJson(
        CharacterDetailRecommendRelicProperty instance) =>
    <String, dynamic>{
      'recommend_properties': instance.recommendProperties,
      'custom_properties': instance.customProperties,
      'has_set_recommend_prop': instance.hasSetRecommendProp,
    };

CharacterDetailRelicProperties _$CharacterDetailRelicPropertiesFromJson(
        Map<String, dynamic> json) =>
    CharacterDetailRelicProperties(
      sandMainPropertyList: (json['sand_main_property_list'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      gobletMainPropertyList:
          (json['goblet_main_property_list'] as List<dynamic>)
              .map((e) => (e as num).toInt())
              .toList(),
      circletMainPropertyList:
          (json['circlet_main_property_list'] as List<dynamic>)
              .map((e) => (e as num).toInt())
              .toList(),
      subPropertyList: (json['sub_property_list'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
    );

Map<String, dynamic> _$CharacterDetailRelicPropertiesToJson(
        CharacterDetailRelicProperties instance) =>
    <String, dynamic>{
      'sand_main_property_list': instance.sandMainPropertyList,
      'goblet_main_property_list': instance.gobletMainPropertyList,
      'circlet_main_property_list': instance.circletMainPropertyList,
      'sub_property_list': instance.subPropertyList,
    };

PropertyMap _$PropertyMapFromJson(Map<String, dynamic> json) => PropertyMap(
      propertyType: (json['property_type'] as num).toInt(),
      name: json['name'] as String,
      icon: json['icon'] as String,
      filterName: json['filter_name'] as String,
    );

Map<String, dynamic> _$PropertyMapToJson(PropertyMap instance) =>
    <String, dynamic>{
      'property_type': instance.propertyType,
      'name': instance.name,
      'icon': instance.icon,
      'filter_name': instance.filterName,
    };

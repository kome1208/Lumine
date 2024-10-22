// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calculator_sync_avatar_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CalculatorSyncAvatarListImpl _$$CalculatorSyncAvatarListImplFromJson(
        Map<String, dynamic> json) =>
    _$CalculatorSyncAvatarListImpl(
      list: (json['list'] as List<dynamic>)
          .map((e) => CalculatorSyncAvatar.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: (json['total'] as num).toInt(),
    );

Map<String, dynamic> _$$CalculatorSyncAvatarListImplToJson(
        _$CalculatorSyncAvatarListImpl instance) =>
    <String, dynamic>{
      'list': instance.list,
      'total': instance.total,
    };

_$CalculatorSyncAvatarImpl _$$CalculatorSyncAvatarImplFromJson(
        Map<String, dynamic> json) =>
    _$CalculatorSyncAvatarImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      icon: json['icon'] as String,
      weaponCatId: (json['weapon_cat_id'] as num).toInt(),
      avatarLevel: (json['avatar_level'] as num).toInt(),
      elementAttrId: (json['element_attr_id'] as num).toInt(),
      maxLevel: (json['max_level'] as num).toInt(),
      levelCurrent: json['level_current'] as String,
      skillList: (json['skill_list'] as List<dynamic>)
          .map((e) =>
              CalculatorSyncAvatarSkill.fromJson(e as Map<String, dynamic>))
          .toList(),
      weapon: CalculatorSyncAvatarWeapon.fromJson(
          json['weapon'] as Map<String, dynamic>),
      reliquaryList: (json['reliquary_list'] as List<dynamic>)
          .map((e) =>
              CalculatorSyncAvatarReliquary.fromJson(e as Map<String, dynamic>))
          .toList(),
      wikiUrl: json['wiki_url'] as String,
    );

Map<String, dynamic> _$$CalculatorSyncAvatarImplToJson(
        _$CalculatorSyncAvatarImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'icon': instance.icon,
      'weapon_cat_id': instance.weaponCatId,
      'avatar_level': instance.avatarLevel,
      'element_attr_id': instance.elementAttrId,
      'max_level': instance.maxLevel,
      'level_current': instance.levelCurrent,
      'skill_list': instance.skillList,
      'weapon': instance.weapon,
      'reliquary_list': instance.reliquaryList,
      'wiki_url': instance.wikiUrl,
    };

_$CalculatorSyncAvatarSkillImpl _$$CalculatorSyncAvatarSkillImplFromJson(
        Map<String, dynamic> json) =>
    _$CalculatorSyncAvatarSkillImpl(
      id: (json['id'] as num).toInt(),
      groupId: (json['group_id'] as num).toInt(),
      name: json['name'] as String,
      icon: json['icon'] as String,
      maxLevel: (json['max_level'] as num).toInt(),
      levelCurrent: (json['level_current'] as num).toInt(),
    );

Map<String, dynamic> _$$CalculatorSyncAvatarSkillImplToJson(
        _$CalculatorSyncAvatarSkillImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'group_id': instance.groupId,
      'name': instance.name,
      'icon': instance.icon,
      'max_level': instance.maxLevel,
      'level_current': instance.levelCurrent,
    };

_$CalculatorSyncAvatarWeaponImpl _$$CalculatorSyncAvatarWeaponImplFromJson(
        Map<String, dynamic> json) =>
    _$CalculatorSyncAvatarWeaponImpl(
      id: (json['id'] as num).toInt(),
      weaponCatId: (json['weapon_cat_id'] as num).toInt(),
      weaponLevel: (json['weapon_level'] as num).toInt(),
      name: json['name'] as String,
      icon: json['icon'] as String,
      maxLevel: (json['max_level'] as num).toInt(),
      levelCurrent: (json['level_current'] as num).toInt(),
    );

Map<String, dynamic> _$$CalculatorSyncAvatarWeaponImplToJson(
        _$CalculatorSyncAvatarWeaponImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'weapon_cat_id': instance.weaponCatId,
      'weapon_level': instance.weaponLevel,
      'name': instance.name,
      'icon': instance.icon,
      'max_level': instance.maxLevel,
      'level_current': instance.levelCurrent,
    };

_$CalculatorSyncAvatarReliquaryImpl
    _$$CalculatorSyncAvatarReliquaryImplFromJson(Map<String, dynamic> json) =>
        _$CalculatorSyncAvatarReliquaryImpl(
          id: (json['id'] as num).toInt(),
          reliquaryCatId: (json['reliquary_cat_id'] as num).toInt(),
          reliquaryLevel: (json['reliquary_level'] as num).toInt(),
          name: json['name'] as String,
          icon: json['icon'] as String,
          maxLevel: (json['max_level'] as num).toInt(),
          levelCurrent: (json['level_current'] as num).toInt(),
        );

Map<String, dynamic> _$$CalculatorSyncAvatarReliquaryImplToJson(
        _$CalculatorSyncAvatarReliquaryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'reliquary_cat_id': instance.reliquaryCatId,
      'reliquary_level': instance.reliquaryLevel,
      'name': instance.name,
      'icon': instance.icon,
      'max_level': instance.maxLevel,
      'level_current': instance.levelCurrent,
    };

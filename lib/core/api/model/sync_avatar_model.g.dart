// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sync_avatar_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SyncAvatarList _$SyncAvatarListFromJson(Map<String, dynamic> json) =>
    SyncAvatarList(
      list: (json['list'] as List<dynamic>)
          .map((e) => SyncAvatar.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: (json['total'] as num).toInt(),
    );

Map<String, dynamic> _$SyncAvatarListToJson(SyncAvatarList instance) =>
    <String, dynamic>{
      'list': instance.list,
      'total': instance.total,
    };

SyncAvatar _$SyncAvatarFromJson(Map<String, dynamic> json) => SyncAvatar(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      icon: json['icon'] as String,
      weaponCatId: (json['weapon_cat_id'] as num).toInt(),
      avatarLevel: (json['avatar_level'] as num).toInt(),
      elementAttrId: (json['element_attr_id'] as num).toInt(),
      maxLevel: (json['max_level'] as num).toInt(),
      levelCurrent: json['level_current'] as String,
      skillList: (json['skill_list'] as List<dynamic>)
          .map((e) => SyncAvatarSkill.fromJson(e as Map<String, dynamic>))
          .toList(),
      weapon: SyncAvatarWeapon.fromJson(json['weapon'] as Map<String, dynamic>),
      reliquaryList: (json['reliquary_list'] as List<dynamic>)
          .map((e) => SyncAvatarReliquary.fromJson(e as Map<String, dynamic>))
          .toList(),
      wikiUrl: json['wiki_url'] as String,
    );

Map<String, dynamic> _$SyncAvatarToJson(SyncAvatar instance) =>
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

SyncAvatarSkill _$SyncAvatarSkillFromJson(Map<String, dynamic> json) =>
    SyncAvatarSkill(
      id: (json['id'] as num).toInt(),
      groupId: (json['group_id'] as num).toInt(),
      name: json['name'] as String,
      icon: json['icon'] as String,
      maxLevel: (json['max_level'] as num).toInt(),
      levelCurrent: (json['level_current'] as num).toInt(),
    );

Map<String, dynamic> _$SyncAvatarSkillToJson(SyncAvatarSkill instance) =>
    <String, dynamic>{
      'id': instance.id,
      'group_id': instance.groupId,
      'name': instance.name,
      'icon': instance.icon,
      'max_level': instance.maxLevel,
      'level_current': instance.levelCurrent,
    };

SyncAvatarWeapon _$SyncAvatarWeaponFromJson(Map<String, dynamic> json) =>
    SyncAvatarWeapon(
      id: (json['id'] as num).toInt(),
      weaponCatId: (json['weapon_cat_id'] as num).toInt(),
      weaponLevel: (json['weapon_level'] as num).toInt(),
      name: json['name'] as String,
      icon: json['icon'] as String,
      maxLevel: (json['max_level'] as num).toInt(),
      levelCurrent: (json['level_current'] as num).toInt(),
    );

Map<String, dynamic> _$SyncAvatarWeaponToJson(SyncAvatarWeapon instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'icon': instance.icon,
      'weapon_cat_id': instance.weaponCatId,
      'weapon_level': instance.weaponLevel,
      'max_level': instance.maxLevel,
      'level_current': instance.levelCurrent,
    };

SyncAvatarReliquary _$SyncAvatarReliquaryFromJson(Map<String, dynamic> json) =>
    SyncAvatarReliquary(
      id: (json['id'] as num).toInt(),
      reliquaryCatId: (json['reliquary_cat_id'] as num).toInt(),
      reliquaryLevel: (json['reliquary_level'] as num).toInt(),
      name: json['name'] as String,
      icon: json['icon'] as String,
      maxLevel: (json['max_level'] as num).toInt(),
      levelCurrent: (json['level_current'] as num).toInt(),
    );

Map<String, dynamic> _$SyncAvatarReliquaryToJson(
        SyncAvatarReliquary instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'icon': instance.icon,
      'reliquary_cat_id': instance.reliquaryCatId,
      'reliquary_level': instance.reliquaryLevel,
      'max_level': instance.maxLevel,
      'level_current': instance.levelCurrent,
    };

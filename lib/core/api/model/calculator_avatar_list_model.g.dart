// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calculator_avatar_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CalculatorAvatarListImpl _$$CalculatorAvatarListImplFromJson(
        Map<String, dynamic> json) =>
    _$CalculatorAvatarListImpl(
      list: (json['list'] as List<dynamic>)
          .map((e) => CalculatorAvatar.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: (json['total'] as num).toInt(),
    );

Map<String, dynamic> _$$CalculatorAvatarListImplToJson(
        _$CalculatorAvatarListImpl instance) =>
    <String, dynamic>{
      'list': instance.list,
      'total': instance.total,
    };

_$CalculatorAvatarImpl _$$CalculatorAvatarImplFromJson(
        Map<String, dynamic> json) =>
    _$CalculatorAvatarImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      icon: json['icon'] as String,
      weaponCatId: (json['weapon_cat_id'] as num).toInt(),
      avatarLevel: (json['avatar_level'] as num).toInt(),
      elementAttrId: (json['element_attr_id'] as num).toInt(),
      maxLevel: (json['max_level'] as num).toInt(),
      talentIcons: (json['talent_icons'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      sideIcon: json['side_icon'] as String,
      profilePictures: (json['profile_pictures'] as List<dynamic>)
          .map((e) => ProfilePicture.fromJson(e as Map<String, dynamic>))
          .toList(),
      talents: (json['talents'] as List<dynamic>)
          .map(
              (e) => CalculatorAvatarTalent.fromJson(e as Map<String, dynamic>))
          .toList(),
      skillList: (json['skill_list'] as List<dynamic>)
          .map((e) => CalculatorAvatarSkill.fromJson(e as Map<String, dynamic>))
          .toList(),
      wikiUrl: json['wiki_url'] as String,
    );

Map<String, dynamic> _$$CalculatorAvatarImplToJson(
        _$CalculatorAvatarImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'icon': instance.icon,
      'weapon_cat_id': instance.weaponCatId,
      'avatar_level': instance.avatarLevel,
      'element_attr_id': instance.elementAttrId,
      'max_level': instance.maxLevel,
      'talent_icons': instance.talentIcons,
      'side_icon': instance.sideIcon,
      'profile_pictures': instance.profilePictures,
      'talents': instance.talents,
      'skill_list': instance.skillList,
      'wiki_url': instance.wikiUrl,
    };

_$ProfilePictureImpl _$$ProfilePictureImplFromJson(Map<String, dynamic> json) =>
    _$ProfilePictureImpl(
      avatarId: json['avatar_id'] as String,
      costumeId: json['costume_id'] as String,
      icon: json['icon'] as String,
      profilePictureId: json['profile_picture_id'] as String,
    );

Map<String, dynamic> _$$ProfilePictureImplToJson(
        _$ProfilePictureImpl instance) =>
    <String, dynamic>{
      'avatar_id': instance.avatarId,
      'costume_id': instance.costumeId,
      'icon': instance.icon,
      'profile_picture_id': instance.profilePictureId,
    };

_$CalculatorAvatarTalentImpl _$$CalculatorAvatarTalentImplFromJson(
        Map<String, dynamic> json) =>
    _$CalculatorAvatarTalentImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      icon: json['icon'] as String,
    );

Map<String, dynamic> _$$CalculatorAvatarTalentImplToJson(
        _$CalculatorAvatarTalentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'icon': instance.icon,
    };

_$CalculatorAvatarSkillImpl _$$CalculatorAvatarSkillImplFromJson(
        Map<String, dynamic> json) =>
    _$CalculatorAvatarSkillImpl(
      id: (json['id'] as num).toInt(),
      groupId: (json['group_id'] as num).toInt(),
      name: json['name'] as String,
      icon: json['icon'] as String,
      maxLevel: (json['max_level'] as num).toInt(),
    );

Map<String, dynamic> _$$CalculatorAvatarSkillImplToJson(
        _$CalculatorAvatarSkillImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'group_id': instance.groupId,
      'name': instance.name,
      'icon': instance.icon,
      'max_level': instance.maxLevel,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'char_master_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CharMaster _$CharMasterFromJson(Map<String, dynamic> json) => CharMaster(
      list: (json['list'] as List<dynamic>)
          .map((e) => CharMasterAvatar.fromJson(e as Map<String, dynamic>))
          .toList(),
      isUnlock: json['is_unlock'] as bool,
    );

Map<String, dynamic> _$CharMasterToJson(CharMaster instance) =>
    <String, dynamic>{
      'list': instance.list,
      'is_unlock': instance.isUnlock,
    };

CharMasterAvatar _$CharMasterAvatarFromJson(Map<String, dynamic> json) =>
    CharMasterAvatar(
      avatarId: (json['avatar_id'] as num).toInt(),
      name: json['name'] as String,
      icon: json['icon'] as String,
      status: (json['status'] as num).toInt(),
      hasRedDot: json['has_red_dot'] as bool,
      levelId: (json['level_id'] as num).toInt(),
    );

Map<String, dynamic> _$CharMasterAvatarToJson(CharMasterAvatar instance) =>
    <String, dynamic>{
      'avatar_id': instance.avatarId,
      'name': instance.name,
      'icon': instance.icon,
      'status': instance.status,
      'has_red_dot': instance.hasRedDot,
      'level_id': instance.levelId,
    };

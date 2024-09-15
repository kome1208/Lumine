// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_bonus_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CheckInTaskList _$CheckInTaskListFromJson(Map<String, dynamic> json) =>
    CheckInTaskList(
      total: (json['total'] as num).toInt(),
      list: (json['list'] as List<dynamic>)
          .map((e) => CheckInTask.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CheckInTaskListToJson(CheckInTaskList instance) =>
    <String, dynamic>{
      'total': instance.total,
      'list': instance.list,
    };

CheckInTask _$CheckInTaskFromJson(Map<String, dynamic> json) => CheckInTask(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      icon: json['icon'] as String,
      jumpUrl: json['jump_url'] as String,
      status: json['status'] as String,
      type: json['type'] as String,
      total: (json['total'] as num).toInt(),
      current: (json['current'] as num).toInt(),
    );

Map<String, dynamic> _$CheckInTaskToJson(CheckInTask instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'icon': instance.icon,
      'jump_url': instance.jumpUrl,
      'status': instance.status,
      'type': instance.type,
      'total': instance.total,
      'current': instance.current,
    };

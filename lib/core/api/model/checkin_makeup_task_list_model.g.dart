// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checkin_makeup_task_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CheckinMakeupTaskList _$CheckinMakeupTaskListFromJson(
        Map<String, dynamic> json) =>
    CheckinMakeupTaskList(
      total: (json['total'] as num).toInt(),
      list: (json['list'] as List<dynamic>)
          .map((e) => CheckinMakeupTask.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CheckinMakeupTaskListToJson(
        CheckinMakeupTaskList instance) =>
    <String, dynamic>{
      'total': instance.total,
      'list': instance.list,
    };

CheckinMakeupTask _$CheckinMakeupTaskFromJson(Map<String, dynamic> json) =>
    CheckinMakeupTask(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      icon: json['icon'] as String,
      jumpUrl: json['jump_url'] as String,
      status: json['status'] as String,
      type: json['type'] as String,
      total: (json['total'] as num).toInt(),
      current: (json['current'] as num).toInt(),
    );

Map<String, dynamic> _$CheckinMakeupTaskToJson(CheckinMakeupTask instance) =>
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

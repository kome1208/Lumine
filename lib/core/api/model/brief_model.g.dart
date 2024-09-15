// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'brief_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserBrief _$UserBriefFromJson(Map<String, dynamic> json) => UserBrief(
      brief: (json['brief'] as List<dynamic>)
          .map((e) => Brief.fromJson(e as Map<String, dynamic>))
          .toList(),
      systemBrief: (json['system_brief'] as List<dynamic>)
          .map((e) => Brief.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UserBriefToJson(UserBrief instance) => <String, dynamic>{
      'brief': instance.brief,
      'system_brief': instance.systemBrief,
    };

Brief _$BriefFromJson(Map<String, dynamic> json) => Brief(
      unreadCount: json['unread_count'] as String,
      message: json['message'] as String,
      sendTs: json['send_ts'] as String,
      category: json['category'] as String,
      type: json['type'] as String,
      label: json['label'] as String,
      notificationId: json['notification_id'] as String,
    );

Map<String, dynamic> _$BriefToJson(Brief instance) => <String, dynamic>{
      'unread_count': instance.unreadCount,
      'message': instance.message,
      'send_ts': instance.sendTs,
      'category': instance.category,
      'type': instance.type,
      'label': instance.label,
      'notification_id': instance.notificationId,
    };

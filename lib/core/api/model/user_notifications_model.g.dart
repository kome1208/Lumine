// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_notifications_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserNotifications _$UserNotificationsFromJson(Map<String, dynamic> json) =>
    UserNotifications(
      list: (json['list'] as List<dynamic>)
          .map((e) => SystemMessage.fromJson(e as Map<String, dynamic>))
          .toList(),
      lastId: json['last_id'] as String,
      isLast: json['is_last'] as bool,
    );

Map<String, dynamic> _$UserNotificationsToJson(UserNotifications instance) =>
    <String, dynamic>{
      'list': instance.list,
      'last_id': instance.lastId,
      'is_last': instance.isLast,
    };

SystemMessage _$SystemMessageFromJson(Map<String, dynamic> json) =>
    SystemMessage(
      notificationId: json['notification_id'] as String,
      type: (json['type'] as num).toInt(),
      title: json['title'] as String,
      contentTitle: json['content_title'] as String,
      contentText: json['content_text'] as String,
      image: json['image'] == null
          ? null
          : MessageImage.fromJson(json['image'] as Map<String, dynamic>),
      isContentDeleted: json['is_content_deleted'] as bool,
      isRead: json['is_read'] as bool,
      createdAt: json['created_at'] as String,
      jump: json['jump'] == null
          ? null
          : MessageJump.fromJson(json['jump'] as Map<String, dynamic>),
      label: json['label'] as String,
    );

Map<String, dynamic> _$SystemMessageToJson(SystemMessage instance) =>
    <String, dynamic>{
      'notification_id': instance.notificationId,
      'type': instance.type,
      'title': instance.title,
      'content_title': instance.contentTitle,
      'content_text': instance.contentText,
      'image': instance.image,
      'is_content_deleted': instance.isContentDeleted,
      'is_read': instance.isRead,
      'created_at': instance.createdAt,
      'jump': instance.jump,
      'label': instance.label,
    };

MessageImage _$MessageImageFromJson(Map<String, dynamic> json) => MessageImage(
      imageUrl: json['image_url'] as String,
      height: (json['height'] as num).toInt(),
      width: (json['width'] as num).toInt(),
      type: json['type'] as String,
    );

Map<String, dynamic> _$MessageImageToJson(MessageImage instance) =>
    <String, dynamic>{
      'image_url': instance.imageUrl,
      'height': instance.height,
      'width': instance.width,
      'type': instance.type,
    };

MessageJump _$MessageJumpFromJson(Map<String, dynamic> json) => MessageJump(
      text: json['text'] as String,
      appPath: json['app_path'] as String,
      webPath: json['web_path'] as String,
    );

Map<String, dynamic> _$MessageJumpToJson(MessageJump instance) =>
    <String, dynamic>{
      'text': instance.text,
      'app_path': instance.appPath,
      'web_path': instance.webPath,
    };

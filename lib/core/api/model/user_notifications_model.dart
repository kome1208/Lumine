import 'package:json_annotation/json_annotation.dart';

part 'user_notifications_model.g.dart';

@JsonSerializable()
class UserNotifications {
  final List<SystemMessage> list;
  @JsonKey(name: 'last_id')
  final String lastId;
  @JsonKey(name: 'is_last')
  final bool isLast;

  UserNotifications({
    required this.list,
    required this.lastId,
    required this.isLast
  });

  factory UserNotifications.fromJson(Map<String, dynamic> json) => _$UserNotificationsFromJson(json);

  Map<String, dynamic> toJson() => _$UserNotificationsToJson(this);
}

@JsonSerializable()
class SystemMessage {
  @JsonKey(name: 'notification_id')
  final String notificationId;
  final int type;
  final String title;
  @JsonKey(name: 'content_title')
  final String contentTitle;
  @JsonKey(name: 'content_text')
  final String contentText;
  final MessageImage? image;
  @JsonKey(name: 'is_content_deleted')
  final bool isContentDeleted;
  @JsonKey(name: 'is_read')
  final bool isRead;
  @JsonKey(name: 'created_at')
  final String createdAt;
  final MessageJump? jump;
  final String label;

  SystemMessage({
    required this.notificationId,
    required this.type,
    required this.title,
    required this.contentTitle,
    required this.contentText,
    required this.image,
    required this.isContentDeleted,
    required this.isRead,
    required this.createdAt,
    required this.jump,
    required this.label
  });

  factory SystemMessage.fromJson(Map<String, dynamic> json) => _$SystemMessageFromJson(json);

  Map<String, dynamic> toJson() => _$SystemMessageToJson(this);
}

@JsonSerializable()
class MessageImage {
  @JsonKey(name: 'image_url')
  final String imageUrl;
  final int height;
  final int width;
  final String type;

  MessageImage({
    required this.imageUrl,
    required this.height,
    required this.width,
    required this.type
  });

  factory MessageImage.fromJson(Map<String, dynamic> json) => _$MessageImageFromJson(json);

  Map<String, dynamic> toJson() => _$MessageImageToJson(this);
}

@JsonSerializable()
class MessageJump {
  final String text;
  @JsonKey(name: 'app_path')
  final String appPath;
  @JsonKey(name: 'web_path')
  final String webPath;

  MessageJump({
    required this.text,
    required this.appPath,
    required this.webPath
  });

  factory MessageJump.fromJson(Map<String, dynamic> json) => _$MessageJumpFromJson(json);

  Map<String, dynamic> toJson() => _$MessageJumpToJson(this);
}
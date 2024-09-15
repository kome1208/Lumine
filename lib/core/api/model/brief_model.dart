import 'package:json_annotation/json_annotation.dart';

part 'brief_model.g.dart';

@JsonSerializable()
class UserBrief {
  final List<Brief> brief;
  @JsonKey(name: 'system_brief')
  final List<Brief> systemBrief;

  UserBrief({
    required this.brief,
    required this.systemBrief
  });

  factory UserBrief.fromJson(Map<String, dynamic> json) => _$UserBriefFromJson(json);

  Map<String, dynamic> toJson() => _$UserBriefToJson(this);
}

@JsonSerializable()
class Brief {
  @JsonKey(name: 'unread_count')
  final String unreadCount;
  final String message;
  @JsonKey(name: 'send_ts')
  final String sendTs;
  final String category;
  final String type;
  final String label;
  @JsonKey(name: 'notification_id')
  final String notificationId;

  Brief({
    required this.unreadCount,
    required this.message,
    required this.sendTs,
    required this.category,
    required this.type,
    required this.label,
    required this.notificationId
  });

  factory Brief.fromJson(Map<String, dynamic> json) => _$BriefFromJson(json);

  Map<String, dynamic> toJson() => _$BriefToJson(this);
}
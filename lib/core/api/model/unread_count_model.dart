import 'package:json_annotation/json_annotation.dart';

part 'unread_count_model.g.dart';

@JsonSerializable()
class UnreadCount {
  final int comment;
  @JsonKey(name: 'hoyolab_news')
  final int? hoyolabNews;
  final int activity;
  final int award;
  final int reply;
  final int creator;
  final int follow;
  final int admin;
  @JsonKey(name: 'system_v2')
  final int systemV2;
  final int system;
  final int total;

  UnreadCount({
    required this.comment,
    required this.hoyolabNews,
    required this.activity,
    required this.award,
    required this.reply,
    required this.creator,
    required this.follow,
    required this.admin,
    required this.systemV2,
    required this.system,
    required this.total,
  });

  factory UnreadCount.fromJson(Map<String, dynamic> json) => _$UnreadCountFromJson(json);

  Map<String, dynamic> toJson() => _$UnreadCountToJson(this);
}
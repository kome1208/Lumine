import 'package:json_annotation/json_annotation.dart';

part 'daily_bonus_model.g.dart';

@JsonSerializable()
class CheckInTaskList {
  final int total;
  final List<CheckInTask> list;

  CheckInTaskList({
    required this.total,
    required this.list,
  });

  factory CheckInTaskList.fromJson(Map<String, dynamic> json) => _$CheckInTaskListFromJson(json);
}

@JsonSerializable()
class CheckInTask {
  final int id;
  final String name;
  final String icon;
  @JsonKey(name: 'jump_url')
  final String jumpUrl;
  final String status;
  final String type;
  final int total;
  final int current;

  CheckInTask({
    required this.id,
    required this.name,
    required this.icon,
    required this.jumpUrl,
    required this.status,
    required this.type,
    required this.total,
    required this.current,
  });

  factory CheckInTask.fromJson(Map<String, dynamic> json) => _$CheckInTaskFromJson(json);
}
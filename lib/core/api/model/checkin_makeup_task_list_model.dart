import 'package:json_annotation/json_annotation.dart';

part 'checkin_makeup_task_list_model.g.dart';

@JsonSerializable()
class CheckinMakeupTaskList {
  final int total;
  final List<CheckinMakeupTask> list;

  CheckinMakeupTaskList({
    required this.total,
    required this.list
  });

  factory CheckinMakeupTaskList.fromJson(Map<String, dynamic> json) => _$CheckinMakeupTaskListFromJson(json);

  Map<String, dynamic> toJson() => _$CheckinMakeupTaskListToJson(this);
}

@JsonSerializable()
class CheckinMakeupTask {
  final int id;
  final String name;
  final String icon;
  @JsonKey(name: 'jump_url')
  final String jumpUrl;
  final String status;
  final String type;
  final int total;
  final int current;

  CheckinMakeupTask({
    required this.id,
    required this.name,
    required this.icon,
    required this.jumpUrl,
    required this.status,
    required this.type,
    required this.total,
    required this.current,
  });

  factory CheckinMakeupTask.fromJson(Map<String, dynamic> json) => _$CheckinMakeupTaskFromJson(json);

  Map<String, dynamic> toJson() => _$CheckinMakeupTaskToJson(this);
}

enum CheckinMakeupTaskStatus {
  ready("TT_Ready"),
  done("TT_Done"),
  award("TT_Award");

  const CheckinMakeupTaskStatus(String name);
}
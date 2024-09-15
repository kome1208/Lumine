import 'package:json_annotation/json_annotation.dart';

part 'daily_award_list_model.g.dart';

@JsonSerializable()
class DailyAwardList {
  final int month;
  final List<DailyAward> awards;
  final bool resign;
  final String now;

  DailyAwardList({
    required this.month,
    required this.awards,
    required this.resign,
    required this.now,
  });

  factory DailyAwardList.fromJson(Map<String, dynamic> json) => _$DailyAwardListFromJson(json);

  Map<String, dynamic> toJson() => _$DailyAwardListToJson(this);
}

@JsonSerializable()
class DailyAward {
  final String icon;
  final String name;
  final int cnt;

  DailyAward({
    required this.icon,
    required this.name,
    required this.cnt,
  });

  factory DailyAward.fromJson(Map<String, dynamic> json) => _$DailyAwardFromJson(json);

  Map<String, dynamic> toJson() => _$DailyAwardToJson(this);
}

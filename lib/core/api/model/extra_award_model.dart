

import 'package:json_annotation/json_annotation.dart';

part 'extra_award_model.g.dart';

@JsonSerializable()
class ExtraAwardList {
  @JsonKey(name: 'has_short_act')
  final bool hasShortAct;
  final List<ExtraAward> awards;
  @JsonKey(name: 'start_timestamp')
  final String startTimestamp;
  @JsonKey(name: 'end_timestamp')
  final String endTimestamp;
  @JsonKey(name: 'total_cnt')
  final int totalCnt;
  final bool login;

  ExtraAwardList({
    required this.hasShortAct,
    required this.awards,
    required this.startTimestamp,
    required this.endTimestamp,
    required this.totalCnt,
    required this.login,
  });

  factory ExtraAwardList.fromJson(Map<String, dynamic> json) => _$ExtraAwardListFromJson(json);

  Map<String, dynamic> toJson() => _$ExtraAwardListToJson(this);
}

@JsonSerializable()
class ExtraAward {
  final int id;
  final String icon;
  final String name;
  final int cnt;
  @JsonKey(name: 'sign_day')
  final int signDay;
  final bool highlight;

  ExtraAward({
    required this.id,
    required this.icon,
    required this.name,
    required this.cnt,
    required this.signDay,
    required this.highlight
  });

  factory ExtraAward.fromJson(Map<String, dynamic> json) => _$ExtraAwardFromJson(json);

  Map<String, dynamic> toJson() => _$ExtraAwardToJson(this);
}
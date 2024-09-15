import 'package:json_annotation/json_annotation.dart';

part 'daily_sign_info_model.g.dart';

@JsonSerializable()
class DailySignInfo {
  @JsonKey(name: 'total_sign_day')
  final int totalSignDay;
  final String today;
  @JsonKey(name: 'is_sign')
  final bool isSign;
  @JsonKey(name: 'first_bind')
  final bool firstBind;
  @JsonKey(name: 'is_sub')
  final bool isSub;
  final String region;
  @JsonKey(name: 'month_last_day')
  final bool monthLastDay;

  DailySignInfo({
    required this.totalSignDay,
    required this.today,
    required this.isSign,
    required this.firstBind,
    required this.isSub,
    required this.region,
    required this.monthLastDay,
  });

  factory DailySignInfo.fromJson(Map<String, dynamic> json) => _$DailySignInfoFromJson(json);

  Map<String, dynamic> toJson() => _$DailySignInfoToJson(this);
}
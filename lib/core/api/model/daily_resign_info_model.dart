import 'package:json_annotation/json_annotation.dart';

part 'daily_resign_info_model.g.dart';

@JsonSerializable()
class DailyResignInfo {
  @JsonKey(name: 'resign_cnt_daily')
  final int resignCntDaily;
  @JsonKey(name: 'resign_cnt_monthly')
  final int resignCntMonthly;
  @JsonKey(name: 'resign_limit_daily')
  final int resignLimitDaily;
  @JsonKey(name: 'resign_limit_monthly')
  final int resignLimitMonthly;
  @JsonKey(name: 'sign_cnt_missed')
  final int signCntMissed;
  @JsonKey(name: 'quality_cnt')
  final int qualityCnt;
  final bool signed;
  @JsonKey(name: 'sign_cnt')
  final int signCnt;
  final int cost;
  @JsonKey(name: 'month_quality_cnt')
  final int monthQualityCnt;

  DailyResignInfo({
    required this.resignCntDaily,
    required this.resignCntMonthly,
    required this.resignLimitDaily,
    required this.resignLimitMonthly,
    required this.signCntMissed,
    required this.qualityCnt,
    required this.signed,
    required this.signCnt,
    required this.cost,
    required this.monthQualityCnt,
  });

  factory DailyResignInfo.fromJson(Map<String, dynamic> json) => _$DailyResignInfoFromJson(json);

  Map<String, dynamic> toJson() => _$DailyResignInfoToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_resign_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DailyResignInfo _$DailyResignInfoFromJson(Map<String, dynamic> json) =>
    DailyResignInfo(
      resignCntDaily: (json['resign_cnt_daily'] as num).toInt(),
      resignCntMonthly: (json['resign_cnt_monthly'] as num).toInt(),
      resignLimitDaily: (json['resign_limit_daily'] as num).toInt(),
      resignLimitMonthly: (json['resign_limit_monthly'] as num).toInt(),
      signCntMissed: (json['sign_cnt_missed'] as num).toInt(),
      qualityCnt: (json['quality_cnt'] as num).toInt(),
      signed: json['signed'] as bool,
      signCnt: (json['sign_cnt'] as num).toInt(),
      cost: (json['cost'] as num).toInt(),
      monthQualityCnt: (json['month_quality_cnt'] as num).toInt(),
    );

Map<String, dynamic> _$DailyResignInfoToJson(DailyResignInfo instance) =>
    <String, dynamic>{
      'resign_cnt_daily': instance.resignCntDaily,
      'resign_cnt_monthly': instance.resignCntMonthly,
      'resign_limit_daily': instance.resignLimitDaily,
      'resign_limit_monthly': instance.resignLimitMonthly,
      'sign_cnt_missed': instance.signCntMissed,
      'quality_cnt': instance.qualityCnt,
      'signed': instance.signed,
      'sign_cnt': instance.signCnt,
      'cost': instance.cost,
      'month_quality_cnt': instance.monthQualityCnt,
    };

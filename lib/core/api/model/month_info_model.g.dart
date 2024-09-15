// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'month_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MonthInfo _$MonthInfoFromJson(Map<String, dynamic> json) => MonthInfo(
      uid: (json['uid'] as num).toInt(),
      region: json['region'] as String,
      nickname: json['nickname'] as String,
      optionalMonth: (json['optional_month'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      month: (json['month'] as num).toInt(),
      dataMonth: (json['data_month'] as num).toInt(),
      monthData: MonthData.fromJson(json['month_data'] as Map<String, dynamic>),
      dayData: DayData.fromJson(json['day_data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MonthInfoToJson(MonthInfo instance) => <String, dynamic>{
      'uid': instance.uid,
      'region': instance.region,
      'nickname': instance.nickname,
      'optional_month': instance.optionalMonth,
      'month': instance.month,
      'data_month': instance.dataMonth,
      'month_data': instance.monthData,
      'day_data': instance.dayData,
    };

MonthData _$MonthDataFromJson(Map<String, dynamic> json) => MonthData(
      currentPrimogems: (json['current_primogems'] as num).toInt(),
      currentMora: (json['current_mora'] as num).toInt(),
      lastPrimogems: (json['last_primogems'] as num).toInt(),
      lastMora: (json['last_mora'] as num).toInt(),
      primogemRate: (json['primogem_rate'] as num).toInt(),
      moraRate: (json['mora_rate'] as num).toInt(),
      groupBy: (json['group_by'] as List<dynamic>)
          .map((e) => MonthDataGroup.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MonthDataToJson(MonthData instance) => <String, dynamic>{
      'current_primogems': instance.currentPrimogems,
      'current_mora': instance.currentMora,
      'last_primogems': instance.lastPrimogems,
      'last_mora': instance.lastMora,
      'primogem_rate': instance.primogemRate,
      'mora_rate': instance.moraRate,
      'group_by': instance.groupBy,
    };

DayData _$DayDataFromJson(Map<String, dynamic> json) => DayData(
      currentPrimogems: (json['current_primogems'] as num).toInt(),
      currentMora: (json['current_mora'] as num).toInt(),
    );

Map<String, dynamic> _$DayDataToJson(DayData instance) => <String, dynamic>{
      'current_primogems': instance.currentPrimogems,
      'current_mora': instance.currentMora,
    };

MonthDataGroup _$MonthDataGroupFromJson(Map<String, dynamic> json) =>
    MonthDataGroup(
      actionId: (json['action_id'] as num).toInt(),
      action: json['action'] as String,
      num: (json['num'] as num).toInt(),
      percent: (json['percent'] as num).toInt(),
    );

Map<String, dynamic> _$MonthDataGroupToJson(MonthDataGroup instance) =>
    <String, dynamic>{
      'action_id': instance.actionId,
      'action': instance.action,
      'num': instance.num,
      'percent': instance.percent,
    };

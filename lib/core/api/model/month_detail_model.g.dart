// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'month_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MonthDetailImpl _$$MonthDetailImplFromJson(Map<String, dynamic> json) =>
    _$MonthDetailImpl(
      uid: (json['uid'] as num).toInt(),
      region: json['region'] as String,
      nickname: json['nickname'] as String,
      dataMonth: (json['data_month'] as num).toInt(),
      currentPage: (json['current_page'] as num).toInt(),
      list: (json['list'] as List<dynamic>)
          .map((e) => ActionInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      optionalMonth: (json['optional_month'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
    );

Map<String, dynamic> _$$MonthDetailImplToJson(_$MonthDetailImpl instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'region': instance.region,
      'nickname': instance.nickname,
      'data_month': instance.dataMonth,
      'current_page': instance.currentPage,
      'list': instance.list,
      'optional_month': instance.optionalMonth,
    };

_$ActionInfoImpl _$$ActionInfoImplFromJson(Map<String, dynamic> json) =>
    _$ActionInfoImpl(
      actionId: (json['action_id'] as num).toInt(),
      action: json['action'] as String,
      time: json['time'] as String,
      num: (json['num'] as num).toInt(),
    );

Map<String, dynamic> _$$ActionInfoImplToJson(_$ActionInfoImpl instance) =>
    <String, dynamic>{
      'action_id': instance.actionId,
      'action': instance.action,
      'time': instance.time,
      'num': instance.num,
    };

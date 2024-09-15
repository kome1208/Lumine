// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_sign_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DailySignInfo _$DailySignInfoFromJson(Map<String, dynamic> json) =>
    DailySignInfo(
      totalSignDay: (json['total_sign_day'] as num).toInt(),
      today: json['today'] as String,
      isSign: json['is_sign'] as bool,
      firstBind: json['first_bind'] as bool,
      isSub: json['is_sub'] as bool,
      region: json['region'] as String,
      monthLastDay: json['month_last_day'] as bool,
    );

Map<String, dynamic> _$DailySignInfoToJson(DailySignInfo instance) =>
    <String, dynamic>{
      'total_sign_day': instance.totalSignDay,
      'today': instance.today,
      'is_sign': instance.isSign,
      'first_bind': instance.firstBind,
      'is_sub': instance.isSub,
      'region': instance.region,
      'month_last_day': instance.monthLastDay,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_award_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DailyAwardList _$DailyAwardListFromJson(Map<String, dynamic> json) =>
    DailyAwardList(
      month: (json['month'] as num).toInt(),
      awards: (json['awards'] as List<dynamic>)
          .map((e) => DailyAward.fromJson(e as Map<String, dynamic>))
          .toList(),
      resign: json['resign'] as bool,
      now: json['now'] as String,
    );

Map<String, dynamic> _$DailyAwardListToJson(DailyAwardList instance) =>
    <String, dynamic>{
      'month': instance.month,
      'awards': instance.awards,
      'resign': instance.resign,
      'now': instance.now,
    };

DailyAward _$DailyAwardFromJson(Map<String, dynamic> json) => DailyAward(
      icon: json['icon'] as String,
      name: json['name'] as String,
      cnt: (json['cnt'] as num).toInt(),
    );

Map<String, dynamic> _$DailyAwardToJson(DailyAward instance) =>
    <String, dynamic>{
      'icon': instance.icon,
      'name': instance.name,
      'cnt': instance.cnt,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'extra_award_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExtraAwardList _$ExtraAwardListFromJson(Map<String, dynamic> json) =>
    ExtraAwardList(
      hasShortAct: json['has_short_act'] as bool,
      awards: (json['awards'] as List<dynamic>)
          .map((e) => ExtraAward.fromJson(e as Map<String, dynamic>))
          .toList(),
      startTimestamp: json['start_timestamp'] as String,
      endTimestamp: json['end_timestamp'] as String,
      totalCnt: (json['total_cnt'] as num).toInt(),
      login: json['login'] as bool,
    );

Map<String, dynamic> _$ExtraAwardListToJson(ExtraAwardList instance) =>
    <String, dynamic>{
      'has_short_act': instance.hasShortAct,
      'awards': instance.awards,
      'start_timestamp': instance.startTimestamp,
      'end_timestamp': instance.endTimestamp,
      'total_cnt': instance.totalCnt,
      'login': instance.login,
    };

ExtraAward _$ExtraAwardFromJson(Map<String, dynamic> json) => ExtraAward(
      id: (json['id'] as num).toInt(),
      icon: json['icon'] as String,
      name: json['name'] as String,
      cnt: (json['cnt'] as num).toInt(),
      signDay: (json['sign_day'] as num).toInt(),
      highlight: json['highlight'] as bool,
    );

Map<String, dynamic> _$ExtraAwardToJson(ExtraAward instance) =>
    <String, dynamic>{
      'id': instance.id,
      'icon': instance.icon,
      'name': instance.name,
      'cnt': instance.cnt,
      'sign_day': instance.signDay,
      'highlight': instance.highlight,
    };

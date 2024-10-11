// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'achievement_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AchievementDataImpl _$$AchievementDataImplFromJson(
        Map<String, dynamic> json) =>
    _$AchievementDataImpl(
      list: (json['list'] as List<dynamic>)
          .map((e) => Achievement.fromJson(e as Map<String, dynamic>))
          .toList(),
      achievementNum: (json['achievement_num'] as num).toInt(),
    );

Map<String, dynamic> _$$AchievementDataImplToJson(
        _$AchievementDataImpl instance) =>
    <String, dynamic>{
      'list': instance.list,
      'achievement_num': instance.achievementNum,
    };

_$AchievementImpl _$$AchievementImplFromJson(Map<String, dynamic> json) =>
    _$AchievementImpl(
      name: json['name'] as String,
      id: json['id'] as String,
      percentage: (json['percentage'] as num).toInt(),
      finishNum: (json['finish_num'] as num).toInt(),
      showPercent: json['show_percent'] as bool,
      icon: json['icon'] as String,
    );

Map<String, dynamic> _$$AchievementImplToJson(_$AchievementImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'percentage': instance.percentage,
      'finish_num': instance.finishNum,
      'show_percent': instance.showPercent,
      'icon': instance.icon,
    };

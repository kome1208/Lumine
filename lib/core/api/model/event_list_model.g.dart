// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EventListImpl _$$EventListImplFromJson(Map<String, dynamic> json) =>
    _$EventListImpl(
      list: (json['list'] as List<dynamic>)
          .map((e) => GameEvent.fromJson(e as Map<String, dynamic>))
          .toList(),
      nextOffset: json['next_offset'] as String,
      isLast: json['is_last'] as bool,
    );

Map<String, dynamic> _$$EventListImplToJson(_$EventListImpl instance) =>
    <String, dynamic>{
      'list': instance.list,
      'next_offset': instance.nextOffset,
      'is_last': instance.isLast,
    };

_$GameEventImpl _$$GameEventImplFromJson(Map<String, dynamic> json) =>
    _$GameEventImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      start: json['start'] as String,
      end: json['end'] as String,
      bannerUrl: json['banner_url'] as String,
      status: (json['status'] as num).toInt(),
      desc: json['desc'] as String,
      gameId: (json['game_id'] as num).toInt(),
      type: (json['type'] as num).toInt(),
      appPath: json['app_path'] as String,
      statusIng: (json['status_ing'] as num).toInt(),
      webPath: json['web_path'] as String,
      statusInt: (json['status_int'] as num).toInt(),
      createAt: json['create_at'] as String,
    );

Map<String, dynamic> _$$GameEventImplToJson(_$GameEventImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'start': instance.start,
      'end': instance.end,
      'banner_url': instance.bannerUrl,
      'status': instance.status,
      'desc': instance.desc,
      'game_id': instance.gameId,
      'type': instance.type,
      'app_path': instance.appPath,
      'status_ing': instance.statusIng,
      'web_path': instance.webPath,
      'status_int': instance.statusInt,
      'create_at': instance.createAt,
    };

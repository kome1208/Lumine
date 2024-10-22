// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reward_history_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RewardHistoryImpl _$$RewardHistoryImplFromJson(Map<String, dynamic> json) =>
    _$RewardHistoryImpl(
      list: (json['list'] as List<dynamic>)
          .map((e) => Reward.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: (json['total'] as num).toInt(),
    );

Map<String, dynamic> _$$RewardHistoryImplToJson(_$RewardHistoryImpl instance) =>
    <String, dynamic>{
      'list': instance.list,
      'total': instance.total,
    };

_$RewardImpl _$$RewardImplFromJson(Map<String, dynamic> json) => _$RewardImpl(
      id: (json['id'] as num).toInt(),
      status: (json['status'] as num).toInt(),
      type: (json['type'] as num).toInt(),
      game: json['game'] as String,
      img: json['img'] as String,
      name: json['name'] as String,
      createdAt: json['created_at'] as String,
      desc: json['desc'] as String,
      cnt: (json['cnt'] as num).toInt(),
    );

Map<String, dynamic> _$$RewardImplToJson(_$RewardImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
      'type': instance.type,
      'game': instance.game,
      'img': instance.img,
      'name': instance.name,
      'created_at': instance.createdAt,
      'desc': instance.desc,
      'cnt': instance.cnt,
    };

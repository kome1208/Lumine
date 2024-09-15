// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unread_count_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UnreadCount _$UnreadCountFromJson(Map<String, dynamic> json) => UnreadCount(
      comment: (json['comment'] as num).toInt(),
      hoyolabNews: (json['hoyolab_news'] as num?)?.toInt(),
      activity: (json['activity'] as num).toInt(),
      award: (json['award'] as num).toInt(),
      reply: (json['reply'] as num).toInt(),
      creator: (json['creator'] as num).toInt(),
      follow: (json['follow'] as num).toInt(),
      admin: (json['admin'] as num).toInt(),
      systemV2: (json['system_v2'] as num).toInt(),
      system: (json['system'] as num).toInt(),
      total: (json['total'] as num).toInt(),
    );

Map<String, dynamic> _$UnreadCountToJson(UnreadCount instance) =>
    <String, dynamic>{
      'comment': instance.comment,
      'hoyolab_news': instance.hoyolabNews,
      'activity': instance.activity,
      'award': instance.award,
      'reply': instance.reply,
      'creator': instance.creator,
      'follow': instance.follow,
      'admin': instance.admin,
      'system_v2': instance.systemV2,
      'system': instance.system,
      'total': instance.total,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NewsListImpl _$$NewsListImplFromJson(Map<String, dynamic> json) =>
    _$NewsListImpl(
      list: (json['list'] as List<dynamic>)
          .map((e) => News.fromJson(e as Map<String, dynamic>))
          .toList(),
      lastId: (json['last_id'] as num).toInt(),
      isLast: json['is_last'] as bool,
    );

Map<String, dynamic> _$$NewsListImplToJson(_$NewsListImpl instance) =>
    <String, dynamic>{
      'list': instance.list,
      'last_id': instance.lastId,
      'is_last': instance.isLast,
    };

_$NewsImpl _$$NewsImplFromJson(Map<String, dynamic> json) => _$NewsImpl(
      post: Post.fromJson(json['post'] as Map<String, dynamic>),
      imageList: (json['image_list'] as List<dynamic>)
          .map((e) => PostImage.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$NewsImplToJson(_$NewsImpl instance) =>
    <String, dynamic>{
      'post': instance.post,
      'image_list': instance.imageList,
    };

_$PostImpl _$$PostImplFromJson(Map<String, dynamic> json) => _$PostImpl(
      gameId: (json['game_id'] as num).toInt(),
      postId: json['post_id'] as String,
      forumId: (json['f_forum_id'] as num).toInt(),
      uid: json['uid'] as String,
      subject: json['subject'] as String,
      content: json['content'] as String,
      cover: json['cover'] as String,
      viewType: (json['view_type'] as num).toInt(),
      createdAt: (json['created_at'] as num).toInt(),
      topicIds: (json['topic_ids'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      viewStatus: (json['view_status'] as num).toInt(),
      maxFloor: (json['max_floor'] as num).toInt(),
      isOriginal: (json['is_original'] as num).toInt(),
      republishAuthorization: (json['republish_authorization'] as num).toInt(),
      replyTime: json['reply_time'] as String,
      isDeleted: (json['is_deleted'] as num).toInt(),
      isInteractive: json['is_interactive'] as bool,
      structuredContent: json['structured_content'] as String,
      lang: json['lang'] as String,
      officialType: (json['official_type'] as num).toInt(),
      video: json['video'] as String,
      contributionId: json['contribution_id'] as String,
      eventStartDate: json['event_start_date'] as String,
      eventEndDate: json['event_end_date'] as String,
      classificationId: json['classification_id'] as String,
      isAudit: json['is_audit'] as bool,
      isMultiLanguage: json['is_multi_language'] as bool,
      originLang: json['origin_lang'] as String,
      subType: (json['sub_type'] as num).toInt(),
      reprintSource: json['reprint_source'] as String,
      canEdit: json['can_edit'] as bool,
      lastModifyTime: (json['last_modify_time'] as num).toInt(),
      visibleLevel: (json['visible_level'] as num).toInt(),
      hasCover: json['has_cover'] as bool,
      suid: json['suid'] as String,
      desc: json['desc'] as String,
    );

Map<String, dynamic> _$$PostImplToJson(_$PostImpl instance) =>
    <String, dynamic>{
      'game_id': instance.gameId,
      'post_id': instance.postId,
      'f_forum_id': instance.forumId,
      'uid': instance.uid,
      'subject': instance.subject,
      'content': instance.content,
      'cover': instance.cover,
      'view_type': instance.viewType,
      'created_at': instance.createdAt,
      'topic_ids': instance.topicIds,
      'view_status': instance.viewStatus,
      'max_floor': instance.maxFloor,
      'is_original': instance.isOriginal,
      'republish_authorization': instance.republishAuthorization,
      'reply_time': instance.replyTime,
      'is_deleted': instance.isDeleted,
      'is_interactive': instance.isInteractive,
      'structured_content': instance.structuredContent,
      'lang': instance.lang,
      'official_type': instance.officialType,
      'video': instance.video,
      'contribution_id': instance.contributionId,
      'event_start_date': instance.eventStartDate,
      'event_end_date': instance.eventEndDate,
      'classification_id': instance.classificationId,
      'is_audit': instance.isAudit,
      'is_multi_language': instance.isMultiLanguage,
      'origin_lang': instance.originLang,
      'sub_type': instance.subType,
      'reprint_source': instance.reprintSource,
      'can_edit': instance.canEdit,
      'last_modify_time': instance.lastModifyTime,
      'visible_level': instance.visibleLevel,
      'has_cover': instance.hasCover,
      'suid': instance.suid,
      'desc': instance.desc,
    };

_$PostImageImpl _$$PostImageImplFromJson(Map<String, dynamic> json) =>
    _$PostImageImpl(
      url: json['url'] as String,
      height: (json['height'] as num).toInt(),
      width: (json['width'] as num).toInt(),
      format: json['format'] as String,
      size: json['size'] as String,
      spoiler: json['spoiler'] as bool,
    );

Map<String, dynamic> _$$PostImageImplToJson(_$PostImageImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'height': instance.height,
      'width': instance.width,
      'format': instance.format,
      'size': instance.size,
      'spoiler': instance.spoiler,
    };

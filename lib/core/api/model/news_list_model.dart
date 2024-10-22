import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_list_model.g.dart';
part 'news_list_model.freezed.dart';

@freezed
class NewsList with _$NewsList {
  const factory NewsList({
    required List<News> list,
    @JsonKey(name: 'last_id') required int lastId,
    @JsonKey(name: 'is_last') required bool isLast
  }) = _NewsList;

  factory NewsList.fromJson(Map<String, dynamic> json) => _$NewsListFromJson(json);
}

@freezed
class News with _$News {
  const factory News({
    required Post post,
    @JsonKey(name: 'image_list') required List<PostImage> imageList
  }) = _News;

  factory News.fromJson(Map<String, dynamic> json) => _$NewsFromJson(json);
}

@freezed
class Post with _$Post {
  const factory Post({
    @JsonKey(name: 'game_id') required int gameId,
    @JsonKey(name: 'post_id') required String postId,
    @JsonKey(name: 'f_forum_id') required int forumId,
    required String uid,
    required String subject,
    required String content,
    required String cover,
    @JsonKey(name: 'view_type') required int viewType,
    @JsonKey(name: 'created_at') required int createdAt,
    @JsonKey(name: 'topic_ids') required List<int> topicIds,
    @JsonKey(name: 'view_status') required int viewStatus,
    @JsonKey(name: 'max_floor') required int maxFloor,
    @JsonKey(name: 'is_original') required int isOriginal,
    @JsonKey(name: 'republish_authorization') required int republishAuthorization,
    @JsonKey(name: 'reply_time') required String replyTime,
    @JsonKey(name: 'is_deleted') required int isDeleted,
    @JsonKey(name: 'is_interactive') required bool isInteractive,
    @JsonKey(name: 'structured_content') required String structuredContent,
    required String lang,
    @JsonKey(name: 'official_type') required int officialType,
    required String video,
    @JsonKey(name: 'contribution_id') required String contributionId,
    @JsonKey(name: 'event_start_date') required String eventStartDate,
    @JsonKey(name: 'event_end_date') required String eventEndDate,
    @JsonKey(name: 'classification_id') required String classificationId,
    @JsonKey(name: 'is_audit') required bool isAudit,
    @JsonKey(name: 'is_multi_language') required bool isMultiLanguage,
    @JsonKey(name: 'origin_lang') required String originLang,
    @JsonKey(name: 'sub_type') required int subType,
    @JsonKey(name: 'reprint_source') required String reprintSource,
    @JsonKey(name: 'can_edit') required bool canEdit,
    @JsonKey(name: 'last_modify_time') required int lastModifyTime,
    @JsonKey(name: 'visible_level') required int visibleLevel,
    @JsonKey(name: 'has_cover') required bool hasCover,
    required String suid,
    required String desc,
  }) = _Post;

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);
}

@freezed
class PostImage with _$PostImage {
  const factory PostImage({
    required String url,
    required int height,
    required int width,
    required String format,
    required String size,
    required bool spoiler,
  }) = _PostImage;

  factory PostImage.fromJson(Map<String, dynamic> json) => _$PostImageFromJson(json);
}
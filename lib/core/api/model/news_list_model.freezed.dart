// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NewsList _$NewsListFromJson(Map<String, dynamic> json) {
  return _NewsList.fromJson(json);
}

/// @nodoc
mixin _$NewsList {
  List<News> get list => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_id')
  int get lastId => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_last')
  bool get isLast => throw _privateConstructorUsedError;

  /// Serializes this NewsList to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NewsList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NewsListCopyWith<NewsList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsListCopyWith<$Res> {
  factory $NewsListCopyWith(NewsList value, $Res Function(NewsList) then) =
      _$NewsListCopyWithImpl<$Res, NewsList>;
  @useResult
  $Res call(
      {List<News> list,
      @JsonKey(name: 'last_id') int lastId,
      @JsonKey(name: 'is_last') bool isLast});
}

/// @nodoc
class _$NewsListCopyWithImpl<$Res, $Val extends NewsList>
    implements $NewsListCopyWith<$Res> {
  _$NewsListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NewsList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
    Object? lastId = null,
    Object? isLast = null,
  }) {
    return _then(_value.copyWith(
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<News>,
      lastId: null == lastId
          ? _value.lastId
          : lastId // ignore: cast_nullable_to_non_nullable
              as int,
      isLast: null == isLast
          ? _value.isLast
          : isLast // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewsListImplCopyWith<$Res>
    implements $NewsListCopyWith<$Res> {
  factory _$$NewsListImplCopyWith(
          _$NewsListImpl value, $Res Function(_$NewsListImpl) then) =
      __$$NewsListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<News> list,
      @JsonKey(name: 'last_id') int lastId,
      @JsonKey(name: 'is_last') bool isLast});
}

/// @nodoc
class __$$NewsListImplCopyWithImpl<$Res>
    extends _$NewsListCopyWithImpl<$Res, _$NewsListImpl>
    implements _$$NewsListImplCopyWith<$Res> {
  __$$NewsListImplCopyWithImpl(
      _$NewsListImpl _value, $Res Function(_$NewsListImpl) _then)
      : super(_value, _then);

  /// Create a copy of NewsList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
    Object? lastId = null,
    Object? isLast = null,
  }) {
    return _then(_$NewsListImpl(
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<News>,
      lastId: null == lastId
          ? _value.lastId
          : lastId // ignore: cast_nullable_to_non_nullable
              as int,
      isLast: null == isLast
          ? _value.isLast
          : isLast // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NewsListImpl implements _NewsList {
  const _$NewsListImpl(
      {required final List<News> list,
      @JsonKey(name: 'last_id') required this.lastId,
      @JsonKey(name: 'is_last') required this.isLast})
      : _list = list;

  factory _$NewsListImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewsListImplFromJson(json);

  final List<News> _list;
  @override
  List<News> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  @JsonKey(name: 'last_id')
  final int lastId;
  @override
  @JsonKey(name: 'is_last')
  final bool isLast;

  @override
  String toString() {
    return 'NewsList(list: $list, lastId: $lastId, isLast: $isLast)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsListImpl &&
            const DeepCollectionEquality().equals(other._list, _list) &&
            (identical(other.lastId, lastId) || other.lastId == lastId) &&
            (identical(other.isLast, isLast) || other.isLast == isLast));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_list), lastId, isLast);

  /// Create a copy of NewsList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsListImplCopyWith<_$NewsListImpl> get copyWith =>
      __$$NewsListImplCopyWithImpl<_$NewsListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewsListImplToJson(
      this,
    );
  }
}

abstract class _NewsList implements NewsList {
  const factory _NewsList(
      {required final List<News> list,
      @JsonKey(name: 'last_id') required final int lastId,
      @JsonKey(name: 'is_last') required final bool isLast}) = _$NewsListImpl;

  factory _NewsList.fromJson(Map<String, dynamic> json) =
      _$NewsListImpl.fromJson;

  @override
  List<News> get list;
  @override
  @JsonKey(name: 'last_id')
  int get lastId;
  @override
  @JsonKey(name: 'is_last')
  bool get isLast;

  /// Create a copy of NewsList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NewsListImplCopyWith<_$NewsListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

News _$NewsFromJson(Map<String, dynamic> json) {
  return _News.fromJson(json);
}

/// @nodoc
mixin _$News {
  Post get post => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_list')
  List<PostImage> get imageList => throw _privateConstructorUsedError;

  /// Serializes this News to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of News
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NewsCopyWith<News> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsCopyWith<$Res> {
  factory $NewsCopyWith(News value, $Res Function(News) then) =
      _$NewsCopyWithImpl<$Res, News>;
  @useResult
  $Res call(
      {Post post, @JsonKey(name: 'image_list') List<PostImage> imageList});

  $PostCopyWith<$Res> get post;
}

/// @nodoc
class _$NewsCopyWithImpl<$Res, $Val extends News>
    implements $NewsCopyWith<$Res> {
  _$NewsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of News
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? post = null,
    Object? imageList = null,
  }) {
    return _then(_value.copyWith(
      post: null == post
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as Post,
      imageList: null == imageList
          ? _value.imageList
          : imageList // ignore: cast_nullable_to_non_nullable
              as List<PostImage>,
    ) as $Val);
  }

  /// Create a copy of News
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PostCopyWith<$Res> get post {
    return $PostCopyWith<$Res>(_value.post, (value) {
      return _then(_value.copyWith(post: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NewsImplCopyWith<$Res> implements $NewsCopyWith<$Res> {
  factory _$$NewsImplCopyWith(
          _$NewsImpl value, $Res Function(_$NewsImpl) then) =
      __$$NewsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Post post, @JsonKey(name: 'image_list') List<PostImage> imageList});

  @override
  $PostCopyWith<$Res> get post;
}

/// @nodoc
class __$$NewsImplCopyWithImpl<$Res>
    extends _$NewsCopyWithImpl<$Res, _$NewsImpl>
    implements _$$NewsImplCopyWith<$Res> {
  __$$NewsImplCopyWithImpl(_$NewsImpl _value, $Res Function(_$NewsImpl) _then)
      : super(_value, _then);

  /// Create a copy of News
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? post = null,
    Object? imageList = null,
  }) {
    return _then(_$NewsImpl(
      post: null == post
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as Post,
      imageList: null == imageList
          ? _value._imageList
          : imageList // ignore: cast_nullable_to_non_nullable
              as List<PostImage>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NewsImpl implements _News {
  const _$NewsImpl(
      {required this.post,
      @JsonKey(name: 'image_list') required final List<PostImage> imageList})
      : _imageList = imageList;

  factory _$NewsImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewsImplFromJson(json);

  @override
  final Post post;
  final List<PostImage> _imageList;
  @override
  @JsonKey(name: 'image_list')
  List<PostImage> get imageList {
    if (_imageList is EqualUnmodifiableListView) return _imageList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_imageList);
  }

  @override
  String toString() {
    return 'News(post: $post, imageList: $imageList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsImpl &&
            (identical(other.post, post) || other.post == post) &&
            const DeepCollectionEquality()
                .equals(other._imageList, _imageList));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, post, const DeepCollectionEquality().hash(_imageList));

  /// Create a copy of News
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsImplCopyWith<_$NewsImpl> get copyWith =>
      __$$NewsImplCopyWithImpl<_$NewsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewsImplToJson(
      this,
    );
  }
}

abstract class _News implements News {
  const factory _News(
      {required final Post post,
      @JsonKey(name: 'image_list')
      required final List<PostImage> imageList}) = _$NewsImpl;

  factory _News.fromJson(Map<String, dynamic> json) = _$NewsImpl.fromJson;

  @override
  Post get post;
  @override
  @JsonKey(name: 'image_list')
  List<PostImage> get imageList;

  /// Create a copy of News
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NewsImplCopyWith<_$NewsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Post _$PostFromJson(Map<String, dynamic> json) {
  return _Post.fromJson(json);
}

/// @nodoc
mixin _$Post {
  @JsonKey(name: 'game_id')
  int get gameId => throw _privateConstructorUsedError;
  @JsonKey(name: 'post_id')
  String get postId => throw _privateConstructorUsedError;
  @JsonKey(name: 'f_forum_id')
  int get forumId => throw _privateConstructorUsedError;
  String get uid => throw _privateConstructorUsedError;
  String get subject => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String get cover => throw _privateConstructorUsedError;
  @JsonKey(name: 'view_type')
  int get viewType => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  int get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'topic_ids')
  List<int> get topicIds => throw _privateConstructorUsedError;
  @JsonKey(name: 'view_status')
  int get viewStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'max_floor')
  int get maxFloor => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_original')
  int get isOriginal => throw _privateConstructorUsedError;
  @JsonKey(name: 'republish_authorization')
  int get republishAuthorization => throw _privateConstructorUsedError;
  @JsonKey(name: 'reply_time')
  String get replyTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_deleted')
  int get isDeleted => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_interactive')
  bool get isInteractive => throw _privateConstructorUsedError;
  @JsonKey(name: 'structured_content')
  String get structuredContent => throw _privateConstructorUsedError;
  String get lang => throw _privateConstructorUsedError;
  @JsonKey(name: 'official_type')
  int get officialType => throw _privateConstructorUsedError;
  String get video => throw _privateConstructorUsedError;
  @JsonKey(name: 'contribution_id')
  String get contributionId => throw _privateConstructorUsedError;
  @JsonKey(name: 'event_start_date')
  String get eventStartDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'event_end_date')
  String get eventEndDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'classification_id')
  String get classificationId => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_audit')
  bool get isAudit => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_multi_language')
  bool get isMultiLanguage => throw _privateConstructorUsedError;
  @JsonKey(name: 'origin_lang')
  String get originLang => throw _privateConstructorUsedError;
  @JsonKey(name: 'sub_type')
  int get subType => throw _privateConstructorUsedError;
  @JsonKey(name: 'reprint_source')
  String get reprintSource => throw _privateConstructorUsedError;
  @JsonKey(name: 'can_edit')
  bool get canEdit => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_modify_time')
  int get lastModifyTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'visible_level')
  int get visibleLevel => throw _privateConstructorUsedError;
  @JsonKey(name: 'has_cover')
  bool get hasCover => throw _privateConstructorUsedError;
  String get suid => throw _privateConstructorUsedError;
  String get desc => throw _privateConstructorUsedError;

  /// Serializes this Post to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Post
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostCopyWith<Post> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostCopyWith<$Res> {
  factory $PostCopyWith(Post value, $Res Function(Post) then) =
      _$PostCopyWithImpl<$Res, Post>;
  @useResult
  $Res call(
      {@JsonKey(name: 'game_id') int gameId,
      @JsonKey(name: 'post_id') String postId,
      @JsonKey(name: 'f_forum_id') int forumId,
      String uid,
      String subject,
      String content,
      String cover,
      @JsonKey(name: 'view_type') int viewType,
      @JsonKey(name: 'created_at') int createdAt,
      @JsonKey(name: 'topic_ids') List<int> topicIds,
      @JsonKey(name: 'view_status') int viewStatus,
      @JsonKey(name: 'max_floor') int maxFloor,
      @JsonKey(name: 'is_original') int isOriginal,
      @JsonKey(name: 'republish_authorization') int republishAuthorization,
      @JsonKey(name: 'reply_time') String replyTime,
      @JsonKey(name: 'is_deleted') int isDeleted,
      @JsonKey(name: 'is_interactive') bool isInteractive,
      @JsonKey(name: 'structured_content') String structuredContent,
      String lang,
      @JsonKey(name: 'official_type') int officialType,
      String video,
      @JsonKey(name: 'contribution_id') String contributionId,
      @JsonKey(name: 'event_start_date') String eventStartDate,
      @JsonKey(name: 'event_end_date') String eventEndDate,
      @JsonKey(name: 'classification_id') String classificationId,
      @JsonKey(name: 'is_audit') bool isAudit,
      @JsonKey(name: 'is_multi_language') bool isMultiLanguage,
      @JsonKey(name: 'origin_lang') String originLang,
      @JsonKey(name: 'sub_type') int subType,
      @JsonKey(name: 'reprint_source') String reprintSource,
      @JsonKey(name: 'can_edit') bool canEdit,
      @JsonKey(name: 'last_modify_time') int lastModifyTime,
      @JsonKey(name: 'visible_level') int visibleLevel,
      @JsonKey(name: 'has_cover') bool hasCover,
      String suid,
      String desc});
}

/// @nodoc
class _$PostCopyWithImpl<$Res, $Val extends Post>
    implements $PostCopyWith<$Res> {
  _$PostCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Post
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameId = null,
    Object? postId = null,
    Object? forumId = null,
    Object? uid = null,
    Object? subject = null,
    Object? content = null,
    Object? cover = null,
    Object? viewType = null,
    Object? createdAt = null,
    Object? topicIds = null,
    Object? viewStatus = null,
    Object? maxFloor = null,
    Object? isOriginal = null,
    Object? republishAuthorization = null,
    Object? replyTime = null,
    Object? isDeleted = null,
    Object? isInteractive = null,
    Object? structuredContent = null,
    Object? lang = null,
    Object? officialType = null,
    Object? video = null,
    Object? contributionId = null,
    Object? eventStartDate = null,
    Object? eventEndDate = null,
    Object? classificationId = null,
    Object? isAudit = null,
    Object? isMultiLanguage = null,
    Object? originLang = null,
    Object? subType = null,
    Object? reprintSource = null,
    Object? canEdit = null,
    Object? lastModifyTime = null,
    Object? visibleLevel = null,
    Object? hasCover = null,
    Object? suid = null,
    Object? desc = null,
  }) {
    return _then(_value.copyWith(
      gameId: null == gameId
          ? _value.gameId
          : gameId // ignore: cast_nullable_to_non_nullable
              as int,
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
      forumId: null == forumId
          ? _value.forumId
          : forumId // ignore: cast_nullable_to_non_nullable
              as int,
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      cover: null == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String,
      viewType: null == viewType
          ? _value.viewType
          : viewType // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
      topicIds: null == topicIds
          ? _value.topicIds
          : topicIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      viewStatus: null == viewStatus
          ? _value.viewStatus
          : viewStatus // ignore: cast_nullable_to_non_nullable
              as int,
      maxFloor: null == maxFloor
          ? _value.maxFloor
          : maxFloor // ignore: cast_nullable_to_non_nullable
              as int,
      isOriginal: null == isOriginal
          ? _value.isOriginal
          : isOriginal // ignore: cast_nullable_to_non_nullable
              as int,
      republishAuthorization: null == republishAuthorization
          ? _value.republishAuthorization
          : republishAuthorization // ignore: cast_nullable_to_non_nullable
              as int,
      replyTime: null == replyTime
          ? _value.replyTime
          : replyTime // ignore: cast_nullable_to_non_nullable
              as String,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as int,
      isInteractive: null == isInteractive
          ? _value.isInteractive
          : isInteractive // ignore: cast_nullable_to_non_nullable
              as bool,
      structuredContent: null == structuredContent
          ? _value.structuredContent
          : structuredContent // ignore: cast_nullable_to_non_nullable
              as String,
      lang: null == lang
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as String,
      officialType: null == officialType
          ? _value.officialType
          : officialType // ignore: cast_nullable_to_non_nullable
              as int,
      video: null == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as String,
      contributionId: null == contributionId
          ? _value.contributionId
          : contributionId // ignore: cast_nullable_to_non_nullable
              as String,
      eventStartDate: null == eventStartDate
          ? _value.eventStartDate
          : eventStartDate // ignore: cast_nullable_to_non_nullable
              as String,
      eventEndDate: null == eventEndDate
          ? _value.eventEndDate
          : eventEndDate // ignore: cast_nullable_to_non_nullable
              as String,
      classificationId: null == classificationId
          ? _value.classificationId
          : classificationId // ignore: cast_nullable_to_non_nullable
              as String,
      isAudit: null == isAudit
          ? _value.isAudit
          : isAudit // ignore: cast_nullable_to_non_nullable
              as bool,
      isMultiLanguage: null == isMultiLanguage
          ? _value.isMultiLanguage
          : isMultiLanguage // ignore: cast_nullable_to_non_nullable
              as bool,
      originLang: null == originLang
          ? _value.originLang
          : originLang // ignore: cast_nullable_to_non_nullable
              as String,
      subType: null == subType
          ? _value.subType
          : subType // ignore: cast_nullable_to_non_nullable
              as int,
      reprintSource: null == reprintSource
          ? _value.reprintSource
          : reprintSource // ignore: cast_nullable_to_non_nullable
              as String,
      canEdit: null == canEdit
          ? _value.canEdit
          : canEdit // ignore: cast_nullable_to_non_nullable
              as bool,
      lastModifyTime: null == lastModifyTime
          ? _value.lastModifyTime
          : lastModifyTime // ignore: cast_nullable_to_non_nullable
              as int,
      visibleLevel: null == visibleLevel
          ? _value.visibleLevel
          : visibleLevel // ignore: cast_nullable_to_non_nullable
              as int,
      hasCover: null == hasCover
          ? _value.hasCover
          : hasCover // ignore: cast_nullable_to_non_nullable
              as bool,
      suid: null == suid
          ? _value.suid
          : suid // ignore: cast_nullable_to_non_nullable
              as String,
      desc: null == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostImplCopyWith<$Res> implements $PostCopyWith<$Res> {
  factory _$$PostImplCopyWith(
          _$PostImpl value, $Res Function(_$PostImpl) then) =
      __$$PostImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'game_id') int gameId,
      @JsonKey(name: 'post_id') String postId,
      @JsonKey(name: 'f_forum_id') int forumId,
      String uid,
      String subject,
      String content,
      String cover,
      @JsonKey(name: 'view_type') int viewType,
      @JsonKey(name: 'created_at') int createdAt,
      @JsonKey(name: 'topic_ids') List<int> topicIds,
      @JsonKey(name: 'view_status') int viewStatus,
      @JsonKey(name: 'max_floor') int maxFloor,
      @JsonKey(name: 'is_original') int isOriginal,
      @JsonKey(name: 'republish_authorization') int republishAuthorization,
      @JsonKey(name: 'reply_time') String replyTime,
      @JsonKey(name: 'is_deleted') int isDeleted,
      @JsonKey(name: 'is_interactive') bool isInteractive,
      @JsonKey(name: 'structured_content') String structuredContent,
      String lang,
      @JsonKey(name: 'official_type') int officialType,
      String video,
      @JsonKey(name: 'contribution_id') String contributionId,
      @JsonKey(name: 'event_start_date') String eventStartDate,
      @JsonKey(name: 'event_end_date') String eventEndDate,
      @JsonKey(name: 'classification_id') String classificationId,
      @JsonKey(name: 'is_audit') bool isAudit,
      @JsonKey(name: 'is_multi_language') bool isMultiLanguage,
      @JsonKey(name: 'origin_lang') String originLang,
      @JsonKey(name: 'sub_type') int subType,
      @JsonKey(name: 'reprint_source') String reprintSource,
      @JsonKey(name: 'can_edit') bool canEdit,
      @JsonKey(name: 'last_modify_time') int lastModifyTime,
      @JsonKey(name: 'visible_level') int visibleLevel,
      @JsonKey(name: 'has_cover') bool hasCover,
      String suid,
      String desc});
}

/// @nodoc
class __$$PostImplCopyWithImpl<$Res>
    extends _$PostCopyWithImpl<$Res, _$PostImpl>
    implements _$$PostImplCopyWith<$Res> {
  __$$PostImplCopyWithImpl(_$PostImpl _value, $Res Function(_$PostImpl) _then)
      : super(_value, _then);

  /// Create a copy of Post
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameId = null,
    Object? postId = null,
    Object? forumId = null,
    Object? uid = null,
    Object? subject = null,
    Object? content = null,
    Object? cover = null,
    Object? viewType = null,
    Object? createdAt = null,
    Object? topicIds = null,
    Object? viewStatus = null,
    Object? maxFloor = null,
    Object? isOriginal = null,
    Object? republishAuthorization = null,
    Object? replyTime = null,
    Object? isDeleted = null,
    Object? isInteractive = null,
    Object? structuredContent = null,
    Object? lang = null,
    Object? officialType = null,
    Object? video = null,
    Object? contributionId = null,
    Object? eventStartDate = null,
    Object? eventEndDate = null,
    Object? classificationId = null,
    Object? isAudit = null,
    Object? isMultiLanguage = null,
    Object? originLang = null,
    Object? subType = null,
    Object? reprintSource = null,
    Object? canEdit = null,
    Object? lastModifyTime = null,
    Object? visibleLevel = null,
    Object? hasCover = null,
    Object? suid = null,
    Object? desc = null,
  }) {
    return _then(_$PostImpl(
      gameId: null == gameId
          ? _value.gameId
          : gameId // ignore: cast_nullable_to_non_nullable
              as int,
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
      forumId: null == forumId
          ? _value.forumId
          : forumId // ignore: cast_nullable_to_non_nullable
              as int,
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      cover: null == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String,
      viewType: null == viewType
          ? _value.viewType
          : viewType // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
      topicIds: null == topicIds
          ? _value._topicIds
          : topicIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      viewStatus: null == viewStatus
          ? _value.viewStatus
          : viewStatus // ignore: cast_nullable_to_non_nullable
              as int,
      maxFloor: null == maxFloor
          ? _value.maxFloor
          : maxFloor // ignore: cast_nullable_to_non_nullable
              as int,
      isOriginal: null == isOriginal
          ? _value.isOriginal
          : isOriginal // ignore: cast_nullable_to_non_nullable
              as int,
      republishAuthorization: null == republishAuthorization
          ? _value.republishAuthorization
          : republishAuthorization // ignore: cast_nullable_to_non_nullable
              as int,
      replyTime: null == replyTime
          ? _value.replyTime
          : replyTime // ignore: cast_nullable_to_non_nullable
              as String,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as int,
      isInteractive: null == isInteractive
          ? _value.isInteractive
          : isInteractive // ignore: cast_nullable_to_non_nullable
              as bool,
      structuredContent: null == structuredContent
          ? _value.structuredContent
          : structuredContent // ignore: cast_nullable_to_non_nullable
              as String,
      lang: null == lang
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as String,
      officialType: null == officialType
          ? _value.officialType
          : officialType // ignore: cast_nullable_to_non_nullable
              as int,
      video: null == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as String,
      contributionId: null == contributionId
          ? _value.contributionId
          : contributionId // ignore: cast_nullable_to_non_nullable
              as String,
      eventStartDate: null == eventStartDate
          ? _value.eventStartDate
          : eventStartDate // ignore: cast_nullable_to_non_nullable
              as String,
      eventEndDate: null == eventEndDate
          ? _value.eventEndDate
          : eventEndDate // ignore: cast_nullable_to_non_nullable
              as String,
      classificationId: null == classificationId
          ? _value.classificationId
          : classificationId // ignore: cast_nullable_to_non_nullable
              as String,
      isAudit: null == isAudit
          ? _value.isAudit
          : isAudit // ignore: cast_nullable_to_non_nullable
              as bool,
      isMultiLanguage: null == isMultiLanguage
          ? _value.isMultiLanguage
          : isMultiLanguage // ignore: cast_nullable_to_non_nullable
              as bool,
      originLang: null == originLang
          ? _value.originLang
          : originLang // ignore: cast_nullable_to_non_nullable
              as String,
      subType: null == subType
          ? _value.subType
          : subType // ignore: cast_nullable_to_non_nullable
              as int,
      reprintSource: null == reprintSource
          ? _value.reprintSource
          : reprintSource // ignore: cast_nullable_to_non_nullable
              as String,
      canEdit: null == canEdit
          ? _value.canEdit
          : canEdit // ignore: cast_nullable_to_non_nullable
              as bool,
      lastModifyTime: null == lastModifyTime
          ? _value.lastModifyTime
          : lastModifyTime // ignore: cast_nullable_to_non_nullable
              as int,
      visibleLevel: null == visibleLevel
          ? _value.visibleLevel
          : visibleLevel // ignore: cast_nullable_to_non_nullable
              as int,
      hasCover: null == hasCover
          ? _value.hasCover
          : hasCover // ignore: cast_nullable_to_non_nullable
              as bool,
      suid: null == suid
          ? _value.suid
          : suid // ignore: cast_nullable_to_non_nullable
              as String,
      desc: null == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostImpl implements _Post {
  const _$PostImpl(
      {@JsonKey(name: 'game_id') required this.gameId,
      @JsonKey(name: 'post_id') required this.postId,
      @JsonKey(name: 'f_forum_id') required this.forumId,
      required this.uid,
      required this.subject,
      required this.content,
      required this.cover,
      @JsonKey(name: 'view_type') required this.viewType,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'topic_ids') required final List<int> topicIds,
      @JsonKey(name: 'view_status') required this.viewStatus,
      @JsonKey(name: 'max_floor') required this.maxFloor,
      @JsonKey(name: 'is_original') required this.isOriginal,
      @JsonKey(name: 'republish_authorization')
      required this.republishAuthorization,
      @JsonKey(name: 'reply_time') required this.replyTime,
      @JsonKey(name: 'is_deleted') required this.isDeleted,
      @JsonKey(name: 'is_interactive') required this.isInteractive,
      @JsonKey(name: 'structured_content') required this.structuredContent,
      required this.lang,
      @JsonKey(name: 'official_type') required this.officialType,
      required this.video,
      @JsonKey(name: 'contribution_id') required this.contributionId,
      @JsonKey(name: 'event_start_date') required this.eventStartDate,
      @JsonKey(name: 'event_end_date') required this.eventEndDate,
      @JsonKey(name: 'classification_id') required this.classificationId,
      @JsonKey(name: 'is_audit') required this.isAudit,
      @JsonKey(name: 'is_multi_language') required this.isMultiLanguage,
      @JsonKey(name: 'origin_lang') required this.originLang,
      @JsonKey(name: 'sub_type') required this.subType,
      @JsonKey(name: 'reprint_source') required this.reprintSource,
      @JsonKey(name: 'can_edit') required this.canEdit,
      @JsonKey(name: 'last_modify_time') required this.lastModifyTime,
      @JsonKey(name: 'visible_level') required this.visibleLevel,
      @JsonKey(name: 'has_cover') required this.hasCover,
      required this.suid,
      required this.desc})
      : _topicIds = topicIds;

  factory _$PostImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostImplFromJson(json);

  @override
  @JsonKey(name: 'game_id')
  final int gameId;
  @override
  @JsonKey(name: 'post_id')
  final String postId;
  @override
  @JsonKey(name: 'f_forum_id')
  final int forumId;
  @override
  final String uid;
  @override
  final String subject;
  @override
  final String content;
  @override
  final String cover;
  @override
  @JsonKey(name: 'view_type')
  final int viewType;
  @override
  @JsonKey(name: 'created_at')
  final int createdAt;
  final List<int> _topicIds;
  @override
  @JsonKey(name: 'topic_ids')
  List<int> get topicIds {
    if (_topicIds is EqualUnmodifiableListView) return _topicIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topicIds);
  }

  @override
  @JsonKey(name: 'view_status')
  final int viewStatus;
  @override
  @JsonKey(name: 'max_floor')
  final int maxFloor;
  @override
  @JsonKey(name: 'is_original')
  final int isOriginal;
  @override
  @JsonKey(name: 'republish_authorization')
  final int republishAuthorization;
  @override
  @JsonKey(name: 'reply_time')
  final String replyTime;
  @override
  @JsonKey(name: 'is_deleted')
  final int isDeleted;
  @override
  @JsonKey(name: 'is_interactive')
  final bool isInteractive;
  @override
  @JsonKey(name: 'structured_content')
  final String structuredContent;
  @override
  final String lang;
  @override
  @JsonKey(name: 'official_type')
  final int officialType;
  @override
  final String video;
  @override
  @JsonKey(name: 'contribution_id')
  final String contributionId;
  @override
  @JsonKey(name: 'event_start_date')
  final String eventStartDate;
  @override
  @JsonKey(name: 'event_end_date')
  final String eventEndDate;
  @override
  @JsonKey(name: 'classification_id')
  final String classificationId;
  @override
  @JsonKey(name: 'is_audit')
  final bool isAudit;
  @override
  @JsonKey(name: 'is_multi_language')
  final bool isMultiLanguage;
  @override
  @JsonKey(name: 'origin_lang')
  final String originLang;
  @override
  @JsonKey(name: 'sub_type')
  final int subType;
  @override
  @JsonKey(name: 'reprint_source')
  final String reprintSource;
  @override
  @JsonKey(name: 'can_edit')
  final bool canEdit;
  @override
  @JsonKey(name: 'last_modify_time')
  final int lastModifyTime;
  @override
  @JsonKey(name: 'visible_level')
  final int visibleLevel;
  @override
  @JsonKey(name: 'has_cover')
  final bool hasCover;
  @override
  final String suid;
  @override
  final String desc;

  @override
  String toString() {
    return 'Post(gameId: $gameId, postId: $postId, forumId: $forumId, uid: $uid, subject: $subject, content: $content, cover: $cover, viewType: $viewType, createdAt: $createdAt, topicIds: $topicIds, viewStatus: $viewStatus, maxFloor: $maxFloor, isOriginal: $isOriginal, republishAuthorization: $republishAuthorization, replyTime: $replyTime, isDeleted: $isDeleted, isInteractive: $isInteractive, structuredContent: $structuredContent, lang: $lang, officialType: $officialType, video: $video, contributionId: $contributionId, eventStartDate: $eventStartDate, eventEndDate: $eventEndDate, classificationId: $classificationId, isAudit: $isAudit, isMultiLanguage: $isMultiLanguage, originLang: $originLang, subType: $subType, reprintSource: $reprintSource, canEdit: $canEdit, lastModifyTime: $lastModifyTime, visibleLevel: $visibleLevel, hasCover: $hasCover, suid: $suid, desc: $desc)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostImpl &&
            (identical(other.gameId, gameId) || other.gameId == gameId) &&
            (identical(other.postId, postId) || other.postId == postId) &&
            (identical(other.forumId, forumId) || other.forumId == forumId) &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.subject, subject) || other.subject == subject) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.cover, cover) || other.cover == cover) &&
            (identical(other.viewType, viewType) ||
                other.viewType == viewType) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            const DeepCollectionEquality().equals(other._topicIds, _topicIds) &&
            (identical(other.viewStatus, viewStatus) ||
                other.viewStatus == viewStatus) &&
            (identical(other.maxFloor, maxFloor) ||
                other.maxFloor == maxFloor) &&
            (identical(other.isOriginal, isOriginal) ||
                other.isOriginal == isOriginal) &&
            (identical(other.republishAuthorization, republishAuthorization) ||
                other.republishAuthorization == republishAuthorization) &&
            (identical(other.replyTime, replyTime) ||
                other.replyTime == replyTime) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.isInteractive, isInteractive) ||
                other.isInteractive == isInteractive) &&
            (identical(other.structuredContent, structuredContent) ||
                other.structuredContent == structuredContent) &&
            (identical(other.lang, lang) || other.lang == lang) &&
            (identical(other.officialType, officialType) ||
                other.officialType == officialType) &&
            (identical(other.video, video) || other.video == video) &&
            (identical(other.contributionId, contributionId) ||
                other.contributionId == contributionId) &&
            (identical(other.eventStartDate, eventStartDate) ||
                other.eventStartDate == eventStartDate) &&
            (identical(other.eventEndDate, eventEndDate) ||
                other.eventEndDate == eventEndDate) &&
            (identical(other.classificationId, classificationId) ||
                other.classificationId == classificationId) &&
            (identical(other.isAudit, isAudit) || other.isAudit == isAudit) &&
            (identical(other.isMultiLanguage, isMultiLanguage) ||
                other.isMultiLanguage == isMultiLanguage) &&
            (identical(other.originLang, originLang) ||
                other.originLang == originLang) &&
            (identical(other.subType, subType) || other.subType == subType) &&
            (identical(other.reprintSource, reprintSource) ||
                other.reprintSource == reprintSource) &&
            (identical(other.canEdit, canEdit) || other.canEdit == canEdit) &&
            (identical(other.lastModifyTime, lastModifyTime) ||
                other.lastModifyTime == lastModifyTime) &&
            (identical(other.visibleLevel, visibleLevel) ||
                other.visibleLevel == visibleLevel) &&
            (identical(other.hasCover, hasCover) ||
                other.hasCover == hasCover) &&
            (identical(other.suid, suid) || other.suid == suid) &&
            (identical(other.desc, desc) || other.desc == desc));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        gameId,
        postId,
        forumId,
        uid,
        subject,
        content,
        cover,
        viewType,
        createdAt,
        const DeepCollectionEquality().hash(_topicIds),
        viewStatus,
        maxFloor,
        isOriginal,
        republishAuthorization,
        replyTime,
        isDeleted,
        isInteractive,
        structuredContent,
        lang,
        officialType,
        video,
        contributionId,
        eventStartDate,
        eventEndDate,
        classificationId,
        isAudit,
        isMultiLanguage,
        originLang,
        subType,
        reprintSource,
        canEdit,
        lastModifyTime,
        visibleLevel,
        hasCover,
        suid,
        desc
      ]);

  /// Create a copy of Post
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostImplCopyWith<_$PostImpl> get copyWith =>
      __$$PostImplCopyWithImpl<_$PostImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostImplToJson(
      this,
    );
  }
}

abstract class _Post implements Post {
  const factory _Post(
      {@JsonKey(name: 'game_id') required final int gameId,
      @JsonKey(name: 'post_id') required final String postId,
      @JsonKey(name: 'f_forum_id') required final int forumId,
      required final String uid,
      required final String subject,
      required final String content,
      required final String cover,
      @JsonKey(name: 'view_type') required final int viewType,
      @JsonKey(name: 'created_at') required final int createdAt,
      @JsonKey(name: 'topic_ids') required final List<int> topicIds,
      @JsonKey(name: 'view_status') required final int viewStatus,
      @JsonKey(name: 'max_floor') required final int maxFloor,
      @JsonKey(name: 'is_original') required final int isOriginal,
      @JsonKey(name: 'republish_authorization')
      required final int republishAuthorization,
      @JsonKey(name: 'reply_time') required final String replyTime,
      @JsonKey(name: 'is_deleted') required final int isDeleted,
      @JsonKey(name: 'is_interactive') required final bool isInteractive,
      @JsonKey(name: 'structured_content')
      required final String structuredContent,
      required final String lang,
      @JsonKey(name: 'official_type') required final int officialType,
      required final String video,
      @JsonKey(name: 'contribution_id') required final String contributionId,
      @JsonKey(name: 'event_start_date') required final String eventStartDate,
      @JsonKey(name: 'event_end_date') required final String eventEndDate,
      @JsonKey(name: 'classification_id')
      required final String classificationId,
      @JsonKey(name: 'is_audit') required final bool isAudit,
      @JsonKey(name: 'is_multi_language') required final bool isMultiLanguage,
      @JsonKey(name: 'origin_lang') required final String originLang,
      @JsonKey(name: 'sub_type') required final int subType,
      @JsonKey(name: 'reprint_source') required final String reprintSource,
      @JsonKey(name: 'can_edit') required final bool canEdit,
      @JsonKey(name: 'last_modify_time') required final int lastModifyTime,
      @JsonKey(name: 'visible_level') required final int visibleLevel,
      @JsonKey(name: 'has_cover') required final bool hasCover,
      required final String suid,
      required final String desc}) = _$PostImpl;

  factory _Post.fromJson(Map<String, dynamic> json) = _$PostImpl.fromJson;

  @override
  @JsonKey(name: 'game_id')
  int get gameId;
  @override
  @JsonKey(name: 'post_id')
  String get postId;
  @override
  @JsonKey(name: 'f_forum_id')
  int get forumId;
  @override
  String get uid;
  @override
  String get subject;
  @override
  String get content;
  @override
  String get cover;
  @override
  @JsonKey(name: 'view_type')
  int get viewType;
  @override
  @JsonKey(name: 'created_at')
  int get createdAt;
  @override
  @JsonKey(name: 'topic_ids')
  List<int> get topicIds;
  @override
  @JsonKey(name: 'view_status')
  int get viewStatus;
  @override
  @JsonKey(name: 'max_floor')
  int get maxFloor;
  @override
  @JsonKey(name: 'is_original')
  int get isOriginal;
  @override
  @JsonKey(name: 'republish_authorization')
  int get republishAuthorization;
  @override
  @JsonKey(name: 'reply_time')
  String get replyTime;
  @override
  @JsonKey(name: 'is_deleted')
  int get isDeleted;
  @override
  @JsonKey(name: 'is_interactive')
  bool get isInteractive;
  @override
  @JsonKey(name: 'structured_content')
  String get structuredContent;
  @override
  String get lang;
  @override
  @JsonKey(name: 'official_type')
  int get officialType;
  @override
  String get video;
  @override
  @JsonKey(name: 'contribution_id')
  String get contributionId;
  @override
  @JsonKey(name: 'event_start_date')
  String get eventStartDate;
  @override
  @JsonKey(name: 'event_end_date')
  String get eventEndDate;
  @override
  @JsonKey(name: 'classification_id')
  String get classificationId;
  @override
  @JsonKey(name: 'is_audit')
  bool get isAudit;
  @override
  @JsonKey(name: 'is_multi_language')
  bool get isMultiLanguage;
  @override
  @JsonKey(name: 'origin_lang')
  String get originLang;
  @override
  @JsonKey(name: 'sub_type')
  int get subType;
  @override
  @JsonKey(name: 'reprint_source')
  String get reprintSource;
  @override
  @JsonKey(name: 'can_edit')
  bool get canEdit;
  @override
  @JsonKey(name: 'last_modify_time')
  int get lastModifyTime;
  @override
  @JsonKey(name: 'visible_level')
  int get visibleLevel;
  @override
  @JsonKey(name: 'has_cover')
  bool get hasCover;
  @override
  String get suid;
  @override
  String get desc;

  /// Create a copy of Post
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostImplCopyWith<_$PostImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PostImage _$PostImageFromJson(Map<String, dynamic> json) {
  return _PostImage.fromJson(json);
}

/// @nodoc
mixin _$PostImage {
  String get url => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;
  int get width => throw _privateConstructorUsedError;
  String get format => throw _privateConstructorUsedError;
  String get size => throw _privateConstructorUsedError;
  bool get spoiler => throw _privateConstructorUsedError;

  /// Serializes this PostImage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PostImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostImageCopyWith<PostImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostImageCopyWith<$Res> {
  factory $PostImageCopyWith(PostImage value, $Res Function(PostImage) then) =
      _$PostImageCopyWithImpl<$Res, PostImage>;
  @useResult
  $Res call(
      {String url,
      int height,
      int width,
      String format,
      String size,
      bool spoiler});
}

/// @nodoc
class _$PostImageCopyWithImpl<$Res, $Val extends PostImage>
    implements $PostImageCopyWith<$Res> {
  _$PostImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostImage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? height = null,
    Object? width = null,
    Object? format = null,
    Object? size = null,
    Object? spoiler = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      format: null == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String,
      spoiler: null == spoiler
          ? _value.spoiler
          : spoiler // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostImageImplCopyWith<$Res>
    implements $PostImageCopyWith<$Res> {
  factory _$$PostImageImplCopyWith(
          _$PostImageImpl value, $Res Function(_$PostImageImpl) then) =
      __$$PostImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String url,
      int height,
      int width,
      String format,
      String size,
      bool spoiler});
}

/// @nodoc
class __$$PostImageImplCopyWithImpl<$Res>
    extends _$PostImageCopyWithImpl<$Res, _$PostImageImpl>
    implements _$$PostImageImplCopyWith<$Res> {
  __$$PostImageImplCopyWithImpl(
      _$PostImageImpl _value, $Res Function(_$PostImageImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostImage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? height = null,
    Object? width = null,
    Object? format = null,
    Object? size = null,
    Object? spoiler = null,
  }) {
    return _then(_$PostImageImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      format: null == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String,
      spoiler: null == spoiler
          ? _value.spoiler
          : spoiler // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostImageImpl implements _PostImage {
  const _$PostImageImpl(
      {required this.url,
      required this.height,
      required this.width,
      required this.format,
      required this.size,
      required this.spoiler});

  factory _$PostImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostImageImplFromJson(json);

  @override
  final String url;
  @override
  final int height;
  @override
  final int width;
  @override
  final String format;
  @override
  final String size;
  @override
  final bool spoiler;

  @override
  String toString() {
    return 'PostImage(url: $url, height: $height, width: $width, format: $format, size: $size, spoiler: $spoiler)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostImageImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.format, format) || other.format == format) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.spoiler, spoiler) || other.spoiler == spoiler));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, url, height, width, format, size, spoiler);

  /// Create a copy of PostImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostImageImplCopyWith<_$PostImageImpl> get copyWith =>
      __$$PostImageImplCopyWithImpl<_$PostImageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostImageImplToJson(
      this,
    );
  }
}

abstract class _PostImage implements PostImage {
  const factory _PostImage(
      {required final String url,
      required final int height,
      required final int width,
      required final String format,
      required final String size,
      required final bool spoiler}) = _$PostImageImpl;

  factory _PostImage.fromJson(Map<String, dynamic> json) =
      _$PostImageImpl.fromJson;

  @override
  String get url;
  @override
  int get height;
  @override
  int get width;
  @override
  String get format;
  @override
  String get size;
  @override
  bool get spoiler;

  /// Create a copy of PostImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostImageImplCopyWith<_$PostImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

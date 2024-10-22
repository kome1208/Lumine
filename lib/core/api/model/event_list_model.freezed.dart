// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EventList _$EventListFromJson(Map<String, dynamic> json) {
  return _EventList.fromJson(json);
}

/// @nodoc
mixin _$EventList {
  List<GameEvent> get list => throw _privateConstructorUsedError;
  @JsonKey(name: 'next_offset')
  String get nextOffset => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_last')
  bool get isLast => throw _privateConstructorUsedError;

  /// Serializes this EventList to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EventList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EventListCopyWith<EventList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventListCopyWith<$Res> {
  factory $EventListCopyWith(EventList value, $Res Function(EventList) then) =
      _$EventListCopyWithImpl<$Res, EventList>;
  @useResult
  $Res call(
      {List<GameEvent> list,
      @JsonKey(name: 'next_offset') String nextOffset,
      @JsonKey(name: 'is_last') bool isLast});
}

/// @nodoc
class _$EventListCopyWithImpl<$Res, $Val extends EventList>
    implements $EventListCopyWith<$Res> {
  _$EventListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EventList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
    Object? nextOffset = null,
    Object? isLast = null,
  }) {
    return _then(_value.copyWith(
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<GameEvent>,
      nextOffset: null == nextOffset
          ? _value.nextOffset
          : nextOffset // ignore: cast_nullable_to_non_nullable
              as String,
      isLast: null == isLast
          ? _value.isLast
          : isLast // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EventListImplCopyWith<$Res>
    implements $EventListCopyWith<$Res> {
  factory _$$EventListImplCopyWith(
          _$EventListImpl value, $Res Function(_$EventListImpl) then) =
      __$$EventListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<GameEvent> list,
      @JsonKey(name: 'next_offset') String nextOffset,
      @JsonKey(name: 'is_last') bool isLast});
}

/// @nodoc
class __$$EventListImplCopyWithImpl<$Res>
    extends _$EventListCopyWithImpl<$Res, _$EventListImpl>
    implements _$$EventListImplCopyWith<$Res> {
  __$$EventListImplCopyWithImpl(
      _$EventListImpl _value, $Res Function(_$EventListImpl) _then)
      : super(_value, _then);

  /// Create a copy of EventList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
    Object? nextOffset = null,
    Object? isLast = null,
  }) {
    return _then(_$EventListImpl(
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<GameEvent>,
      nextOffset: null == nextOffset
          ? _value.nextOffset
          : nextOffset // ignore: cast_nullable_to_non_nullable
              as String,
      isLast: null == isLast
          ? _value.isLast
          : isLast // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EventListImpl implements _EventList {
  const _$EventListImpl(
      {required final List<GameEvent> list,
      @JsonKey(name: 'next_offset') required this.nextOffset,
      @JsonKey(name: 'is_last') required this.isLast})
      : _list = list;

  factory _$EventListImpl.fromJson(Map<String, dynamic> json) =>
      _$$EventListImplFromJson(json);

  final List<GameEvent> _list;
  @override
  List<GameEvent> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  @JsonKey(name: 'next_offset')
  final String nextOffset;
  @override
  @JsonKey(name: 'is_last')
  final bool isLast;

  @override
  String toString() {
    return 'EventList(list: $list, nextOffset: $nextOffset, isLast: $isLast)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventListImpl &&
            const DeepCollectionEquality().equals(other._list, _list) &&
            (identical(other.nextOffset, nextOffset) ||
                other.nextOffset == nextOffset) &&
            (identical(other.isLast, isLast) || other.isLast == isLast));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_list), nextOffset, isLast);

  /// Create a copy of EventList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EventListImplCopyWith<_$EventListImpl> get copyWith =>
      __$$EventListImplCopyWithImpl<_$EventListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EventListImplToJson(
      this,
    );
  }
}

abstract class _EventList implements EventList {
  const factory _EventList(
      {required final List<GameEvent> list,
      @JsonKey(name: 'next_offset') required final String nextOffset,
      @JsonKey(name: 'is_last') required final bool isLast}) = _$EventListImpl;

  factory _EventList.fromJson(Map<String, dynamic> json) =
      _$EventListImpl.fromJson;

  @override
  List<GameEvent> get list;
  @override
  @JsonKey(name: 'next_offset')
  String get nextOffset;
  @override
  @JsonKey(name: 'is_last')
  bool get isLast;

  /// Create a copy of EventList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EventListImplCopyWith<_$EventListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GameEvent _$GameEventFromJson(Map<String, dynamic> json) {
  return _GameEvent.fromJson(json);
}

/// @nodoc
mixin _$GameEvent {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get start => throw _privateConstructorUsedError;
  String get end => throw _privateConstructorUsedError;
  @JsonKey(name: 'banner_url')
  String get bannerUrl => throw _privateConstructorUsedError;
  int get status => throw _privateConstructorUsedError;
  String get desc => throw _privateConstructorUsedError;
  @JsonKey(name: 'game_id')
  int get gameId => throw _privateConstructorUsedError;
  int get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'app_path')
  String get appPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'status_ing')
  int get statusIng => throw _privateConstructorUsedError;
  @JsonKey(name: 'web_path')
  String get webPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'status_int')
  int get statusInt => throw _privateConstructorUsedError;
  @JsonKey(name: 'create_at')
  String get createAt => throw _privateConstructorUsedError;

  /// Serializes this GameEvent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GameEventCopyWith<GameEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameEventCopyWith<$Res> {
  factory $GameEventCopyWith(GameEvent value, $Res Function(GameEvent) then) =
      _$GameEventCopyWithImpl<$Res, GameEvent>;
  @useResult
  $Res call(
      {String id,
      String name,
      String start,
      String end,
      @JsonKey(name: 'banner_url') String bannerUrl,
      int status,
      String desc,
      @JsonKey(name: 'game_id') int gameId,
      int type,
      @JsonKey(name: 'app_path') String appPath,
      @JsonKey(name: 'status_ing') int statusIng,
      @JsonKey(name: 'web_path') String webPath,
      @JsonKey(name: 'status_int') int statusInt,
      @JsonKey(name: 'create_at') String createAt});
}

/// @nodoc
class _$GameEventCopyWithImpl<$Res, $Val extends GameEvent>
    implements $GameEventCopyWith<$Res> {
  _$GameEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? start = null,
    Object? end = null,
    Object? bannerUrl = null,
    Object? status = null,
    Object? desc = null,
    Object? gameId = null,
    Object? type = null,
    Object? appPath = null,
    Object? statusIng = null,
    Object? webPath = null,
    Object? statusInt = null,
    Object? createAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as String,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as String,
      bannerUrl: null == bannerUrl
          ? _value.bannerUrl
          : bannerUrl // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      desc: null == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String,
      gameId: null == gameId
          ? _value.gameId
          : gameId // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      appPath: null == appPath
          ? _value.appPath
          : appPath // ignore: cast_nullable_to_non_nullable
              as String,
      statusIng: null == statusIng
          ? _value.statusIng
          : statusIng // ignore: cast_nullable_to_non_nullable
              as int,
      webPath: null == webPath
          ? _value.webPath
          : webPath // ignore: cast_nullable_to_non_nullable
              as String,
      statusInt: null == statusInt
          ? _value.statusInt
          : statusInt // ignore: cast_nullable_to_non_nullable
              as int,
      createAt: null == createAt
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GameEventImplCopyWith<$Res>
    implements $GameEventCopyWith<$Res> {
  factory _$$GameEventImplCopyWith(
          _$GameEventImpl value, $Res Function(_$GameEventImpl) then) =
      __$$GameEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String start,
      String end,
      @JsonKey(name: 'banner_url') String bannerUrl,
      int status,
      String desc,
      @JsonKey(name: 'game_id') int gameId,
      int type,
      @JsonKey(name: 'app_path') String appPath,
      @JsonKey(name: 'status_ing') int statusIng,
      @JsonKey(name: 'web_path') String webPath,
      @JsonKey(name: 'status_int') int statusInt,
      @JsonKey(name: 'create_at') String createAt});
}

/// @nodoc
class __$$GameEventImplCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$GameEventImpl>
    implements _$$GameEventImplCopyWith<$Res> {
  __$$GameEventImplCopyWithImpl(
      _$GameEventImpl _value, $Res Function(_$GameEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? start = null,
    Object? end = null,
    Object? bannerUrl = null,
    Object? status = null,
    Object? desc = null,
    Object? gameId = null,
    Object? type = null,
    Object? appPath = null,
    Object? statusIng = null,
    Object? webPath = null,
    Object? statusInt = null,
    Object? createAt = null,
  }) {
    return _then(_$GameEventImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as String,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as String,
      bannerUrl: null == bannerUrl
          ? _value.bannerUrl
          : bannerUrl // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      desc: null == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String,
      gameId: null == gameId
          ? _value.gameId
          : gameId // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      appPath: null == appPath
          ? _value.appPath
          : appPath // ignore: cast_nullable_to_non_nullable
              as String,
      statusIng: null == statusIng
          ? _value.statusIng
          : statusIng // ignore: cast_nullable_to_non_nullable
              as int,
      webPath: null == webPath
          ? _value.webPath
          : webPath // ignore: cast_nullable_to_non_nullable
              as String,
      statusInt: null == statusInt
          ? _value.statusInt
          : statusInt // ignore: cast_nullable_to_non_nullable
              as int,
      createAt: null == createAt
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GameEventImpl implements _GameEvent {
  const _$GameEventImpl(
      {required this.id,
      required this.name,
      required this.start,
      required this.end,
      @JsonKey(name: 'banner_url') required this.bannerUrl,
      required this.status,
      required this.desc,
      @JsonKey(name: 'game_id') required this.gameId,
      required this.type,
      @JsonKey(name: 'app_path') required this.appPath,
      @JsonKey(name: 'status_ing') required this.statusIng,
      @JsonKey(name: 'web_path') required this.webPath,
      @JsonKey(name: 'status_int') required this.statusInt,
      @JsonKey(name: 'create_at') required this.createAt});

  factory _$GameEventImpl.fromJson(Map<String, dynamic> json) =>
      _$$GameEventImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String start;
  @override
  final String end;
  @override
  @JsonKey(name: 'banner_url')
  final String bannerUrl;
  @override
  final int status;
  @override
  final String desc;
  @override
  @JsonKey(name: 'game_id')
  final int gameId;
  @override
  final int type;
  @override
  @JsonKey(name: 'app_path')
  final String appPath;
  @override
  @JsonKey(name: 'status_ing')
  final int statusIng;
  @override
  @JsonKey(name: 'web_path')
  final String webPath;
  @override
  @JsonKey(name: 'status_int')
  final int statusInt;
  @override
  @JsonKey(name: 'create_at')
  final String createAt;

  @override
  String toString() {
    return 'GameEvent(id: $id, name: $name, start: $start, end: $end, bannerUrl: $bannerUrl, status: $status, desc: $desc, gameId: $gameId, type: $type, appPath: $appPath, statusIng: $statusIng, webPath: $webPath, statusInt: $statusInt, createAt: $createAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameEventImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end) &&
            (identical(other.bannerUrl, bannerUrl) ||
                other.bannerUrl == bannerUrl) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.desc, desc) || other.desc == desc) &&
            (identical(other.gameId, gameId) || other.gameId == gameId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.appPath, appPath) || other.appPath == appPath) &&
            (identical(other.statusIng, statusIng) ||
                other.statusIng == statusIng) &&
            (identical(other.webPath, webPath) || other.webPath == webPath) &&
            (identical(other.statusInt, statusInt) ||
                other.statusInt == statusInt) &&
            (identical(other.createAt, createAt) ||
                other.createAt == createAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      start,
      end,
      bannerUrl,
      status,
      desc,
      gameId,
      type,
      appPath,
      statusIng,
      webPath,
      statusInt,
      createAt);

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GameEventImplCopyWith<_$GameEventImpl> get copyWith =>
      __$$GameEventImplCopyWithImpl<_$GameEventImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GameEventImplToJson(
      this,
    );
  }
}

abstract class _GameEvent implements GameEvent {
  const factory _GameEvent(
          {required final String id,
          required final String name,
          required final String start,
          required final String end,
          @JsonKey(name: 'banner_url') required final String bannerUrl,
          required final int status,
          required final String desc,
          @JsonKey(name: 'game_id') required final int gameId,
          required final int type,
          @JsonKey(name: 'app_path') required final String appPath,
          @JsonKey(name: 'status_ing') required final int statusIng,
          @JsonKey(name: 'web_path') required final String webPath,
          @JsonKey(name: 'status_int') required final int statusInt,
          @JsonKey(name: 'create_at') required final String createAt}) =
      _$GameEventImpl;

  factory _GameEvent.fromJson(Map<String, dynamic> json) =
      _$GameEventImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get start;
  @override
  String get end;
  @override
  @JsonKey(name: 'banner_url')
  String get bannerUrl;
  @override
  int get status;
  @override
  String get desc;
  @override
  @JsonKey(name: 'game_id')
  int get gameId;
  @override
  int get type;
  @override
  @JsonKey(name: 'app_path')
  String get appPath;
  @override
  @JsonKey(name: 'status_ing')
  int get statusIng;
  @override
  @JsonKey(name: 'web_path')
  String get webPath;
  @override
  @JsonKey(name: 'status_int')
  int get statusInt;
  @override
  @JsonKey(name: 'create_at')
  String get createAt;

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GameEventImplCopyWith<_$GameEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

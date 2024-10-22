// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'month_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MonthDetail _$MonthDetailFromJson(Map<String, dynamic> json) {
  return _MonthDetail.fromJson(json);
}

/// @nodoc
mixin _$MonthDetail {
  int get uid => throw _privateConstructorUsedError;
  String get region => throw _privateConstructorUsedError;
  String get nickname => throw _privateConstructorUsedError;
  @JsonKey(name: 'data_month')
  int get dataMonth => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_page')
  int get currentPage => throw _privateConstructorUsedError;
  List<ActionInfo> get list => throw _privateConstructorUsedError;
  @JsonKey(name: 'optional_month')
  List<int> get optionalMonth => throw _privateConstructorUsedError;

  /// Serializes this MonthDetail to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MonthDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MonthDetailCopyWith<MonthDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MonthDetailCopyWith<$Res> {
  factory $MonthDetailCopyWith(
          MonthDetail value, $Res Function(MonthDetail) then) =
      _$MonthDetailCopyWithImpl<$Res, MonthDetail>;
  @useResult
  $Res call(
      {int uid,
      String region,
      String nickname,
      @JsonKey(name: 'data_month') int dataMonth,
      @JsonKey(name: 'current_page') int currentPage,
      List<ActionInfo> list,
      @JsonKey(name: 'optional_month') List<int> optionalMonth});
}

/// @nodoc
class _$MonthDetailCopyWithImpl<$Res, $Val extends MonthDetail>
    implements $MonthDetailCopyWith<$Res> {
  _$MonthDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MonthDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? region = null,
    Object? nickname = null,
    Object? dataMonth = null,
    Object? currentPage = null,
    Object? list = null,
    Object? optionalMonth = null,
  }) {
    return _then(_value.copyWith(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as int,
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      dataMonth: null == dataMonth
          ? _value.dataMonth
          : dataMonth // ignore: cast_nullable_to_non_nullable
              as int,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<ActionInfo>,
      optionalMonth: null == optionalMonth
          ? _value.optionalMonth
          : optionalMonth // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MonthDetailImplCopyWith<$Res>
    implements $MonthDetailCopyWith<$Res> {
  factory _$$MonthDetailImplCopyWith(
          _$MonthDetailImpl value, $Res Function(_$MonthDetailImpl) then) =
      __$$MonthDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int uid,
      String region,
      String nickname,
      @JsonKey(name: 'data_month') int dataMonth,
      @JsonKey(name: 'current_page') int currentPage,
      List<ActionInfo> list,
      @JsonKey(name: 'optional_month') List<int> optionalMonth});
}

/// @nodoc
class __$$MonthDetailImplCopyWithImpl<$Res>
    extends _$MonthDetailCopyWithImpl<$Res, _$MonthDetailImpl>
    implements _$$MonthDetailImplCopyWith<$Res> {
  __$$MonthDetailImplCopyWithImpl(
      _$MonthDetailImpl _value, $Res Function(_$MonthDetailImpl) _then)
      : super(_value, _then);

  /// Create a copy of MonthDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? region = null,
    Object? nickname = null,
    Object? dataMonth = null,
    Object? currentPage = null,
    Object? list = null,
    Object? optionalMonth = null,
  }) {
    return _then(_$MonthDetailImpl(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as int,
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      dataMonth: null == dataMonth
          ? _value.dataMonth
          : dataMonth // ignore: cast_nullable_to_non_nullable
              as int,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<ActionInfo>,
      optionalMonth: null == optionalMonth
          ? _value._optionalMonth
          : optionalMonth // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MonthDetailImpl implements _MonthDetail {
  const _$MonthDetailImpl(
      {required this.uid,
      required this.region,
      required this.nickname,
      @JsonKey(name: 'data_month') required this.dataMonth,
      @JsonKey(name: 'current_page') required this.currentPage,
      required final List<ActionInfo> list,
      @JsonKey(name: 'optional_month') required final List<int> optionalMonth})
      : _list = list,
        _optionalMonth = optionalMonth;

  factory _$MonthDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$MonthDetailImplFromJson(json);

  @override
  final int uid;
  @override
  final String region;
  @override
  final String nickname;
  @override
  @JsonKey(name: 'data_month')
  final int dataMonth;
  @override
  @JsonKey(name: 'current_page')
  final int currentPage;
  final List<ActionInfo> _list;
  @override
  List<ActionInfo> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  final List<int> _optionalMonth;
  @override
  @JsonKey(name: 'optional_month')
  List<int> get optionalMonth {
    if (_optionalMonth is EqualUnmodifiableListView) return _optionalMonth;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_optionalMonth);
  }

  @override
  String toString() {
    return 'MonthDetail(uid: $uid, region: $region, nickname: $nickname, dataMonth: $dataMonth, currentPage: $currentPage, list: $list, optionalMonth: $optionalMonth)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MonthDetailImpl &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.dataMonth, dataMonth) ||
                other.dataMonth == dataMonth) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            const DeepCollectionEquality().equals(other._list, _list) &&
            const DeepCollectionEquality()
                .equals(other._optionalMonth, _optionalMonth));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      uid,
      region,
      nickname,
      dataMonth,
      currentPage,
      const DeepCollectionEquality().hash(_list),
      const DeepCollectionEquality().hash(_optionalMonth));

  /// Create a copy of MonthDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MonthDetailImplCopyWith<_$MonthDetailImpl> get copyWith =>
      __$$MonthDetailImplCopyWithImpl<_$MonthDetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MonthDetailImplToJson(
      this,
    );
  }
}

abstract class _MonthDetail implements MonthDetail {
  const factory _MonthDetail(
      {required final int uid,
      required final String region,
      required final String nickname,
      @JsonKey(name: 'data_month') required final int dataMonth,
      @JsonKey(name: 'current_page') required final int currentPage,
      required final List<ActionInfo> list,
      @JsonKey(name: 'optional_month')
      required final List<int> optionalMonth}) = _$MonthDetailImpl;

  factory _MonthDetail.fromJson(Map<String, dynamic> json) =
      _$MonthDetailImpl.fromJson;

  @override
  int get uid;
  @override
  String get region;
  @override
  String get nickname;
  @override
  @JsonKey(name: 'data_month')
  int get dataMonth;
  @override
  @JsonKey(name: 'current_page')
  int get currentPage;
  @override
  List<ActionInfo> get list;
  @override
  @JsonKey(name: 'optional_month')
  List<int> get optionalMonth;

  /// Create a copy of MonthDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MonthDetailImplCopyWith<_$MonthDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ActionInfo _$ActionInfoFromJson(Map<String, dynamic> json) {
  return _ActionInfo.fromJson(json);
}

/// @nodoc
mixin _$ActionInfo {
  @JsonKey(name: 'action_id')
  int get actionId => throw _privateConstructorUsedError;
  String get action => throw _privateConstructorUsedError;
  String get time => throw _privateConstructorUsedError;
  int get num => throw _privateConstructorUsedError;

  /// Serializes this ActionInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ActionInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ActionInfoCopyWith<ActionInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActionInfoCopyWith<$Res> {
  factory $ActionInfoCopyWith(
          ActionInfo value, $Res Function(ActionInfo) then) =
      _$ActionInfoCopyWithImpl<$Res, ActionInfo>;
  @useResult
  $Res call(
      {@JsonKey(name: 'action_id') int actionId,
      String action,
      String time,
      int num});
}

/// @nodoc
class _$ActionInfoCopyWithImpl<$Res, $Val extends ActionInfo>
    implements $ActionInfoCopyWith<$Res> {
  _$ActionInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ActionInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? actionId = null,
    Object? action = null,
    Object? time = null,
    Object? num = null,
  }) {
    return _then(_value.copyWith(
      actionId: null == actionId
          ? _value.actionId
          : actionId // ignore: cast_nullable_to_non_nullable
              as int,
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      num: null == num
          ? _value.num
          : num // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ActionInfoImplCopyWith<$Res>
    implements $ActionInfoCopyWith<$Res> {
  factory _$$ActionInfoImplCopyWith(
          _$ActionInfoImpl value, $Res Function(_$ActionInfoImpl) then) =
      __$$ActionInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'action_id') int actionId,
      String action,
      String time,
      int num});
}

/// @nodoc
class __$$ActionInfoImplCopyWithImpl<$Res>
    extends _$ActionInfoCopyWithImpl<$Res, _$ActionInfoImpl>
    implements _$$ActionInfoImplCopyWith<$Res> {
  __$$ActionInfoImplCopyWithImpl(
      _$ActionInfoImpl _value, $Res Function(_$ActionInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ActionInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? actionId = null,
    Object? action = null,
    Object? time = null,
    Object? num = null,
  }) {
    return _then(_$ActionInfoImpl(
      actionId: null == actionId
          ? _value.actionId
          : actionId // ignore: cast_nullable_to_non_nullable
              as int,
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      num: null == num
          ? _value.num
          : num // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ActionInfoImpl implements _ActionInfo {
  const _$ActionInfoImpl(
      {@JsonKey(name: 'action_id') required this.actionId,
      required this.action,
      required this.time,
      required this.num});

  factory _$ActionInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ActionInfoImplFromJson(json);

  @override
  @JsonKey(name: 'action_id')
  final int actionId;
  @override
  final String action;
  @override
  final String time;
  @override
  final int num;

  @override
  String toString() {
    return 'ActionInfo(actionId: $actionId, action: $action, time: $time, num: $num)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActionInfoImpl &&
            (identical(other.actionId, actionId) ||
                other.actionId == actionId) &&
            (identical(other.action, action) || other.action == action) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.num, num) || other.num == num));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, actionId, action, time, num);

  /// Create a copy of ActionInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ActionInfoImplCopyWith<_$ActionInfoImpl> get copyWith =>
      __$$ActionInfoImplCopyWithImpl<_$ActionInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ActionInfoImplToJson(
      this,
    );
  }
}

abstract class _ActionInfo implements ActionInfo {
  const factory _ActionInfo(
      {@JsonKey(name: 'action_id') required final int actionId,
      required final String action,
      required final String time,
      required final int num}) = _$ActionInfoImpl;

  factory _ActionInfo.fromJson(Map<String, dynamic> json) =
      _$ActionInfoImpl.fromJson;

  @override
  @JsonKey(name: 'action_id')
  int get actionId;
  @override
  String get action;
  @override
  String get time;
  @override
  int get num;

  /// Create a copy of ActionInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ActionInfoImplCopyWith<_$ActionInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reward_history_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RewardHistory _$RewardHistoryFromJson(Map<String, dynamic> json) {
  return _RewardHistory.fromJson(json);
}

/// @nodoc
mixin _$RewardHistory {
  List<Reward> get list => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;

  /// Serializes this RewardHistory to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RewardHistory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RewardHistoryCopyWith<RewardHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RewardHistoryCopyWith<$Res> {
  factory $RewardHistoryCopyWith(
          RewardHistory value, $Res Function(RewardHistory) then) =
      _$RewardHistoryCopyWithImpl<$Res, RewardHistory>;
  @useResult
  $Res call({List<Reward> list, int total});
}

/// @nodoc
class _$RewardHistoryCopyWithImpl<$Res, $Val extends RewardHistory>
    implements $RewardHistoryCopyWith<$Res> {
  _$RewardHistoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RewardHistory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
    Object? total = null,
  }) {
    return _then(_value.copyWith(
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<Reward>,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RewardHistoryImplCopyWith<$Res>
    implements $RewardHistoryCopyWith<$Res> {
  factory _$$RewardHistoryImplCopyWith(
          _$RewardHistoryImpl value, $Res Function(_$RewardHistoryImpl) then) =
      __$$RewardHistoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Reward> list, int total});
}

/// @nodoc
class __$$RewardHistoryImplCopyWithImpl<$Res>
    extends _$RewardHistoryCopyWithImpl<$Res, _$RewardHistoryImpl>
    implements _$$RewardHistoryImplCopyWith<$Res> {
  __$$RewardHistoryImplCopyWithImpl(
      _$RewardHistoryImpl _value, $Res Function(_$RewardHistoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of RewardHistory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
    Object? total = null,
  }) {
    return _then(_$RewardHistoryImpl(
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<Reward>,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RewardHistoryImpl implements _RewardHistory {
  const _$RewardHistoryImpl(
      {required final List<Reward> list, required this.total})
      : _list = list;

  factory _$RewardHistoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$RewardHistoryImplFromJson(json);

  final List<Reward> _list;
  @override
  List<Reward> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  final int total;

  @override
  String toString() {
    return 'RewardHistory(list: $list, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RewardHistoryImpl &&
            const DeepCollectionEquality().equals(other._list, _list) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_list), total);

  /// Create a copy of RewardHistory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RewardHistoryImplCopyWith<_$RewardHistoryImpl> get copyWith =>
      __$$RewardHistoryImplCopyWithImpl<_$RewardHistoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RewardHistoryImplToJson(
      this,
    );
  }
}

abstract class _RewardHistory implements RewardHistory {
  const factory _RewardHistory(
      {required final List<Reward> list,
      required final int total}) = _$RewardHistoryImpl;

  factory _RewardHistory.fromJson(Map<String, dynamic> json) =
      _$RewardHistoryImpl.fromJson;

  @override
  List<Reward> get list;
  @override
  int get total;

  /// Create a copy of RewardHistory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RewardHistoryImplCopyWith<_$RewardHistoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Reward _$RewardFromJson(Map<String, dynamic> json) {
  return _Reward.fromJson(json);
}

/// @nodoc
mixin _$Reward {
  int get id => throw _privateConstructorUsedError;
  int get status => throw _privateConstructorUsedError;
  int get type => throw _privateConstructorUsedError;
  String get game => throw _privateConstructorUsedError;
  String get img => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  String get desc => throw _privateConstructorUsedError;
  int get cnt => throw _privateConstructorUsedError;

  /// Serializes this Reward to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Reward
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RewardCopyWith<Reward> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RewardCopyWith<$Res> {
  factory $RewardCopyWith(Reward value, $Res Function(Reward) then) =
      _$RewardCopyWithImpl<$Res, Reward>;
  @useResult
  $Res call(
      {int id,
      int status,
      int type,
      String game,
      String img,
      String name,
      @JsonKey(name: 'created_at') String createdAt,
      String desc,
      int cnt});
}

/// @nodoc
class _$RewardCopyWithImpl<$Res, $Val extends Reward>
    implements $RewardCopyWith<$Res> {
  _$RewardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Reward
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? status = null,
    Object? type = null,
    Object? game = null,
    Object? img = null,
    Object? name = null,
    Object? createdAt = null,
    Object? desc = null,
    Object? cnt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      game: null == game
          ? _value.game
          : game // ignore: cast_nullable_to_non_nullable
              as String,
      img: null == img
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      desc: null == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String,
      cnt: null == cnt
          ? _value.cnt
          : cnt // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RewardImplCopyWith<$Res> implements $RewardCopyWith<$Res> {
  factory _$$RewardImplCopyWith(
          _$RewardImpl value, $Res Function(_$RewardImpl) then) =
      __$$RewardImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int status,
      int type,
      String game,
      String img,
      String name,
      @JsonKey(name: 'created_at') String createdAt,
      String desc,
      int cnt});
}

/// @nodoc
class __$$RewardImplCopyWithImpl<$Res>
    extends _$RewardCopyWithImpl<$Res, _$RewardImpl>
    implements _$$RewardImplCopyWith<$Res> {
  __$$RewardImplCopyWithImpl(
      _$RewardImpl _value, $Res Function(_$RewardImpl) _then)
      : super(_value, _then);

  /// Create a copy of Reward
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? status = null,
    Object? type = null,
    Object? game = null,
    Object? img = null,
    Object? name = null,
    Object? createdAt = null,
    Object? desc = null,
    Object? cnt = null,
  }) {
    return _then(_$RewardImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      game: null == game
          ? _value.game
          : game // ignore: cast_nullable_to_non_nullable
              as String,
      img: null == img
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      desc: null == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String,
      cnt: null == cnt
          ? _value.cnt
          : cnt // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RewardImpl implements _Reward {
  const _$RewardImpl(
      {required this.id,
      required this.status,
      required this.type,
      required this.game,
      required this.img,
      required this.name,
      @JsonKey(name: 'created_at') required this.createdAt,
      required this.desc,
      required this.cnt});

  factory _$RewardImpl.fromJson(Map<String, dynamic> json) =>
      _$$RewardImplFromJson(json);

  @override
  final int id;
  @override
  final int status;
  @override
  final int type;
  @override
  final String game;
  @override
  final String img;
  @override
  final String name;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
  @override
  final String desc;
  @override
  final int cnt;

  @override
  String toString() {
    return 'Reward(id: $id, status: $status, type: $type, game: $game, img: $img, name: $name, createdAt: $createdAt, desc: $desc, cnt: $cnt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RewardImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.game, game) || other.game == game) &&
            (identical(other.img, img) || other.img == img) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.desc, desc) || other.desc == desc) &&
            (identical(other.cnt, cnt) || other.cnt == cnt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, status, type, game, img, name, createdAt, desc, cnt);

  /// Create a copy of Reward
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RewardImplCopyWith<_$RewardImpl> get copyWith =>
      __$$RewardImplCopyWithImpl<_$RewardImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RewardImplToJson(
      this,
    );
  }
}

abstract class _Reward implements Reward {
  const factory _Reward(
      {required final int id,
      required final int status,
      required final int type,
      required final String game,
      required final String img,
      required final String name,
      @JsonKey(name: 'created_at') required final String createdAt,
      required final String desc,
      required final int cnt}) = _$RewardImpl;

  factory _Reward.fromJson(Map<String, dynamic> json) = _$RewardImpl.fromJson;

  @override
  int get id;
  @override
  int get status;
  @override
  int get type;
  @override
  String get game;
  @override
  String get img;
  @override
  String get name;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt;
  @override
  String get desc;
  @override
  int get cnt;

  /// Create a copy of Reward
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RewardImplCopyWith<_$RewardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

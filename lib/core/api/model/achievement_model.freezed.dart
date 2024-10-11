// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'achievement_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AchievementData _$AchievementDataFromJson(Map<String, dynamic> json) {
  return _AchievementData.fromJson(json);
}

/// @nodoc
mixin _$AchievementData {
  List<Achievement> get list => throw _privateConstructorUsedError;
  @JsonKey(name: 'achievement_num')
  int get achievementNum => throw _privateConstructorUsedError;

  /// Serializes this AchievementData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AchievementData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AchievementDataCopyWith<AchievementData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AchievementDataCopyWith<$Res> {
  factory $AchievementDataCopyWith(
          AchievementData value, $Res Function(AchievementData) then) =
      _$AchievementDataCopyWithImpl<$Res, AchievementData>;
  @useResult
  $Res call(
      {List<Achievement> list,
      @JsonKey(name: 'achievement_num') int achievementNum});
}

/// @nodoc
class _$AchievementDataCopyWithImpl<$Res, $Val extends AchievementData>
    implements $AchievementDataCopyWith<$Res> {
  _$AchievementDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AchievementData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
    Object? achievementNum = null,
  }) {
    return _then(_value.copyWith(
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<Achievement>,
      achievementNum: null == achievementNum
          ? _value.achievementNum
          : achievementNum // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AchievementDataImplCopyWith<$Res>
    implements $AchievementDataCopyWith<$Res> {
  factory _$$AchievementDataImplCopyWith(_$AchievementDataImpl value,
          $Res Function(_$AchievementDataImpl) then) =
      __$$AchievementDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Achievement> list,
      @JsonKey(name: 'achievement_num') int achievementNum});
}

/// @nodoc
class __$$AchievementDataImplCopyWithImpl<$Res>
    extends _$AchievementDataCopyWithImpl<$Res, _$AchievementDataImpl>
    implements _$$AchievementDataImplCopyWith<$Res> {
  __$$AchievementDataImplCopyWithImpl(
      _$AchievementDataImpl _value, $Res Function(_$AchievementDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of AchievementData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
    Object? achievementNum = null,
  }) {
    return _then(_$AchievementDataImpl(
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<Achievement>,
      achievementNum: null == achievementNum
          ? _value.achievementNum
          : achievementNum // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AchievementDataImpl implements _AchievementData {
  const _$AchievementDataImpl(
      {required final List<Achievement> list,
      @JsonKey(name: 'achievement_num') required this.achievementNum})
      : _list = list;

  factory _$AchievementDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$AchievementDataImplFromJson(json);

  final List<Achievement> _list;
  @override
  List<Achievement> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  @JsonKey(name: 'achievement_num')
  final int achievementNum;

  @override
  String toString() {
    return 'AchievementData(list: $list, achievementNum: $achievementNum)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AchievementDataImpl &&
            const DeepCollectionEquality().equals(other._list, _list) &&
            (identical(other.achievementNum, achievementNum) ||
                other.achievementNum == achievementNum));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_list), achievementNum);

  /// Create a copy of AchievementData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AchievementDataImplCopyWith<_$AchievementDataImpl> get copyWith =>
      __$$AchievementDataImplCopyWithImpl<_$AchievementDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AchievementDataImplToJson(
      this,
    );
  }
}

abstract class _AchievementData implements AchievementData {
  const factory _AchievementData(
      {required final List<Achievement> list,
      @JsonKey(name: 'achievement_num')
      required final int achievementNum}) = _$AchievementDataImpl;

  factory _AchievementData.fromJson(Map<String, dynamic> json) =
      _$AchievementDataImpl.fromJson;

  @override
  List<Achievement> get list;
  @override
  @JsonKey(name: 'achievement_num')
  int get achievementNum;

  /// Create a copy of AchievementData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AchievementDataImplCopyWith<_$AchievementDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Achievement _$AchievementFromJson(Map<String, dynamic> json) {
  return _Achievement.fromJson(json);
}

/// @nodoc
mixin _$Achievement {
  String get name => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  int get percentage => throw _privateConstructorUsedError;
  @JsonKey(name: 'finish_num')
  int get finishNum => throw _privateConstructorUsedError;
  @JsonKey(name: 'show_percent')
  bool get showPercent => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;

  /// Serializes this Achievement to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Achievement
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AchievementCopyWith<Achievement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AchievementCopyWith<$Res> {
  factory $AchievementCopyWith(
          Achievement value, $Res Function(Achievement) then) =
      _$AchievementCopyWithImpl<$Res, Achievement>;
  @useResult
  $Res call(
      {String name,
      String id,
      int percentage,
      @JsonKey(name: 'finish_num') int finishNum,
      @JsonKey(name: 'show_percent') bool showPercent,
      String icon});
}

/// @nodoc
class _$AchievementCopyWithImpl<$Res, $Val extends Achievement>
    implements $AchievementCopyWith<$Res> {
  _$AchievementCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Achievement
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = null,
    Object? percentage = null,
    Object? finishNum = null,
    Object? showPercent = null,
    Object? icon = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      percentage: null == percentage
          ? _value.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as int,
      finishNum: null == finishNum
          ? _value.finishNum
          : finishNum // ignore: cast_nullable_to_non_nullable
              as int,
      showPercent: null == showPercent
          ? _value.showPercent
          : showPercent // ignore: cast_nullable_to_non_nullable
              as bool,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AchievementImplCopyWith<$Res>
    implements $AchievementCopyWith<$Res> {
  factory _$$AchievementImplCopyWith(
          _$AchievementImpl value, $Res Function(_$AchievementImpl) then) =
      __$$AchievementImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String id,
      int percentage,
      @JsonKey(name: 'finish_num') int finishNum,
      @JsonKey(name: 'show_percent') bool showPercent,
      String icon});
}

/// @nodoc
class __$$AchievementImplCopyWithImpl<$Res>
    extends _$AchievementCopyWithImpl<$Res, _$AchievementImpl>
    implements _$$AchievementImplCopyWith<$Res> {
  __$$AchievementImplCopyWithImpl(
      _$AchievementImpl _value, $Res Function(_$AchievementImpl) _then)
      : super(_value, _then);

  /// Create a copy of Achievement
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = null,
    Object? percentage = null,
    Object? finishNum = null,
    Object? showPercent = null,
    Object? icon = null,
  }) {
    return _then(_$AchievementImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      percentage: null == percentage
          ? _value.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as int,
      finishNum: null == finishNum
          ? _value.finishNum
          : finishNum // ignore: cast_nullable_to_non_nullable
              as int,
      showPercent: null == showPercent
          ? _value.showPercent
          : showPercent // ignore: cast_nullable_to_non_nullable
              as bool,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AchievementImpl implements _Achievement {
  const _$AchievementImpl(
      {required this.name,
      required this.id,
      required this.percentage,
      @JsonKey(name: 'finish_num') required this.finishNum,
      @JsonKey(name: 'show_percent') required this.showPercent,
      required this.icon});

  factory _$AchievementImpl.fromJson(Map<String, dynamic> json) =>
      _$$AchievementImplFromJson(json);

  @override
  final String name;
  @override
  final String id;
  @override
  final int percentage;
  @override
  @JsonKey(name: 'finish_num')
  final int finishNum;
  @override
  @JsonKey(name: 'show_percent')
  final bool showPercent;
  @override
  final String icon;

  @override
  String toString() {
    return 'Achievement(name: $name, id: $id, percentage: $percentage, finishNum: $finishNum, showPercent: $showPercent, icon: $icon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AchievementImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.percentage, percentage) ||
                other.percentage == percentage) &&
            (identical(other.finishNum, finishNum) ||
                other.finishNum == finishNum) &&
            (identical(other.showPercent, showPercent) ||
                other.showPercent == showPercent) &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, id, percentage, finishNum, showPercent, icon);

  /// Create a copy of Achievement
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AchievementImplCopyWith<_$AchievementImpl> get copyWith =>
      __$$AchievementImplCopyWithImpl<_$AchievementImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AchievementImplToJson(
      this,
    );
  }
}

abstract class _Achievement implements Achievement {
  const factory _Achievement(
      {required final String name,
      required final String id,
      required final int percentage,
      @JsonKey(name: 'finish_num') required final int finishNum,
      @JsonKey(name: 'show_percent') required final bool showPercent,
      required final String icon}) = _$AchievementImpl;

  factory _Achievement.fromJson(Map<String, dynamic> json) =
      _$AchievementImpl.fromJson;

  @override
  String get name;
  @override
  String get id;
  @override
  int get percentage;
  @override
  @JsonKey(name: 'finish_num')
  int get finishNum;
  @override
  @JsonKey(name: 'show_percent')
  bool get showPercent;
  @override
  String get icon;

  /// Create a copy of Achievement
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AchievementImplCopyWith<_$AchievementImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

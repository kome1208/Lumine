// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'act_calendar_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ActCalendar _$ActCalendarFromJson(Map<String, dynamic> json) {
  return _ActCalendar.fromJson(json);
}

/// @nodoc
mixin _$ActCalendar {
  @JsonKey(name: 'avatar_card_pool_list')
  List<CardPool> get avatarCardPoolList => throw _privateConstructorUsedError;
  @JsonKey(name: 'weapon_card_pool_list')
  List<CardPool> get weaponCardPoolList =>
      throw _privateConstructorUsedError; // @JsonKey(name: 'mixed_card_pool_list') List<> mixedCardPoolList,
  @JsonKey(name: 'selected_avatar_card_pool_list')
  List<CardPool> get selectedAvatarCardPoolList =>
      throw _privateConstructorUsedError; // @JsonKey(name: 'selected_mixed_card_pool_list	') List<> selectedMixedCardPoolList,
  @JsonKey(name: 'act_list')
  List<ActItem> get actList => throw _privateConstructorUsedError;
  @JsonKey(name: 'fixed_act_list')
  List<ActItem> get fixedActList => throw _privateConstructorUsedError;

  /// Serializes this ActCalendar to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ActCalendar
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ActCalendarCopyWith<ActCalendar> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActCalendarCopyWith<$Res> {
  factory $ActCalendarCopyWith(
          ActCalendar value, $Res Function(ActCalendar) then) =
      _$ActCalendarCopyWithImpl<$Res, ActCalendar>;
  @useResult
  $Res call(
      {@JsonKey(name: 'avatar_card_pool_list')
      List<CardPool> avatarCardPoolList,
      @JsonKey(name: 'weapon_card_pool_list') List<CardPool> weaponCardPoolList,
      @JsonKey(name: 'selected_avatar_card_pool_list')
      List<CardPool> selectedAvatarCardPoolList,
      @JsonKey(name: 'act_list') List<ActItem> actList,
      @JsonKey(name: 'fixed_act_list') List<ActItem> fixedActList});
}

/// @nodoc
class _$ActCalendarCopyWithImpl<$Res, $Val extends ActCalendar>
    implements $ActCalendarCopyWith<$Res> {
  _$ActCalendarCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ActCalendar
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? avatarCardPoolList = null,
    Object? weaponCardPoolList = null,
    Object? selectedAvatarCardPoolList = null,
    Object? actList = null,
    Object? fixedActList = null,
  }) {
    return _then(_value.copyWith(
      avatarCardPoolList: null == avatarCardPoolList
          ? _value.avatarCardPoolList
          : avatarCardPoolList // ignore: cast_nullable_to_non_nullable
              as List<CardPool>,
      weaponCardPoolList: null == weaponCardPoolList
          ? _value.weaponCardPoolList
          : weaponCardPoolList // ignore: cast_nullable_to_non_nullable
              as List<CardPool>,
      selectedAvatarCardPoolList: null == selectedAvatarCardPoolList
          ? _value.selectedAvatarCardPoolList
          : selectedAvatarCardPoolList // ignore: cast_nullable_to_non_nullable
              as List<CardPool>,
      actList: null == actList
          ? _value.actList
          : actList // ignore: cast_nullable_to_non_nullable
              as List<ActItem>,
      fixedActList: null == fixedActList
          ? _value.fixedActList
          : fixedActList // ignore: cast_nullable_to_non_nullable
              as List<ActItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ActCalendarImplCopyWith<$Res>
    implements $ActCalendarCopyWith<$Res> {
  factory _$$ActCalendarImplCopyWith(
          _$ActCalendarImpl value, $Res Function(_$ActCalendarImpl) then) =
      __$$ActCalendarImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'avatar_card_pool_list')
      List<CardPool> avatarCardPoolList,
      @JsonKey(name: 'weapon_card_pool_list') List<CardPool> weaponCardPoolList,
      @JsonKey(name: 'selected_avatar_card_pool_list')
      List<CardPool> selectedAvatarCardPoolList,
      @JsonKey(name: 'act_list') List<ActItem> actList,
      @JsonKey(name: 'fixed_act_list') List<ActItem> fixedActList});
}

/// @nodoc
class __$$ActCalendarImplCopyWithImpl<$Res>
    extends _$ActCalendarCopyWithImpl<$Res, _$ActCalendarImpl>
    implements _$$ActCalendarImplCopyWith<$Res> {
  __$$ActCalendarImplCopyWithImpl(
      _$ActCalendarImpl _value, $Res Function(_$ActCalendarImpl) _then)
      : super(_value, _then);

  /// Create a copy of ActCalendar
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? avatarCardPoolList = null,
    Object? weaponCardPoolList = null,
    Object? selectedAvatarCardPoolList = null,
    Object? actList = null,
    Object? fixedActList = null,
  }) {
    return _then(_$ActCalendarImpl(
      avatarCardPoolList: null == avatarCardPoolList
          ? _value._avatarCardPoolList
          : avatarCardPoolList // ignore: cast_nullable_to_non_nullable
              as List<CardPool>,
      weaponCardPoolList: null == weaponCardPoolList
          ? _value._weaponCardPoolList
          : weaponCardPoolList // ignore: cast_nullable_to_non_nullable
              as List<CardPool>,
      selectedAvatarCardPoolList: null == selectedAvatarCardPoolList
          ? _value._selectedAvatarCardPoolList
          : selectedAvatarCardPoolList // ignore: cast_nullable_to_non_nullable
              as List<CardPool>,
      actList: null == actList
          ? _value._actList
          : actList // ignore: cast_nullable_to_non_nullable
              as List<ActItem>,
      fixedActList: null == fixedActList
          ? _value._fixedActList
          : fixedActList // ignore: cast_nullable_to_non_nullable
              as List<ActItem>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ActCalendarImpl implements _ActCalendar {
  const _$ActCalendarImpl(
      {@JsonKey(name: 'avatar_card_pool_list')
      required final List<CardPool> avatarCardPoolList,
      @JsonKey(name: 'weapon_card_pool_list')
      required final List<CardPool> weaponCardPoolList,
      @JsonKey(name: 'selected_avatar_card_pool_list')
      required final List<CardPool> selectedAvatarCardPoolList,
      @JsonKey(name: 'act_list') required final List<ActItem> actList,
      @JsonKey(name: 'fixed_act_list')
      required final List<ActItem> fixedActList})
      : _avatarCardPoolList = avatarCardPoolList,
        _weaponCardPoolList = weaponCardPoolList,
        _selectedAvatarCardPoolList = selectedAvatarCardPoolList,
        _actList = actList,
        _fixedActList = fixedActList;

  factory _$ActCalendarImpl.fromJson(Map<String, dynamic> json) =>
      _$$ActCalendarImplFromJson(json);

  final List<CardPool> _avatarCardPoolList;
  @override
  @JsonKey(name: 'avatar_card_pool_list')
  List<CardPool> get avatarCardPoolList {
    if (_avatarCardPoolList is EqualUnmodifiableListView)
      return _avatarCardPoolList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_avatarCardPoolList);
  }

  final List<CardPool> _weaponCardPoolList;
  @override
  @JsonKey(name: 'weapon_card_pool_list')
  List<CardPool> get weaponCardPoolList {
    if (_weaponCardPoolList is EqualUnmodifiableListView)
      return _weaponCardPoolList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weaponCardPoolList);
  }

// @JsonKey(name: 'mixed_card_pool_list') List<> mixedCardPoolList,
  final List<CardPool> _selectedAvatarCardPoolList;
// @JsonKey(name: 'mixed_card_pool_list') List<> mixedCardPoolList,
  @override
  @JsonKey(name: 'selected_avatar_card_pool_list')
  List<CardPool> get selectedAvatarCardPoolList {
    if (_selectedAvatarCardPoolList is EqualUnmodifiableListView)
      return _selectedAvatarCardPoolList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedAvatarCardPoolList);
  }

// @JsonKey(name: 'selected_mixed_card_pool_list	') List<> selectedMixedCardPoolList,
  final List<ActItem> _actList;
// @JsonKey(name: 'selected_mixed_card_pool_list	') List<> selectedMixedCardPoolList,
  @override
  @JsonKey(name: 'act_list')
  List<ActItem> get actList {
    if (_actList is EqualUnmodifiableListView) return _actList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_actList);
  }

  final List<ActItem> _fixedActList;
  @override
  @JsonKey(name: 'fixed_act_list')
  List<ActItem> get fixedActList {
    if (_fixedActList is EqualUnmodifiableListView) return _fixedActList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_fixedActList);
  }

  @override
  String toString() {
    return 'ActCalendar(avatarCardPoolList: $avatarCardPoolList, weaponCardPoolList: $weaponCardPoolList, selectedAvatarCardPoolList: $selectedAvatarCardPoolList, actList: $actList, fixedActList: $fixedActList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActCalendarImpl &&
            const DeepCollectionEquality()
                .equals(other._avatarCardPoolList, _avatarCardPoolList) &&
            const DeepCollectionEquality()
                .equals(other._weaponCardPoolList, _weaponCardPoolList) &&
            const DeepCollectionEquality().equals(
                other._selectedAvatarCardPoolList,
                _selectedAvatarCardPoolList) &&
            const DeepCollectionEquality().equals(other._actList, _actList) &&
            const DeepCollectionEquality()
                .equals(other._fixedActList, _fixedActList));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_avatarCardPoolList),
      const DeepCollectionEquality().hash(_weaponCardPoolList),
      const DeepCollectionEquality().hash(_selectedAvatarCardPoolList),
      const DeepCollectionEquality().hash(_actList),
      const DeepCollectionEquality().hash(_fixedActList));

  /// Create a copy of ActCalendar
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ActCalendarImplCopyWith<_$ActCalendarImpl> get copyWith =>
      __$$ActCalendarImplCopyWithImpl<_$ActCalendarImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ActCalendarImplToJson(
      this,
    );
  }
}

abstract class _ActCalendar implements ActCalendar {
  const factory _ActCalendar(
      {@JsonKey(name: 'avatar_card_pool_list')
      required final List<CardPool> avatarCardPoolList,
      @JsonKey(name: 'weapon_card_pool_list')
      required final List<CardPool> weaponCardPoolList,
      @JsonKey(name: 'selected_avatar_card_pool_list')
      required final List<CardPool> selectedAvatarCardPoolList,
      @JsonKey(name: 'act_list') required final List<ActItem> actList,
      @JsonKey(name: 'fixed_act_list')
      required final List<ActItem> fixedActList}) = _$ActCalendarImpl;

  factory _ActCalendar.fromJson(Map<String, dynamic> json) =
      _$ActCalendarImpl.fromJson;

  @override
  @JsonKey(name: 'avatar_card_pool_list')
  List<CardPool> get avatarCardPoolList;
  @override
  @JsonKey(name: 'weapon_card_pool_list')
  List<CardPool>
      get weaponCardPoolList; // @JsonKey(name: 'mixed_card_pool_list') List<> mixedCardPoolList,
  @override
  @JsonKey(name: 'selected_avatar_card_pool_list')
  List<CardPool>
      get selectedAvatarCardPoolList; // @JsonKey(name: 'selected_mixed_card_pool_list	') List<> selectedMixedCardPoolList,
  @override
  @JsonKey(name: 'act_list')
  List<ActItem> get actList;
  @override
  @JsonKey(name: 'fixed_act_list')
  List<ActItem> get fixedActList;

  /// Create a copy of ActCalendar
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ActCalendarImplCopyWith<_$ActCalendarImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CardPool _$CardPoolFromJson(Map<String, dynamic> json) {
  return _CardPool.fromJson(json);
}

/// @nodoc
mixin _$CardPool {
  @JsonKey(name: 'pool_id')
  int get poolId => throw _privateConstructorUsedError;
  @JsonKey(name: 'version_name')
  String get versionName => throw _privateConstructorUsedError;
  @JsonKey(name: 'pool_name')
  String get poolName => throw _privateConstructorUsedError;
  @JsonKey(name: 'pool_type')
  PoolType get poolType => throw _privateConstructorUsedError;
  List<CardPoolAvatar> get avatars => throw _privateConstructorUsedError;
  List<CardPoolWeapon> get weapon => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_timestamp')
  String get startTimestamp => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_timestamp')
  String get endTimestamp => throw _privateConstructorUsedError;
  @JsonKey(name: 'pool_status')
  PoolStatus get poolStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'countdown_seconds')
  int get countdownSeconds => throw _privateConstructorUsedError;

  /// Serializes this CardPool to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CardPool
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CardPoolCopyWith<CardPool> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardPoolCopyWith<$Res> {
  factory $CardPoolCopyWith(CardPool value, $Res Function(CardPool) then) =
      _$CardPoolCopyWithImpl<$Res, CardPool>;
  @useResult
  $Res call(
      {@JsonKey(name: 'pool_id') int poolId,
      @JsonKey(name: 'version_name') String versionName,
      @JsonKey(name: 'pool_name') String poolName,
      @JsonKey(name: 'pool_type') PoolType poolType,
      List<CardPoolAvatar> avatars,
      List<CardPoolWeapon> weapon,
      @JsonKey(name: 'start_timestamp') String startTimestamp,
      @JsonKey(name: 'end_timestamp') String endTimestamp,
      @JsonKey(name: 'pool_status') PoolStatus poolStatus,
      @JsonKey(name: 'countdown_seconds') int countdownSeconds});
}

/// @nodoc
class _$CardPoolCopyWithImpl<$Res, $Val extends CardPool>
    implements $CardPoolCopyWith<$Res> {
  _$CardPoolCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CardPool
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? poolId = null,
    Object? versionName = null,
    Object? poolName = null,
    Object? poolType = null,
    Object? avatars = null,
    Object? weapon = null,
    Object? startTimestamp = null,
    Object? endTimestamp = null,
    Object? poolStatus = null,
    Object? countdownSeconds = null,
  }) {
    return _then(_value.copyWith(
      poolId: null == poolId
          ? _value.poolId
          : poolId // ignore: cast_nullable_to_non_nullable
              as int,
      versionName: null == versionName
          ? _value.versionName
          : versionName // ignore: cast_nullable_to_non_nullable
              as String,
      poolName: null == poolName
          ? _value.poolName
          : poolName // ignore: cast_nullable_to_non_nullable
              as String,
      poolType: null == poolType
          ? _value.poolType
          : poolType // ignore: cast_nullable_to_non_nullable
              as PoolType,
      avatars: null == avatars
          ? _value.avatars
          : avatars // ignore: cast_nullable_to_non_nullable
              as List<CardPoolAvatar>,
      weapon: null == weapon
          ? _value.weapon
          : weapon // ignore: cast_nullable_to_non_nullable
              as List<CardPoolWeapon>,
      startTimestamp: null == startTimestamp
          ? _value.startTimestamp
          : startTimestamp // ignore: cast_nullable_to_non_nullable
              as String,
      endTimestamp: null == endTimestamp
          ? _value.endTimestamp
          : endTimestamp // ignore: cast_nullable_to_non_nullable
              as String,
      poolStatus: null == poolStatus
          ? _value.poolStatus
          : poolStatus // ignore: cast_nullable_to_non_nullable
              as PoolStatus,
      countdownSeconds: null == countdownSeconds
          ? _value.countdownSeconds
          : countdownSeconds // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CardPoolImplCopyWith<$Res>
    implements $CardPoolCopyWith<$Res> {
  factory _$$CardPoolImplCopyWith(
          _$CardPoolImpl value, $Res Function(_$CardPoolImpl) then) =
      __$$CardPoolImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'pool_id') int poolId,
      @JsonKey(name: 'version_name') String versionName,
      @JsonKey(name: 'pool_name') String poolName,
      @JsonKey(name: 'pool_type') PoolType poolType,
      List<CardPoolAvatar> avatars,
      List<CardPoolWeapon> weapon,
      @JsonKey(name: 'start_timestamp') String startTimestamp,
      @JsonKey(name: 'end_timestamp') String endTimestamp,
      @JsonKey(name: 'pool_status') PoolStatus poolStatus,
      @JsonKey(name: 'countdown_seconds') int countdownSeconds});
}

/// @nodoc
class __$$CardPoolImplCopyWithImpl<$Res>
    extends _$CardPoolCopyWithImpl<$Res, _$CardPoolImpl>
    implements _$$CardPoolImplCopyWith<$Res> {
  __$$CardPoolImplCopyWithImpl(
      _$CardPoolImpl _value, $Res Function(_$CardPoolImpl) _then)
      : super(_value, _then);

  /// Create a copy of CardPool
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? poolId = null,
    Object? versionName = null,
    Object? poolName = null,
    Object? poolType = null,
    Object? avatars = null,
    Object? weapon = null,
    Object? startTimestamp = null,
    Object? endTimestamp = null,
    Object? poolStatus = null,
    Object? countdownSeconds = null,
  }) {
    return _then(_$CardPoolImpl(
      poolId: null == poolId
          ? _value.poolId
          : poolId // ignore: cast_nullable_to_non_nullable
              as int,
      versionName: null == versionName
          ? _value.versionName
          : versionName // ignore: cast_nullable_to_non_nullable
              as String,
      poolName: null == poolName
          ? _value.poolName
          : poolName // ignore: cast_nullable_to_non_nullable
              as String,
      poolType: null == poolType
          ? _value.poolType
          : poolType // ignore: cast_nullable_to_non_nullable
              as PoolType,
      avatars: null == avatars
          ? _value._avatars
          : avatars // ignore: cast_nullable_to_non_nullable
              as List<CardPoolAvatar>,
      weapon: null == weapon
          ? _value._weapon
          : weapon // ignore: cast_nullable_to_non_nullable
              as List<CardPoolWeapon>,
      startTimestamp: null == startTimestamp
          ? _value.startTimestamp
          : startTimestamp // ignore: cast_nullable_to_non_nullable
              as String,
      endTimestamp: null == endTimestamp
          ? _value.endTimestamp
          : endTimestamp // ignore: cast_nullable_to_non_nullable
              as String,
      poolStatus: null == poolStatus
          ? _value.poolStatus
          : poolStatus // ignore: cast_nullable_to_non_nullable
              as PoolStatus,
      countdownSeconds: null == countdownSeconds
          ? _value.countdownSeconds
          : countdownSeconds // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CardPoolImpl implements _CardPool {
  const _$CardPoolImpl(
      {@JsonKey(name: 'pool_id') required this.poolId,
      @JsonKey(name: 'version_name') required this.versionName,
      @JsonKey(name: 'pool_name') required this.poolName,
      @JsonKey(name: 'pool_type') required this.poolType,
      required final List<CardPoolAvatar> avatars,
      required final List<CardPoolWeapon> weapon,
      @JsonKey(name: 'start_timestamp') required this.startTimestamp,
      @JsonKey(name: 'end_timestamp') required this.endTimestamp,
      @JsonKey(name: 'pool_status') required this.poolStatus,
      @JsonKey(name: 'countdown_seconds') required this.countdownSeconds})
      : _avatars = avatars,
        _weapon = weapon;

  factory _$CardPoolImpl.fromJson(Map<String, dynamic> json) =>
      _$$CardPoolImplFromJson(json);

  @override
  @JsonKey(name: 'pool_id')
  final int poolId;
  @override
  @JsonKey(name: 'version_name')
  final String versionName;
  @override
  @JsonKey(name: 'pool_name')
  final String poolName;
  @override
  @JsonKey(name: 'pool_type')
  final PoolType poolType;
  final List<CardPoolAvatar> _avatars;
  @override
  List<CardPoolAvatar> get avatars {
    if (_avatars is EqualUnmodifiableListView) return _avatars;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_avatars);
  }

  final List<CardPoolWeapon> _weapon;
  @override
  List<CardPoolWeapon> get weapon {
    if (_weapon is EqualUnmodifiableListView) return _weapon;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weapon);
  }

  @override
  @JsonKey(name: 'start_timestamp')
  final String startTimestamp;
  @override
  @JsonKey(name: 'end_timestamp')
  final String endTimestamp;
  @override
  @JsonKey(name: 'pool_status')
  final PoolStatus poolStatus;
  @override
  @JsonKey(name: 'countdown_seconds')
  final int countdownSeconds;

  @override
  String toString() {
    return 'CardPool(poolId: $poolId, versionName: $versionName, poolName: $poolName, poolType: $poolType, avatars: $avatars, weapon: $weapon, startTimestamp: $startTimestamp, endTimestamp: $endTimestamp, poolStatus: $poolStatus, countdownSeconds: $countdownSeconds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CardPoolImpl &&
            (identical(other.poolId, poolId) || other.poolId == poolId) &&
            (identical(other.versionName, versionName) ||
                other.versionName == versionName) &&
            (identical(other.poolName, poolName) ||
                other.poolName == poolName) &&
            (identical(other.poolType, poolType) ||
                other.poolType == poolType) &&
            const DeepCollectionEquality().equals(other._avatars, _avatars) &&
            const DeepCollectionEquality().equals(other._weapon, _weapon) &&
            (identical(other.startTimestamp, startTimestamp) ||
                other.startTimestamp == startTimestamp) &&
            (identical(other.endTimestamp, endTimestamp) ||
                other.endTimestamp == endTimestamp) &&
            (identical(other.poolStatus, poolStatus) ||
                other.poolStatus == poolStatus) &&
            (identical(other.countdownSeconds, countdownSeconds) ||
                other.countdownSeconds == countdownSeconds));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      poolId,
      versionName,
      poolName,
      poolType,
      const DeepCollectionEquality().hash(_avatars),
      const DeepCollectionEquality().hash(_weapon),
      startTimestamp,
      endTimestamp,
      poolStatus,
      countdownSeconds);

  /// Create a copy of CardPool
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CardPoolImplCopyWith<_$CardPoolImpl> get copyWith =>
      __$$CardPoolImplCopyWithImpl<_$CardPoolImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CardPoolImplToJson(
      this,
    );
  }
}

abstract class _CardPool implements CardPool {
  const factory _CardPool(
      {@JsonKey(name: 'pool_id') required final int poolId,
      @JsonKey(name: 'version_name') required final String versionName,
      @JsonKey(name: 'pool_name') required final String poolName,
      @JsonKey(name: 'pool_type') required final PoolType poolType,
      required final List<CardPoolAvatar> avatars,
      required final List<CardPoolWeapon> weapon,
      @JsonKey(name: 'start_timestamp') required final String startTimestamp,
      @JsonKey(name: 'end_timestamp') required final String endTimestamp,
      @JsonKey(name: 'pool_status') required final PoolStatus poolStatus,
      @JsonKey(name: 'countdown_seconds')
      required final int countdownSeconds}) = _$CardPoolImpl;

  factory _CardPool.fromJson(Map<String, dynamic> json) =
      _$CardPoolImpl.fromJson;

  @override
  @JsonKey(name: 'pool_id')
  int get poolId;
  @override
  @JsonKey(name: 'version_name')
  String get versionName;
  @override
  @JsonKey(name: 'pool_name')
  String get poolName;
  @override
  @JsonKey(name: 'pool_type')
  PoolType get poolType;
  @override
  List<CardPoolAvatar> get avatars;
  @override
  List<CardPoolWeapon> get weapon;
  @override
  @JsonKey(name: 'start_timestamp')
  String get startTimestamp;
  @override
  @JsonKey(name: 'end_timestamp')
  String get endTimestamp;
  @override
  @JsonKey(name: 'pool_status')
  PoolStatus get poolStatus;
  @override
  @JsonKey(name: 'countdown_seconds')
  int get countdownSeconds;

  /// Create a copy of CardPool
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CardPoolImplCopyWith<_$CardPoolImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CardPoolAvatar _$CardPoolAvatarFromJson(Map<String, dynamic> json) {
  return _CardPoolAvatar.fromJson(json);
}

/// @nodoc
mixin _$CardPoolAvatar {
  int get id => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get element => throw _privateConstructorUsedError;
  int get rarity => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_invisible')
  bool get isInvisible => throw _privateConstructorUsedError;

  /// Serializes this CardPoolAvatar to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CardPoolAvatar
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CardPoolAvatarCopyWith<CardPoolAvatar> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardPoolAvatarCopyWith<$Res> {
  factory $CardPoolAvatarCopyWith(
          CardPoolAvatar value, $Res Function(CardPoolAvatar) then) =
      _$CardPoolAvatarCopyWithImpl<$Res, CardPoolAvatar>;
  @useResult
  $Res call(
      {int id,
      String icon,
      String name,
      String element,
      int rarity,
      @JsonKey(name: 'is_invisible') bool isInvisible});
}

/// @nodoc
class _$CardPoolAvatarCopyWithImpl<$Res, $Val extends CardPoolAvatar>
    implements $CardPoolAvatarCopyWith<$Res> {
  _$CardPoolAvatarCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CardPoolAvatar
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? icon = null,
    Object? name = null,
    Object? element = null,
    Object? rarity = null,
    Object? isInvisible = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      element: null == element
          ? _value.element
          : element // ignore: cast_nullable_to_non_nullable
              as String,
      rarity: null == rarity
          ? _value.rarity
          : rarity // ignore: cast_nullable_to_non_nullable
              as int,
      isInvisible: null == isInvisible
          ? _value.isInvisible
          : isInvisible // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CardPoolAvatarImplCopyWith<$Res>
    implements $CardPoolAvatarCopyWith<$Res> {
  factory _$$CardPoolAvatarImplCopyWith(_$CardPoolAvatarImpl value,
          $Res Function(_$CardPoolAvatarImpl) then) =
      __$$CardPoolAvatarImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String icon,
      String name,
      String element,
      int rarity,
      @JsonKey(name: 'is_invisible') bool isInvisible});
}

/// @nodoc
class __$$CardPoolAvatarImplCopyWithImpl<$Res>
    extends _$CardPoolAvatarCopyWithImpl<$Res, _$CardPoolAvatarImpl>
    implements _$$CardPoolAvatarImplCopyWith<$Res> {
  __$$CardPoolAvatarImplCopyWithImpl(
      _$CardPoolAvatarImpl _value, $Res Function(_$CardPoolAvatarImpl) _then)
      : super(_value, _then);

  /// Create a copy of CardPoolAvatar
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? icon = null,
    Object? name = null,
    Object? element = null,
    Object? rarity = null,
    Object? isInvisible = null,
  }) {
    return _then(_$CardPoolAvatarImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      element: null == element
          ? _value.element
          : element // ignore: cast_nullable_to_non_nullable
              as String,
      rarity: null == rarity
          ? _value.rarity
          : rarity // ignore: cast_nullable_to_non_nullable
              as int,
      isInvisible: null == isInvisible
          ? _value.isInvisible
          : isInvisible // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CardPoolAvatarImpl implements _CardPoolAvatar {
  const _$CardPoolAvatarImpl(
      {required this.id,
      required this.icon,
      required this.name,
      required this.element,
      required this.rarity,
      @JsonKey(name: 'is_invisible') required this.isInvisible});

  factory _$CardPoolAvatarImpl.fromJson(Map<String, dynamic> json) =>
      _$$CardPoolAvatarImplFromJson(json);

  @override
  final int id;
  @override
  final String icon;
  @override
  final String name;
  @override
  final String element;
  @override
  final int rarity;
  @override
  @JsonKey(name: 'is_invisible')
  final bool isInvisible;

  @override
  String toString() {
    return 'CardPoolAvatar(id: $id, icon: $icon, name: $name, element: $element, rarity: $rarity, isInvisible: $isInvisible)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CardPoolAvatarImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.element, element) || other.element == element) &&
            (identical(other.rarity, rarity) || other.rarity == rarity) &&
            (identical(other.isInvisible, isInvisible) ||
                other.isInvisible == isInvisible));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, icon, name, element, rarity, isInvisible);

  /// Create a copy of CardPoolAvatar
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CardPoolAvatarImplCopyWith<_$CardPoolAvatarImpl> get copyWith =>
      __$$CardPoolAvatarImplCopyWithImpl<_$CardPoolAvatarImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CardPoolAvatarImplToJson(
      this,
    );
  }
}

abstract class _CardPoolAvatar implements CardPoolAvatar {
  const factory _CardPoolAvatar(
          {required final int id,
          required final String icon,
          required final String name,
          required final String element,
          required final int rarity,
          @JsonKey(name: 'is_invisible') required final bool isInvisible}) =
      _$CardPoolAvatarImpl;

  factory _CardPoolAvatar.fromJson(Map<String, dynamic> json) =
      _$CardPoolAvatarImpl.fromJson;

  @override
  int get id;
  @override
  String get icon;
  @override
  String get name;
  @override
  String get element;
  @override
  int get rarity;
  @override
  @JsonKey(name: 'is_invisible')
  bool get isInvisible;

  /// Create a copy of CardPoolAvatar
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CardPoolAvatarImplCopyWith<_$CardPoolAvatarImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CardPoolWeapon _$CardPoolWeaponFromJson(Map<String, dynamic> json) {
  return _CardPoolWeapon.fromJson(json);
}

/// @nodoc
mixin _$CardPoolWeapon {
  int get id => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;
  int get rarity => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'wiki_url')
  String get wikiUrl => throw _privateConstructorUsedError;

  /// Serializes this CardPoolWeapon to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CardPoolWeapon
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CardPoolWeaponCopyWith<CardPoolWeapon> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardPoolWeaponCopyWith<$Res> {
  factory $CardPoolWeaponCopyWith(
          CardPoolWeapon value, $Res Function(CardPoolWeapon) then) =
      _$CardPoolWeaponCopyWithImpl<$Res, CardPoolWeapon>;
  @useResult
  $Res call(
      {int id,
      String icon,
      int rarity,
      String name,
      @JsonKey(name: 'wiki_url') String wikiUrl});
}

/// @nodoc
class _$CardPoolWeaponCopyWithImpl<$Res, $Val extends CardPoolWeapon>
    implements $CardPoolWeaponCopyWith<$Res> {
  _$CardPoolWeaponCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CardPoolWeapon
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? icon = null,
    Object? rarity = null,
    Object? name = null,
    Object? wikiUrl = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      rarity: null == rarity
          ? _value.rarity
          : rarity // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      wikiUrl: null == wikiUrl
          ? _value.wikiUrl
          : wikiUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CardPoolWeaponImplCopyWith<$Res>
    implements $CardPoolWeaponCopyWith<$Res> {
  factory _$$CardPoolWeaponImplCopyWith(_$CardPoolWeaponImpl value,
          $Res Function(_$CardPoolWeaponImpl) then) =
      __$$CardPoolWeaponImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String icon,
      int rarity,
      String name,
      @JsonKey(name: 'wiki_url') String wikiUrl});
}

/// @nodoc
class __$$CardPoolWeaponImplCopyWithImpl<$Res>
    extends _$CardPoolWeaponCopyWithImpl<$Res, _$CardPoolWeaponImpl>
    implements _$$CardPoolWeaponImplCopyWith<$Res> {
  __$$CardPoolWeaponImplCopyWithImpl(
      _$CardPoolWeaponImpl _value, $Res Function(_$CardPoolWeaponImpl) _then)
      : super(_value, _then);

  /// Create a copy of CardPoolWeapon
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? icon = null,
    Object? rarity = null,
    Object? name = null,
    Object? wikiUrl = null,
  }) {
    return _then(_$CardPoolWeaponImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      rarity: null == rarity
          ? _value.rarity
          : rarity // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      wikiUrl: null == wikiUrl
          ? _value.wikiUrl
          : wikiUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CardPoolWeaponImpl implements _CardPoolWeapon {
  const _$CardPoolWeaponImpl(
      {required this.id,
      required this.icon,
      required this.rarity,
      required this.name,
      @JsonKey(name: 'wiki_url') required this.wikiUrl});

  factory _$CardPoolWeaponImpl.fromJson(Map<String, dynamic> json) =>
      _$$CardPoolWeaponImplFromJson(json);

  @override
  final int id;
  @override
  final String icon;
  @override
  final int rarity;
  @override
  final String name;
  @override
  @JsonKey(name: 'wiki_url')
  final String wikiUrl;

  @override
  String toString() {
    return 'CardPoolWeapon(id: $id, icon: $icon, rarity: $rarity, name: $name, wikiUrl: $wikiUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CardPoolWeaponImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.rarity, rarity) || other.rarity == rarity) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.wikiUrl, wikiUrl) || other.wikiUrl == wikiUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, icon, rarity, name, wikiUrl);

  /// Create a copy of CardPoolWeapon
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CardPoolWeaponImplCopyWith<_$CardPoolWeaponImpl> get copyWith =>
      __$$CardPoolWeaponImplCopyWithImpl<_$CardPoolWeaponImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CardPoolWeaponImplToJson(
      this,
    );
  }
}

abstract class _CardPoolWeapon implements CardPoolWeapon {
  const factory _CardPoolWeapon(
          {required final int id,
          required final String icon,
          required final int rarity,
          required final String name,
          @JsonKey(name: 'wiki_url') required final String wikiUrl}) =
      _$CardPoolWeaponImpl;

  factory _CardPoolWeapon.fromJson(Map<String, dynamic> json) =
      _$CardPoolWeaponImpl.fromJson;

  @override
  int get id;
  @override
  String get icon;
  @override
  int get rarity;
  @override
  String get name;
  @override
  @JsonKey(name: 'wiki_url')
  String get wikiUrl;

  /// Create a copy of CardPoolWeapon
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CardPoolWeaponImplCopyWith<_$CardPoolWeaponImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ActItem _$ActItemFromJson(Map<String, dynamic> json) {
  return _ActItem.fromJson(json);
}

/// @nodoc
mixin _$ActItem {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  ActType get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_timestamp')
  String get startTimestamp => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_timestamp')
  String get endTimestamp => throw _privateConstructorUsedError;
  String get desc => throw _privateConstructorUsedError;
  String get strategy => throw _privateConstructorUsedError;
  @JsonKey(name: 'countdown_seconds')
  int get countdownSeconds => throw _privateConstructorUsedError;
  PoolStatus get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'reward_list')
  List<ActReward> get rewardList => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_finished')
  bool get isFinished => throw _privateConstructorUsedError;
  @JsonKey(name: 'explore_detail')
  ExploreDetail? get exploreDetail => throw _privateConstructorUsedError;
  @JsonKey(name: 'liben_detail')
  LibenDetail? get libenDetail => throw _privateConstructorUsedError;
  @JsonKey(name: 'role_combat_detail')
  RoleCombatDetail? get roleCombatDetail => throw _privateConstructorUsedError;
  @JsonKey(name: 'tower_detail')
  TowerDetail? get towerDetail => throw _privateConstructorUsedError;

  /// Serializes this ActItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ActItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ActItemCopyWith<ActItem> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActItemCopyWith<$Res> {
  factory $ActItemCopyWith(ActItem value, $Res Function(ActItem) then) =
      _$ActItemCopyWithImpl<$Res, ActItem>;
  @useResult
  $Res call(
      {int id,
      String name,
      ActType type,
      @JsonKey(name: 'start_timestamp') String startTimestamp,
      @JsonKey(name: 'end_timestamp') String endTimestamp,
      String desc,
      String strategy,
      @JsonKey(name: 'countdown_seconds') int countdownSeconds,
      PoolStatus status,
      @JsonKey(name: 'reward_list') List<ActReward> rewardList,
      @JsonKey(name: 'is_finished') bool isFinished,
      @JsonKey(name: 'explore_detail') ExploreDetail? exploreDetail,
      @JsonKey(name: 'liben_detail') LibenDetail? libenDetail,
      @JsonKey(name: 'role_combat_detail') RoleCombatDetail? roleCombatDetail,
      @JsonKey(name: 'tower_detail') TowerDetail? towerDetail});

  $ExploreDetailCopyWith<$Res>? get exploreDetail;
  $LibenDetailCopyWith<$Res>? get libenDetail;
  $RoleCombatDetailCopyWith<$Res>? get roleCombatDetail;
  $TowerDetailCopyWith<$Res>? get towerDetail;
}

/// @nodoc
class _$ActItemCopyWithImpl<$Res, $Val extends ActItem>
    implements $ActItemCopyWith<$Res> {
  _$ActItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ActItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? type = null,
    Object? startTimestamp = null,
    Object? endTimestamp = null,
    Object? desc = null,
    Object? strategy = null,
    Object? countdownSeconds = null,
    Object? status = null,
    Object? rewardList = null,
    Object? isFinished = null,
    Object? exploreDetail = freezed,
    Object? libenDetail = freezed,
    Object? roleCombatDetail = freezed,
    Object? towerDetail = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ActType,
      startTimestamp: null == startTimestamp
          ? _value.startTimestamp
          : startTimestamp // ignore: cast_nullable_to_non_nullable
              as String,
      endTimestamp: null == endTimestamp
          ? _value.endTimestamp
          : endTimestamp // ignore: cast_nullable_to_non_nullable
              as String,
      desc: null == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String,
      strategy: null == strategy
          ? _value.strategy
          : strategy // ignore: cast_nullable_to_non_nullable
              as String,
      countdownSeconds: null == countdownSeconds
          ? _value.countdownSeconds
          : countdownSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PoolStatus,
      rewardList: null == rewardList
          ? _value.rewardList
          : rewardList // ignore: cast_nullable_to_non_nullable
              as List<ActReward>,
      isFinished: null == isFinished
          ? _value.isFinished
          : isFinished // ignore: cast_nullable_to_non_nullable
              as bool,
      exploreDetail: freezed == exploreDetail
          ? _value.exploreDetail
          : exploreDetail // ignore: cast_nullable_to_non_nullable
              as ExploreDetail?,
      libenDetail: freezed == libenDetail
          ? _value.libenDetail
          : libenDetail // ignore: cast_nullable_to_non_nullable
              as LibenDetail?,
      roleCombatDetail: freezed == roleCombatDetail
          ? _value.roleCombatDetail
          : roleCombatDetail // ignore: cast_nullable_to_non_nullable
              as RoleCombatDetail?,
      towerDetail: freezed == towerDetail
          ? _value.towerDetail
          : towerDetail // ignore: cast_nullable_to_non_nullable
              as TowerDetail?,
    ) as $Val);
  }

  /// Create a copy of ActItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ExploreDetailCopyWith<$Res>? get exploreDetail {
    if (_value.exploreDetail == null) {
      return null;
    }

    return $ExploreDetailCopyWith<$Res>(_value.exploreDetail!, (value) {
      return _then(_value.copyWith(exploreDetail: value) as $Val);
    });
  }

  /// Create a copy of ActItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LibenDetailCopyWith<$Res>? get libenDetail {
    if (_value.libenDetail == null) {
      return null;
    }

    return $LibenDetailCopyWith<$Res>(_value.libenDetail!, (value) {
      return _then(_value.copyWith(libenDetail: value) as $Val);
    });
  }

  /// Create a copy of ActItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RoleCombatDetailCopyWith<$Res>? get roleCombatDetail {
    if (_value.roleCombatDetail == null) {
      return null;
    }

    return $RoleCombatDetailCopyWith<$Res>(_value.roleCombatDetail!, (value) {
      return _then(_value.copyWith(roleCombatDetail: value) as $Val);
    });
  }

  /// Create a copy of ActItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TowerDetailCopyWith<$Res>? get towerDetail {
    if (_value.towerDetail == null) {
      return null;
    }

    return $TowerDetailCopyWith<$Res>(_value.towerDetail!, (value) {
      return _then(_value.copyWith(towerDetail: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ActItemImplCopyWith<$Res> implements $ActItemCopyWith<$Res> {
  factory _$$ActItemImplCopyWith(
          _$ActItemImpl value, $Res Function(_$ActItemImpl) then) =
      __$$ActItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      ActType type,
      @JsonKey(name: 'start_timestamp') String startTimestamp,
      @JsonKey(name: 'end_timestamp') String endTimestamp,
      String desc,
      String strategy,
      @JsonKey(name: 'countdown_seconds') int countdownSeconds,
      PoolStatus status,
      @JsonKey(name: 'reward_list') List<ActReward> rewardList,
      @JsonKey(name: 'is_finished') bool isFinished,
      @JsonKey(name: 'explore_detail') ExploreDetail? exploreDetail,
      @JsonKey(name: 'liben_detail') LibenDetail? libenDetail,
      @JsonKey(name: 'role_combat_detail') RoleCombatDetail? roleCombatDetail,
      @JsonKey(name: 'tower_detail') TowerDetail? towerDetail});

  @override
  $ExploreDetailCopyWith<$Res>? get exploreDetail;
  @override
  $LibenDetailCopyWith<$Res>? get libenDetail;
  @override
  $RoleCombatDetailCopyWith<$Res>? get roleCombatDetail;
  @override
  $TowerDetailCopyWith<$Res>? get towerDetail;
}

/// @nodoc
class __$$ActItemImplCopyWithImpl<$Res>
    extends _$ActItemCopyWithImpl<$Res, _$ActItemImpl>
    implements _$$ActItemImplCopyWith<$Res> {
  __$$ActItemImplCopyWithImpl(
      _$ActItemImpl _value, $Res Function(_$ActItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of ActItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? type = null,
    Object? startTimestamp = null,
    Object? endTimestamp = null,
    Object? desc = null,
    Object? strategy = null,
    Object? countdownSeconds = null,
    Object? status = null,
    Object? rewardList = null,
    Object? isFinished = null,
    Object? exploreDetail = freezed,
    Object? libenDetail = freezed,
    Object? roleCombatDetail = freezed,
    Object? towerDetail = freezed,
  }) {
    return _then(_$ActItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ActType,
      startTimestamp: null == startTimestamp
          ? _value.startTimestamp
          : startTimestamp // ignore: cast_nullable_to_non_nullable
              as String,
      endTimestamp: null == endTimestamp
          ? _value.endTimestamp
          : endTimestamp // ignore: cast_nullable_to_non_nullable
              as String,
      desc: null == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String,
      strategy: null == strategy
          ? _value.strategy
          : strategy // ignore: cast_nullable_to_non_nullable
              as String,
      countdownSeconds: null == countdownSeconds
          ? _value.countdownSeconds
          : countdownSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PoolStatus,
      rewardList: null == rewardList
          ? _value._rewardList
          : rewardList // ignore: cast_nullable_to_non_nullable
              as List<ActReward>,
      isFinished: null == isFinished
          ? _value.isFinished
          : isFinished // ignore: cast_nullable_to_non_nullable
              as bool,
      exploreDetail: freezed == exploreDetail
          ? _value.exploreDetail
          : exploreDetail // ignore: cast_nullable_to_non_nullable
              as ExploreDetail?,
      libenDetail: freezed == libenDetail
          ? _value.libenDetail
          : libenDetail // ignore: cast_nullable_to_non_nullable
              as LibenDetail?,
      roleCombatDetail: freezed == roleCombatDetail
          ? _value.roleCombatDetail
          : roleCombatDetail // ignore: cast_nullable_to_non_nullable
              as RoleCombatDetail?,
      towerDetail: freezed == towerDetail
          ? _value.towerDetail
          : towerDetail // ignore: cast_nullable_to_non_nullable
              as TowerDetail?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ActItemImpl implements _ActItem {
  const _$ActItemImpl(
      {required this.id,
      required this.name,
      required this.type,
      @JsonKey(name: 'start_timestamp') required this.startTimestamp,
      @JsonKey(name: 'end_timestamp') required this.endTimestamp,
      required this.desc,
      required this.strategy,
      @JsonKey(name: 'countdown_seconds') required this.countdownSeconds,
      required this.status,
      @JsonKey(name: 'reward_list') required final List<ActReward> rewardList,
      @JsonKey(name: 'is_finished') required this.isFinished,
      @JsonKey(name: 'explore_detail') this.exploreDetail,
      @JsonKey(name: 'liben_detail') this.libenDetail,
      @JsonKey(name: 'role_combat_detail') this.roleCombatDetail,
      @JsonKey(name: 'tower_detail') this.towerDetail})
      : _rewardList = rewardList;

  factory _$ActItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$ActItemImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final ActType type;
  @override
  @JsonKey(name: 'start_timestamp')
  final String startTimestamp;
  @override
  @JsonKey(name: 'end_timestamp')
  final String endTimestamp;
  @override
  final String desc;
  @override
  final String strategy;
  @override
  @JsonKey(name: 'countdown_seconds')
  final int countdownSeconds;
  @override
  final PoolStatus status;
  final List<ActReward> _rewardList;
  @override
  @JsonKey(name: 'reward_list')
  List<ActReward> get rewardList {
    if (_rewardList is EqualUnmodifiableListView) return _rewardList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rewardList);
  }

  @override
  @JsonKey(name: 'is_finished')
  final bool isFinished;
  @override
  @JsonKey(name: 'explore_detail')
  final ExploreDetail? exploreDetail;
  @override
  @JsonKey(name: 'liben_detail')
  final LibenDetail? libenDetail;
  @override
  @JsonKey(name: 'role_combat_detail')
  final RoleCombatDetail? roleCombatDetail;
  @override
  @JsonKey(name: 'tower_detail')
  final TowerDetail? towerDetail;

  @override
  String toString() {
    return 'ActItem(id: $id, name: $name, type: $type, startTimestamp: $startTimestamp, endTimestamp: $endTimestamp, desc: $desc, strategy: $strategy, countdownSeconds: $countdownSeconds, status: $status, rewardList: $rewardList, isFinished: $isFinished, exploreDetail: $exploreDetail, libenDetail: $libenDetail, roleCombatDetail: $roleCombatDetail, towerDetail: $towerDetail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.startTimestamp, startTimestamp) ||
                other.startTimestamp == startTimestamp) &&
            (identical(other.endTimestamp, endTimestamp) ||
                other.endTimestamp == endTimestamp) &&
            (identical(other.desc, desc) || other.desc == desc) &&
            (identical(other.strategy, strategy) ||
                other.strategy == strategy) &&
            (identical(other.countdownSeconds, countdownSeconds) ||
                other.countdownSeconds == countdownSeconds) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._rewardList, _rewardList) &&
            (identical(other.isFinished, isFinished) ||
                other.isFinished == isFinished) &&
            (identical(other.exploreDetail, exploreDetail) ||
                other.exploreDetail == exploreDetail) &&
            (identical(other.libenDetail, libenDetail) ||
                other.libenDetail == libenDetail) &&
            (identical(other.roleCombatDetail, roleCombatDetail) ||
                other.roleCombatDetail == roleCombatDetail) &&
            (identical(other.towerDetail, towerDetail) ||
                other.towerDetail == towerDetail));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      type,
      startTimestamp,
      endTimestamp,
      desc,
      strategy,
      countdownSeconds,
      status,
      const DeepCollectionEquality().hash(_rewardList),
      isFinished,
      exploreDetail,
      libenDetail,
      roleCombatDetail,
      towerDetail);

  /// Create a copy of ActItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ActItemImplCopyWith<_$ActItemImpl> get copyWith =>
      __$$ActItemImplCopyWithImpl<_$ActItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ActItemImplToJson(
      this,
    );
  }
}

abstract class _ActItem implements ActItem {
  const factory _ActItem(
      {required final int id,
      required final String name,
      required final ActType type,
      @JsonKey(name: 'start_timestamp') required final String startTimestamp,
      @JsonKey(name: 'end_timestamp') required final String endTimestamp,
      required final String desc,
      required final String strategy,
      @JsonKey(name: 'countdown_seconds') required final int countdownSeconds,
      required final PoolStatus status,
      @JsonKey(name: 'reward_list') required final List<ActReward> rewardList,
      @JsonKey(name: 'is_finished') required final bool isFinished,
      @JsonKey(name: 'explore_detail') final ExploreDetail? exploreDetail,
      @JsonKey(name: 'liben_detail') final LibenDetail? libenDetail,
      @JsonKey(name: 'role_combat_detail')
      final RoleCombatDetail? roleCombatDetail,
      @JsonKey(name: 'tower_detail')
      final TowerDetail? towerDetail}) = _$ActItemImpl;

  factory _ActItem.fromJson(Map<String, dynamic> json) = _$ActItemImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  ActType get type;
  @override
  @JsonKey(name: 'start_timestamp')
  String get startTimestamp;
  @override
  @JsonKey(name: 'end_timestamp')
  String get endTimestamp;
  @override
  String get desc;
  @override
  String get strategy;
  @override
  @JsonKey(name: 'countdown_seconds')
  int get countdownSeconds;
  @override
  PoolStatus get status;
  @override
  @JsonKey(name: 'reward_list')
  List<ActReward> get rewardList;
  @override
  @JsonKey(name: 'is_finished')
  bool get isFinished;
  @override
  @JsonKey(name: 'explore_detail')
  ExploreDetail? get exploreDetail;
  @override
  @JsonKey(name: 'liben_detail')
  LibenDetail? get libenDetail;
  @override
  @JsonKey(name: 'role_combat_detail')
  RoleCombatDetail? get roleCombatDetail;
  @override
  @JsonKey(name: 'tower_detail')
  TowerDetail? get towerDetail;

  /// Create a copy of ActItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ActItemImplCopyWith<_$ActItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ActReward _$ActRewardFromJson(Map<String, dynamic> json) {
  return _ActReward.fromJson(json);
}

/// @nodoc
mixin _$ActReward {
  @JsonKey(name: 'item_id')
  int get itemId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;
  @JsonKey(name: 'wiki_url')
  String get wikiUrl => throw _privateConstructorUsedError;
  int get num => throw _privateConstructorUsedError;
  String get rarity => throw _privateConstructorUsedError;
  @JsonKey(name: 'homepage_show')
  bool get homepageShow => throw _privateConstructorUsedError;

  /// Serializes this ActReward to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ActReward
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ActRewardCopyWith<ActReward> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActRewardCopyWith<$Res> {
  factory $ActRewardCopyWith(ActReward value, $Res Function(ActReward) then) =
      _$ActRewardCopyWithImpl<$Res, ActReward>;
  @useResult
  $Res call(
      {@JsonKey(name: 'item_id') int itemId,
      String name,
      String icon,
      @JsonKey(name: 'wiki_url') String wikiUrl,
      int num,
      String rarity,
      @JsonKey(name: 'homepage_show') bool homepageShow});
}

/// @nodoc
class _$ActRewardCopyWithImpl<$Res, $Val extends ActReward>
    implements $ActRewardCopyWith<$Res> {
  _$ActRewardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ActReward
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemId = null,
    Object? name = null,
    Object? icon = null,
    Object? wikiUrl = null,
    Object? num = null,
    Object? rarity = null,
    Object? homepageShow = null,
  }) {
    return _then(_value.copyWith(
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      wikiUrl: null == wikiUrl
          ? _value.wikiUrl
          : wikiUrl // ignore: cast_nullable_to_non_nullable
              as String,
      num: null == num
          ? _value.num
          : num // ignore: cast_nullable_to_non_nullable
              as int,
      rarity: null == rarity
          ? _value.rarity
          : rarity // ignore: cast_nullable_to_non_nullable
              as String,
      homepageShow: null == homepageShow
          ? _value.homepageShow
          : homepageShow // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ActRewardImplCopyWith<$Res>
    implements $ActRewardCopyWith<$Res> {
  factory _$$ActRewardImplCopyWith(
          _$ActRewardImpl value, $Res Function(_$ActRewardImpl) then) =
      __$$ActRewardImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'item_id') int itemId,
      String name,
      String icon,
      @JsonKey(name: 'wiki_url') String wikiUrl,
      int num,
      String rarity,
      @JsonKey(name: 'homepage_show') bool homepageShow});
}

/// @nodoc
class __$$ActRewardImplCopyWithImpl<$Res>
    extends _$ActRewardCopyWithImpl<$Res, _$ActRewardImpl>
    implements _$$ActRewardImplCopyWith<$Res> {
  __$$ActRewardImplCopyWithImpl(
      _$ActRewardImpl _value, $Res Function(_$ActRewardImpl) _then)
      : super(_value, _then);

  /// Create a copy of ActReward
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemId = null,
    Object? name = null,
    Object? icon = null,
    Object? wikiUrl = null,
    Object? num = null,
    Object? rarity = null,
    Object? homepageShow = null,
  }) {
    return _then(_$ActRewardImpl(
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      wikiUrl: null == wikiUrl
          ? _value.wikiUrl
          : wikiUrl // ignore: cast_nullable_to_non_nullable
              as String,
      num: null == num
          ? _value.num
          : num // ignore: cast_nullable_to_non_nullable
              as int,
      rarity: null == rarity
          ? _value.rarity
          : rarity // ignore: cast_nullable_to_non_nullable
              as String,
      homepageShow: null == homepageShow
          ? _value.homepageShow
          : homepageShow // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ActRewardImpl implements _ActReward {
  const _$ActRewardImpl(
      {@JsonKey(name: 'item_id') required this.itemId,
      required this.name,
      required this.icon,
      @JsonKey(name: 'wiki_url') required this.wikiUrl,
      required this.num,
      required this.rarity,
      @JsonKey(name: 'homepage_show') required this.homepageShow});

  factory _$ActRewardImpl.fromJson(Map<String, dynamic> json) =>
      _$$ActRewardImplFromJson(json);

  @override
  @JsonKey(name: 'item_id')
  final int itemId;
  @override
  final String name;
  @override
  final String icon;
  @override
  @JsonKey(name: 'wiki_url')
  final String wikiUrl;
  @override
  final int num;
  @override
  final String rarity;
  @override
  @JsonKey(name: 'homepage_show')
  final bool homepageShow;

  @override
  String toString() {
    return 'ActReward(itemId: $itemId, name: $name, icon: $icon, wikiUrl: $wikiUrl, num: $num, rarity: $rarity, homepageShow: $homepageShow)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActRewardImpl &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.wikiUrl, wikiUrl) || other.wikiUrl == wikiUrl) &&
            (identical(other.num, num) || other.num == num) &&
            (identical(other.rarity, rarity) || other.rarity == rarity) &&
            (identical(other.homepageShow, homepageShow) ||
                other.homepageShow == homepageShow));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, itemId, name, icon, wikiUrl, num, rarity, homepageShow);

  /// Create a copy of ActReward
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ActRewardImplCopyWith<_$ActRewardImpl> get copyWith =>
      __$$ActRewardImplCopyWithImpl<_$ActRewardImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ActRewardImplToJson(
      this,
    );
  }
}

abstract class _ActReward implements ActReward {
  const factory _ActReward(
          {@JsonKey(name: 'item_id') required final int itemId,
          required final String name,
          required final String icon,
          @JsonKey(name: 'wiki_url') required final String wikiUrl,
          required final int num,
          required final String rarity,
          @JsonKey(name: 'homepage_show') required final bool homepageShow}) =
      _$ActRewardImpl;

  factory _ActReward.fromJson(Map<String, dynamic> json) =
      _$ActRewardImpl.fromJson;

  @override
  @JsonKey(name: 'item_id')
  int get itemId;
  @override
  String get name;
  @override
  String get icon;
  @override
  @JsonKey(name: 'wiki_url')
  String get wikiUrl;
  @override
  int get num;
  @override
  String get rarity;
  @override
  @JsonKey(name: 'homepage_show')
  bool get homepageShow;

  /// Create a copy of ActReward
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ActRewardImplCopyWith<_$ActRewardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ExploreDetail _$ExploreDetailFromJson(Map<String, dynamic> json) {
  return _ExploreDetail.fromJson(json);
}

/// @nodoc
mixin _$ExploreDetail {
  @JsonKey(name: 'explore_percent')
  int get explorePercent => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_finished')
  bool get isFinished => throw _privateConstructorUsedError;

  /// Serializes this ExploreDetail to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ExploreDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExploreDetailCopyWith<ExploreDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExploreDetailCopyWith<$Res> {
  factory $ExploreDetailCopyWith(
          ExploreDetail value, $Res Function(ExploreDetail) then) =
      _$ExploreDetailCopyWithImpl<$Res, ExploreDetail>;
  @useResult
  $Res call(
      {@JsonKey(name: 'explore_percent') int explorePercent,
      @JsonKey(name: 'is_finished') bool isFinished});
}

/// @nodoc
class _$ExploreDetailCopyWithImpl<$Res, $Val extends ExploreDetail>
    implements $ExploreDetailCopyWith<$Res> {
  _$ExploreDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExploreDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? explorePercent = null,
    Object? isFinished = null,
  }) {
    return _then(_value.copyWith(
      explorePercent: null == explorePercent
          ? _value.explorePercent
          : explorePercent // ignore: cast_nullable_to_non_nullable
              as int,
      isFinished: null == isFinished
          ? _value.isFinished
          : isFinished // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExploreDetailImplCopyWith<$Res>
    implements $ExploreDetailCopyWith<$Res> {
  factory _$$ExploreDetailImplCopyWith(
          _$ExploreDetailImpl value, $Res Function(_$ExploreDetailImpl) then) =
      __$$ExploreDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'explore_percent') int explorePercent,
      @JsonKey(name: 'is_finished') bool isFinished});
}

/// @nodoc
class __$$ExploreDetailImplCopyWithImpl<$Res>
    extends _$ExploreDetailCopyWithImpl<$Res, _$ExploreDetailImpl>
    implements _$$ExploreDetailImplCopyWith<$Res> {
  __$$ExploreDetailImplCopyWithImpl(
      _$ExploreDetailImpl _value, $Res Function(_$ExploreDetailImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExploreDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? explorePercent = null,
    Object? isFinished = null,
  }) {
    return _then(_$ExploreDetailImpl(
      explorePercent: null == explorePercent
          ? _value.explorePercent
          : explorePercent // ignore: cast_nullable_to_non_nullable
              as int,
      isFinished: null == isFinished
          ? _value.isFinished
          : isFinished // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExploreDetailImpl implements _ExploreDetail {
  const _$ExploreDetailImpl(
      {@JsonKey(name: 'explore_percent') required this.explorePercent,
      @JsonKey(name: 'is_finished') required this.isFinished});

  factory _$ExploreDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExploreDetailImplFromJson(json);

  @override
  @JsonKey(name: 'explore_percent')
  final int explorePercent;
  @override
  @JsonKey(name: 'is_finished')
  final bool isFinished;

  @override
  String toString() {
    return 'ExploreDetail(explorePercent: $explorePercent, isFinished: $isFinished)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExploreDetailImpl &&
            (identical(other.explorePercent, explorePercent) ||
                other.explorePercent == explorePercent) &&
            (identical(other.isFinished, isFinished) ||
                other.isFinished == isFinished));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, explorePercent, isFinished);

  /// Create a copy of ExploreDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExploreDetailImplCopyWith<_$ExploreDetailImpl> get copyWith =>
      __$$ExploreDetailImplCopyWithImpl<_$ExploreDetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExploreDetailImplToJson(
      this,
    );
  }
}

abstract class _ExploreDetail implements ExploreDetail {
  const factory _ExploreDetail(
          {@JsonKey(name: 'explore_percent') required final int explorePercent,
          @JsonKey(name: 'is_finished') required final bool isFinished}) =
      _$ExploreDetailImpl;

  factory _ExploreDetail.fromJson(Map<String, dynamic> json) =
      _$ExploreDetailImpl.fromJson;

  @override
  @JsonKey(name: 'explore_percent')
  int get explorePercent;
  @override
  @JsonKey(name: 'is_finished')
  bool get isFinished;

  /// Create a copy of ExploreDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExploreDetailImplCopyWith<_$ExploreDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LibenDetail _$LibenDetailFromJson(Map<String, dynamic> json) {
  return _LibenDetail.fromJson(json);
}

/// @nodoc
mixin _$LibenDetail {
  int get status => throw _privateConstructorUsedError;
  int get progress => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_has_taken_special_reward')
  bool get isHasTakenSpecialReward => throw _privateConstructorUsedError;

  /// Serializes this LibenDetail to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LibenDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LibenDetailCopyWith<LibenDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LibenDetailCopyWith<$Res> {
  factory $LibenDetailCopyWith(
          LibenDetail value, $Res Function(LibenDetail) then) =
      _$LibenDetailCopyWithImpl<$Res, LibenDetail>;
  @useResult
  $Res call(
      {int status,
      int progress,
      int total,
      @JsonKey(name: 'is_has_taken_special_reward')
      bool isHasTakenSpecialReward});
}

/// @nodoc
class _$LibenDetailCopyWithImpl<$Res, $Val extends LibenDetail>
    implements $LibenDetailCopyWith<$Res> {
  _$LibenDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LibenDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? progress = null,
    Object? total = null,
    Object? isHasTakenSpecialReward = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      isHasTakenSpecialReward: null == isHasTakenSpecialReward
          ? _value.isHasTakenSpecialReward
          : isHasTakenSpecialReward // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LibenDetailImplCopyWith<$Res>
    implements $LibenDetailCopyWith<$Res> {
  factory _$$LibenDetailImplCopyWith(
          _$LibenDetailImpl value, $Res Function(_$LibenDetailImpl) then) =
      __$$LibenDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int status,
      int progress,
      int total,
      @JsonKey(name: 'is_has_taken_special_reward')
      bool isHasTakenSpecialReward});
}

/// @nodoc
class __$$LibenDetailImplCopyWithImpl<$Res>
    extends _$LibenDetailCopyWithImpl<$Res, _$LibenDetailImpl>
    implements _$$LibenDetailImplCopyWith<$Res> {
  __$$LibenDetailImplCopyWithImpl(
      _$LibenDetailImpl _value, $Res Function(_$LibenDetailImpl) _then)
      : super(_value, _then);

  /// Create a copy of LibenDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? progress = null,
    Object? total = null,
    Object? isHasTakenSpecialReward = null,
  }) {
    return _then(_$LibenDetailImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      isHasTakenSpecialReward: null == isHasTakenSpecialReward
          ? _value.isHasTakenSpecialReward
          : isHasTakenSpecialReward // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LibenDetailImpl implements _LibenDetail {
  const _$LibenDetailImpl(
      {required this.status,
      required this.progress,
      required this.total,
      @JsonKey(name: 'is_has_taken_special_reward')
      required this.isHasTakenSpecialReward});

  factory _$LibenDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$LibenDetailImplFromJson(json);

  @override
  final int status;
  @override
  final int progress;
  @override
  final int total;
  @override
  @JsonKey(name: 'is_has_taken_special_reward')
  final bool isHasTakenSpecialReward;

  @override
  String toString() {
    return 'LibenDetail(status: $status, progress: $progress, total: $total, isHasTakenSpecialReward: $isHasTakenSpecialReward)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LibenDetailImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.progress, progress) ||
                other.progress == progress) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(
                    other.isHasTakenSpecialReward, isHasTakenSpecialReward) ||
                other.isHasTakenSpecialReward == isHasTakenSpecialReward));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, progress, total, isHasTakenSpecialReward);

  /// Create a copy of LibenDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LibenDetailImplCopyWith<_$LibenDetailImpl> get copyWith =>
      __$$LibenDetailImplCopyWithImpl<_$LibenDetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LibenDetailImplToJson(
      this,
    );
  }
}

abstract class _LibenDetail implements LibenDetail {
  const factory _LibenDetail(
      {required final int status,
      required final int progress,
      required final int total,
      @JsonKey(name: 'is_has_taken_special_reward')
      required final bool isHasTakenSpecialReward}) = _$LibenDetailImpl;

  factory _LibenDetail.fromJson(Map<String, dynamic> json) =
      _$LibenDetailImpl.fromJson;

  @override
  int get status;
  @override
  int get progress;
  @override
  int get total;
  @override
  @JsonKey(name: 'is_has_taken_special_reward')
  bool get isHasTakenSpecialReward;

  /// Create a copy of LibenDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LibenDetailImplCopyWith<_$LibenDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TowerDetail _$TowerDetailFromJson(Map<String, dynamic> json) {
  return _TowerDetail.fromJson(json);
}

/// @nodoc
mixin _$TowerDetail {
  @JsonKey(name: 'is_unlock')
  bool get isUnlock => throw _privateConstructorUsedError;
  @JsonKey(name: 'max_star')
  int get maxStar => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_star')
  int get totalStar => throw _privateConstructorUsedError;
  @JsonKey(name: 'has_data')
  bool get hasData => throw _privateConstructorUsedError;

  /// Serializes this TowerDetail to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TowerDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TowerDetailCopyWith<TowerDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TowerDetailCopyWith<$Res> {
  factory $TowerDetailCopyWith(
          TowerDetail value, $Res Function(TowerDetail) then) =
      _$TowerDetailCopyWithImpl<$Res, TowerDetail>;
  @useResult
  $Res call(
      {@JsonKey(name: 'is_unlock') bool isUnlock,
      @JsonKey(name: 'max_star') int maxStar,
      @JsonKey(name: 'total_star') int totalStar,
      @JsonKey(name: 'has_data') bool hasData});
}

/// @nodoc
class _$TowerDetailCopyWithImpl<$Res, $Val extends TowerDetail>
    implements $TowerDetailCopyWith<$Res> {
  _$TowerDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TowerDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isUnlock = null,
    Object? maxStar = null,
    Object? totalStar = null,
    Object? hasData = null,
  }) {
    return _then(_value.copyWith(
      isUnlock: null == isUnlock
          ? _value.isUnlock
          : isUnlock // ignore: cast_nullable_to_non_nullable
              as bool,
      maxStar: null == maxStar
          ? _value.maxStar
          : maxStar // ignore: cast_nullable_to_non_nullable
              as int,
      totalStar: null == totalStar
          ? _value.totalStar
          : totalStar // ignore: cast_nullable_to_non_nullable
              as int,
      hasData: null == hasData
          ? _value.hasData
          : hasData // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TowerDetailImplCopyWith<$Res>
    implements $TowerDetailCopyWith<$Res> {
  factory _$$TowerDetailImplCopyWith(
          _$TowerDetailImpl value, $Res Function(_$TowerDetailImpl) then) =
      __$$TowerDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'is_unlock') bool isUnlock,
      @JsonKey(name: 'max_star') int maxStar,
      @JsonKey(name: 'total_star') int totalStar,
      @JsonKey(name: 'has_data') bool hasData});
}

/// @nodoc
class __$$TowerDetailImplCopyWithImpl<$Res>
    extends _$TowerDetailCopyWithImpl<$Res, _$TowerDetailImpl>
    implements _$$TowerDetailImplCopyWith<$Res> {
  __$$TowerDetailImplCopyWithImpl(
      _$TowerDetailImpl _value, $Res Function(_$TowerDetailImpl) _then)
      : super(_value, _then);

  /// Create a copy of TowerDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isUnlock = null,
    Object? maxStar = null,
    Object? totalStar = null,
    Object? hasData = null,
  }) {
    return _then(_$TowerDetailImpl(
      isUnlock: null == isUnlock
          ? _value.isUnlock
          : isUnlock // ignore: cast_nullable_to_non_nullable
              as bool,
      maxStar: null == maxStar
          ? _value.maxStar
          : maxStar // ignore: cast_nullable_to_non_nullable
              as int,
      totalStar: null == totalStar
          ? _value.totalStar
          : totalStar // ignore: cast_nullable_to_non_nullable
              as int,
      hasData: null == hasData
          ? _value.hasData
          : hasData // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TowerDetailImpl implements _TowerDetail {
  const _$TowerDetailImpl(
      {@JsonKey(name: 'is_unlock') required this.isUnlock,
      @JsonKey(name: 'max_star') required this.maxStar,
      @JsonKey(name: 'total_star') required this.totalStar,
      @JsonKey(name: 'has_data') required this.hasData});

  factory _$TowerDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$TowerDetailImplFromJson(json);

  @override
  @JsonKey(name: 'is_unlock')
  final bool isUnlock;
  @override
  @JsonKey(name: 'max_star')
  final int maxStar;
  @override
  @JsonKey(name: 'total_star')
  final int totalStar;
  @override
  @JsonKey(name: 'has_data')
  final bool hasData;

  @override
  String toString() {
    return 'TowerDetail(isUnlock: $isUnlock, maxStar: $maxStar, totalStar: $totalStar, hasData: $hasData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TowerDetailImpl &&
            (identical(other.isUnlock, isUnlock) ||
                other.isUnlock == isUnlock) &&
            (identical(other.maxStar, maxStar) || other.maxStar == maxStar) &&
            (identical(other.totalStar, totalStar) ||
                other.totalStar == totalStar) &&
            (identical(other.hasData, hasData) || other.hasData == hasData));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, isUnlock, maxStar, totalStar, hasData);

  /// Create a copy of TowerDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TowerDetailImplCopyWith<_$TowerDetailImpl> get copyWith =>
      __$$TowerDetailImplCopyWithImpl<_$TowerDetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TowerDetailImplToJson(
      this,
    );
  }
}

abstract class _TowerDetail implements TowerDetail {
  const factory _TowerDetail(
          {@JsonKey(name: 'is_unlock') required final bool isUnlock,
          @JsonKey(name: 'max_star') required final int maxStar,
          @JsonKey(name: 'total_star') required final int totalStar,
          @JsonKey(name: 'has_data') required final bool hasData}) =
      _$TowerDetailImpl;

  factory _TowerDetail.fromJson(Map<String, dynamic> json) =
      _$TowerDetailImpl.fromJson;

  @override
  @JsonKey(name: 'is_unlock')
  bool get isUnlock;
  @override
  @JsonKey(name: 'max_star')
  int get maxStar;
  @override
  @JsonKey(name: 'total_star')
  int get totalStar;
  @override
  @JsonKey(name: 'has_data')
  bool get hasData;

  /// Create a copy of TowerDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TowerDetailImplCopyWith<_$TowerDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RoleCombatDetail _$RoleCombatDetailFromJson(Map<String, dynamic> json) {
  return _RoleCombatDetail.fromJson(json);
}

/// @nodoc
mixin _$RoleCombatDetail {
  @JsonKey(name: 'is_unlock')
  bool get isUnlock => throw _privateConstructorUsedError;
  @JsonKey(name: 'max_round_id')
  int get maxRoundId => throw _privateConstructorUsedError;
  @JsonKey(name: 'has_data')
  bool get hasData => throw _privateConstructorUsedError;

  /// Serializes this RoleCombatDetail to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RoleCombatDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RoleCombatDetailCopyWith<RoleCombatDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoleCombatDetailCopyWith<$Res> {
  factory $RoleCombatDetailCopyWith(
          RoleCombatDetail value, $Res Function(RoleCombatDetail) then) =
      _$RoleCombatDetailCopyWithImpl<$Res, RoleCombatDetail>;
  @useResult
  $Res call(
      {@JsonKey(name: 'is_unlock') bool isUnlock,
      @JsonKey(name: 'max_round_id') int maxRoundId,
      @JsonKey(name: 'has_data') bool hasData});
}

/// @nodoc
class _$RoleCombatDetailCopyWithImpl<$Res, $Val extends RoleCombatDetail>
    implements $RoleCombatDetailCopyWith<$Res> {
  _$RoleCombatDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RoleCombatDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isUnlock = null,
    Object? maxRoundId = null,
    Object? hasData = null,
  }) {
    return _then(_value.copyWith(
      isUnlock: null == isUnlock
          ? _value.isUnlock
          : isUnlock // ignore: cast_nullable_to_non_nullable
              as bool,
      maxRoundId: null == maxRoundId
          ? _value.maxRoundId
          : maxRoundId // ignore: cast_nullable_to_non_nullable
              as int,
      hasData: null == hasData
          ? _value.hasData
          : hasData // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RoleCombatDetailImplCopyWith<$Res>
    implements $RoleCombatDetailCopyWith<$Res> {
  factory _$$RoleCombatDetailImplCopyWith(_$RoleCombatDetailImpl value,
          $Res Function(_$RoleCombatDetailImpl) then) =
      __$$RoleCombatDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'is_unlock') bool isUnlock,
      @JsonKey(name: 'max_round_id') int maxRoundId,
      @JsonKey(name: 'has_data') bool hasData});
}

/// @nodoc
class __$$RoleCombatDetailImplCopyWithImpl<$Res>
    extends _$RoleCombatDetailCopyWithImpl<$Res, _$RoleCombatDetailImpl>
    implements _$$RoleCombatDetailImplCopyWith<$Res> {
  __$$RoleCombatDetailImplCopyWithImpl(_$RoleCombatDetailImpl _value,
      $Res Function(_$RoleCombatDetailImpl) _then)
      : super(_value, _then);

  /// Create a copy of RoleCombatDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isUnlock = null,
    Object? maxRoundId = null,
    Object? hasData = null,
  }) {
    return _then(_$RoleCombatDetailImpl(
      isUnlock: null == isUnlock
          ? _value.isUnlock
          : isUnlock // ignore: cast_nullable_to_non_nullable
              as bool,
      maxRoundId: null == maxRoundId
          ? _value.maxRoundId
          : maxRoundId // ignore: cast_nullable_to_non_nullable
              as int,
      hasData: null == hasData
          ? _value.hasData
          : hasData // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RoleCombatDetailImpl implements _RoleCombatDetail {
  const _$RoleCombatDetailImpl(
      {@JsonKey(name: 'is_unlock') required this.isUnlock,
      @JsonKey(name: 'max_round_id') required this.maxRoundId,
      @JsonKey(name: 'has_data') required this.hasData});

  factory _$RoleCombatDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$RoleCombatDetailImplFromJson(json);

  @override
  @JsonKey(name: 'is_unlock')
  final bool isUnlock;
  @override
  @JsonKey(name: 'max_round_id')
  final int maxRoundId;
  @override
  @JsonKey(name: 'has_data')
  final bool hasData;

  @override
  String toString() {
    return 'RoleCombatDetail(isUnlock: $isUnlock, maxRoundId: $maxRoundId, hasData: $hasData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoleCombatDetailImpl &&
            (identical(other.isUnlock, isUnlock) ||
                other.isUnlock == isUnlock) &&
            (identical(other.maxRoundId, maxRoundId) ||
                other.maxRoundId == maxRoundId) &&
            (identical(other.hasData, hasData) || other.hasData == hasData));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, isUnlock, maxRoundId, hasData);

  /// Create a copy of RoleCombatDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RoleCombatDetailImplCopyWith<_$RoleCombatDetailImpl> get copyWith =>
      __$$RoleCombatDetailImplCopyWithImpl<_$RoleCombatDetailImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RoleCombatDetailImplToJson(
      this,
    );
  }
}

abstract class _RoleCombatDetail implements RoleCombatDetail {
  const factory _RoleCombatDetail(
          {@JsonKey(name: 'is_unlock') required final bool isUnlock,
          @JsonKey(name: 'max_round_id') required final int maxRoundId,
          @JsonKey(name: 'has_data') required final bool hasData}) =
      _$RoleCombatDetailImpl;

  factory _RoleCombatDetail.fromJson(Map<String, dynamic> json) =
      _$RoleCombatDetailImpl.fromJson;

  @override
  @JsonKey(name: 'is_unlock')
  bool get isUnlock;
  @override
  @JsonKey(name: 'max_round_id')
  int get maxRoundId;
  @override
  @JsonKey(name: 'has_data')
  bool get hasData;

  /// Create a copy of RoleCombatDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RoleCombatDetailImplCopyWith<_$RoleCombatDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'calculator_sync_avatar_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CalculatorSyncAvatarList _$CalculatorSyncAvatarListFromJson(
    Map<String, dynamic> json) {
  return _CalculatorSyncAvatarList.fromJson(json);
}

/// @nodoc
mixin _$CalculatorSyncAvatarList {
  List<CalculatorSyncAvatar> get list => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;

  /// Serializes this CalculatorSyncAvatarList to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CalculatorSyncAvatarList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CalculatorSyncAvatarListCopyWith<CalculatorSyncAvatarList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalculatorSyncAvatarListCopyWith<$Res> {
  factory $CalculatorSyncAvatarListCopyWith(CalculatorSyncAvatarList value,
          $Res Function(CalculatorSyncAvatarList) then) =
      _$CalculatorSyncAvatarListCopyWithImpl<$Res, CalculatorSyncAvatarList>;
  @useResult
  $Res call({List<CalculatorSyncAvatar> list, int total});
}

/// @nodoc
class _$CalculatorSyncAvatarListCopyWithImpl<$Res,
        $Val extends CalculatorSyncAvatarList>
    implements $CalculatorSyncAvatarListCopyWith<$Res> {
  _$CalculatorSyncAvatarListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CalculatorSyncAvatarList
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
              as List<CalculatorSyncAvatar>,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CalculatorSyncAvatarListImplCopyWith<$Res>
    implements $CalculatorSyncAvatarListCopyWith<$Res> {
  factory _$$CalculatorSyncAvatarListImplCopyWith(
          _$CalculatorSyncAvatarListImpl value,
          $Res Function(_$CalculatorSyncAvatarListImpl) then) =
      __$$CalculatorSyncAvatarListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CalculatorSyncAvatar> list, int total});
}

/// @nodoc
class __$$CalculatorSyncAvatarListImplCopyWithImpl<$Res>
    extends _$CalculatorSyncAvatarListCopyWithImpl<$Res,
        _$CalculatorSyncAvatarListImpl>
    implements _$$CalculatorSyncAvatarListImplCopyWith<$Res> {
  __$$CalculatorSyncAvatarListImplCopyWithImpl(
      _$CalculatorSyncAvatarListImpl _value,
      $Res Function(_$CalculatorSyncAvatarListImpl) _then)
      : super(_value, _then);

  /// Create a copy of CalculatorSyncAvatarList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
    Object? total = null,
  }) {
    return _then(_$CalculatorSyncAvatarListImpl(
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<CalculatorSyncAvatar>,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CalculatorSyncAvatarListImpl implements _CalculatorSyncAvatarList {
  const _$CalculatorSyncAvatarListImpl(
      {required final List<CalculatorSyncAvatar> list, required this.total})
      : _list = list;

  factory _$CalculatorSyncAvatarListImpl.fromJson(Map<String, dynamic> json) =>
      _$$CalculatorSyncAvatarListImplFromJson(json);

  final List<CalculatorSyncAvatar> _list;
  @override
  List<CalculatorSyncAvatar> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  final int total;

  @override
  String toString() {
    return 'CalculatorSyncAvatarList(list: $list, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalculatorSyncAvatarListImpl &&
            const DeepCollectionEquality().equals(other._list, _list) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_list), total);

  /// Create a copy of CalculatorSyncAvatarList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CalculatorSyncAvatarListImplCopyWith<_$CalculatorSyncAvatarListImpl>
      get copyWith => __$$CalculatorSyncAvatarListImplCopyWithImpl<
          _$CalculatorSyncAvatarListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CalculatorSyncAvatarListImplToJson(
      this,
    );
  }
}

abstract class _CalculatorSyncAvatarList implements CalculatorSyncAvatarList {
  const factory _CalculatorSyncAvatarList(
      {required final List<CalculatorSyncAvatar> list,
      required final int total}) = _$CalculatorSyncAvatarListImpl;

  factory _CalculatorSyncAvatarList.fromJson(Map<String, dynamic> json) =
      _$CalculatorSyncAvatarListImpl.fromJson;

  @override
  List<CalculatorSyncAvatar> get list;
  @override
  int get total;

  /// Create a copy of CalculatorSyncAvatarList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CalculatorSyncAvatarListImplCopyWith<_$CalculatorSyncAvatarListImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CalculatorSyncAvatar _$CalculatorSyncAvatarFromJson(Map<String, dynamic> json) {
  return _CalculatorSyncAvatar.fromJson(json);
}

/// @nodoc
mixin _$CalculatorSyncAvatar {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;
  @JsonKey(name: 'weapon_cat_id')
  int get weaponCatId => throw _privateConstructorUsedError;
  @JsonKey(name: 'avatar_level')
  int get avatarLevel => throw _privateConstructorUsedError;
  @JsonKey(name: 'element_attr_id')
  int get elementAttrId => throw _privateConstructorUsedError;
  @JsonKey(name: 'max_level')
  int get maxLevel => throw _privateConstructorUsedError;
  @JsonKey(name: 'level_current')
  String get levelCurrent => throw _privateConstructorUsedError;
  @JsonKey(name: 'skill_list')
  List<CalculatorSyncAvatarSkill> get skillList =>
      throw _privateConstructorUsedError;
  CalculatorSyncAvatarWeapon get weapon => throw _privateConstructorUsedError;
  @JsonKey(name: 'reliquary_list')
  List<CalculatorSyncAvatarReliquary> get reliquaryList =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'wiki_url')
  String get wikiUrl => throw _privateConstructorUsedError;

  /// Serializes this CalculatorSyncAvatar to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CalculatorSyncAvatar
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CalculatorSyncAvatarCopyWith<CalculatorSyncAvatar> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalculatorSyncAvatarCopyWith<$Res> {
  factory $CalculatorSyncAvatarCopyWith(CalculatorSyncAvatar value,
          $Res Function(CalculatorSyncAvatar) then) =
      _$CalculatorSyncAvatarCopyWithImpl<$Res, CalculatorSyncAvatar>;
  @useResult
  $Res call(
      {int id,
      String name,
      String icon,
      @JsonKey(name: 'weapon_cat_id') int weaponCatId,
      @JsonKey(name: 'avatar_level') int avatarLevel,
      @JsonKey(name: 'element_attr_id') int elementAttrId,
      @JsonKey(name: 'max_level') int maxLevel,
      @JsonKey(name: 'level_current') String levelCurrent,
      @JsonKey(name: 'skill_list') List<CalculatorSyncAvatarSkill> skillList,
      CalculatorSyncAvatarWeapon weapon,
      @JsonKey(name: 'reliquary_list')
      List<CalculatorSyncAvatarReliquary> reliquaryList,
      @JsonKey(name: 'wiki_url') String wikiUrl});

  $CalculatorSyncAvatarWeaponCopyWith<$Res> get weapon;
}

/// @nodoc
class _$CalculatorSyncAvatarCopyWithImpl<$Res,
        $Val extends CalculatorSyncAvatar>
    implements $CalculatorSyncAvatarCopyWith<$Res> {
  _$CalculatorSyncAvatarCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CalculatorSyncAvatar
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? icon = null,
    Object? weaponCatId = null,
    Object? avatarLevel = null,
    Object? elementAttrId = null,
    Object? maxLevel = null,
    Object? levelCurrent = null,
    Object? skillList = null,
    Object? weapon = null,
    Object? reliquaryList = null,
    Object? wikiUrl = null,
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
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      weaponCatId: null == weaponCatId
          ? _value.weaponCatId
          : weaponCatId // ignore: cast_nullable_to_non_nullable
              as int,
      avatarLevel: null == avatarLevel
          ? _value.avatarLevel
          : avatarLevel // ignore: cast_nullable_to_non_nullable
              as int,
      elementAttrId: null == elementAttrId
          ? _value.elementAttrId
          : elementAttrId // ignore: cast_nullable_to_non_nullable
              as int,
      maxLevel: null == maxLevel
          ? _value.maxLevel
          : maxLevel // ignore: cast_nullable_to_non_nullable
              as int,
      levelCurrent: null == levelCurrent
          ? _value.levelCurrent
          : levelCurrent // ignore: cast_nullable_to_non_nullable
              as String,
      skillList: null == skillList
          ? _value.skillList
          : skillList // ignore: cast_nullable_to_non_nullable
              as List<CalculatorSyncAvatarSkill>,
      weapon: null == weapon
          ? _value.weapon
          : weapon // ignore: cast_nullable_to_non_nullable
              as CalculatorSyncAvatarWeapon,
      reliquaryList: null == reliquaryList
          ? _value.reliquaryList
          : reliquaryList // ignore: cast_nullable_to_non_nullable
              as List<CalculatorSyncAvatarReliquary>,
      wikiUrl: null == wikiUrl
          ? _value.wikiUrl
          : wikiUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of CalculatorSyncAvatar
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CalculatorSyncAvatarWeaponCopyWith<$Res> get weapon {
    return $CalculatorSyncAvatarWeaponCopyWith<$Res>(_value.weapon, (value) {
      return _then(_value.copyWith(weapon: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CalculatorSyncAvatarImplCopyWith<$Res>
    implements $CalculatorSyncAvatarCopyWith<$Res> {
  factory _$$CalculatorSyncAvatarImplCopyWith(_$CalculatorSyncAvatarImpl value,
          $Res Function(_$CalculatorSyncAvatarImpl) then) =
      __$$CalculatorSyncAvatarImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String icon,
      @JsonKey(name: 'weapon_cat_id') int weaponCatId,
      @JsonKey(name: 'avatar_level') int avatarLevel,
      @JsonKey(name: 'element_attr_id') int elementAttrId,
      @JsonKey(name: 'max_level') int maxLevel,
      @JsonKey(name: 'level_current') String levelCurrent,
      @JsonKey(name: 'skill_list') List<CalculatorSyncAvatarSkill> skillList,
      CalculatorSyncAvatarWeapon weapon,
      @JsonKey(name: 'reliquary_list')
      List<CalculatorSyncAvatarReliquary> reliquaryList,
      @JsonKey(name: 'wiki_url') String wikiUrl});

  @override
  $CalculatorSyncAvatarWeaponCopyWith<$Res> get weapon;
}

/// @nodoc
class __$$CalculatorSyncAvatarImplCopyWithImpl<$Res>
    extends _$CalculatorSyncAvatarCopyWithImpl<$Res, _$CalculatorSyncAvatarImpl>
    implements _$$CalculatorSyncAvatarImplCopyWith<$Res> {
  __$$CalculatorSyncAvatarImplCopyWithImpl(_$CalculatorSyncAvatarImpl _value,
      $Res Function(_$CalculatorSyncAvatarImpl) _then)
      : super(_value, _then);

  /// Create a copy of CalculatorSyncAvatar
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? icon = null,
    Object? weaponCatId = null,
    Object? avatarLevel = null,
    Object? elementAttrId = null,
    Object? maxLevel = null,
    Object? levelCurrent = null,
    Object? skillList = null,
    Object? weapon = null,
    Object? reliquaryList = null,
    Object? wikiUrl = null,
  }) {
    return _then(_$CalculatorSyncAvatarImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      weaponCatId: null == weaponCatId
          ? _value.weaponCatId
          : weaponCatId // ignore: cast_nullable_to_non_nullable
              as int,
      avatarLevel: null == avatarLevel
          ? _value.avatarLevel
          : avatarLevel // ignore: cast_nullable_to_non_nullable
              as int,
      elementAttrId: null == elementAttrId
          ? _value.elementAttrId
          : elementAttrId // ignore: cast_nullable_to_non_nullable
              as int,
      maxLevel: null == maxLevel
          ? _value.maxLevel
          : maxLevel // ignore: cast_nullable_to_non_nullable
              as int,
      levelCurrent: null == levelCurrent
          ? _value.levelCurrent
          : levelCurrent // ignore: cast_nullable_to_non_nullable
              as String,
      skillList: null == skillList
          ? _value._skillList
          : skillList // ignore: cast_nullable_to_non_nullable
              as List<CalculatorSyncAvatarSkill>,
      weapon: null == weapon
          ? _value.weapon
          : weapon // ignore: cast_nullable_to_non_nullable
              as CalculatorSyncAvatarWeapon,
      reliquaryList: null == reliquaryList
          ? _value._reliquaryList
          : reliquaryList // ignore: cast_nullable_to_non_nullable
              as List<CalculatorSyncAvatarReliquary>,
      wikiUrl: null == wikiUrl
          ? _value.wikiUrl
          : wikiUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CalculatorSyncAvatarImpl implements _CalculatorSyncAvatar {
  const _$CalculatorSyncAvatarImpl(
      {required this.id,
      required this.name,
      required this.icon,
      @JsonKey(name: 'weapon_cat_id') required this.weaponCatId,
      @JsonKey(name: 'avatar_level') required this.avatarLevel,
      @JsonKey(name: 'element_attr_id') required this.elementAttrId,
      @JsonKey(name: 'max_level') required this.maxLevel,
      @JsonKey(name: 'level_current') required this.levelCurrent,
      @JsonKey(name: 'skill_list')
      required final List<CalculatorSyncAvatarSkill> skillList,
      required this.weapon,
      @JsonKey(name: 'reliquary_list')
      required final List<CalculatorSyncAvatarReliquary> reliquaryList,
      @JsonKey(name: 'wiki_url') required this.wikiUrl})
      : _skillList = skillList,
        _reliquaryList = reliquaryList;

  factory _$CalculatorSyncAvatarImpl.fromJson(Map<String, dynamic> json) =>
      _$$CalculatorSyncAvatarImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String icon;
  @override
  @JsonKey(name: 'weapon_cat_id')
  final int weaponCatId;
  @override
  @JsonKey(name: 'avatar_level')
  final int avatarLevel;
  @override
  @JsonKey(name: 'element_attr_id')
  final int elementAttrId;
  @override
  @JsonKey(name: 'max_level')
  final int maxLevel;
  @override
  @JsonKey(name: 'level_current')
  final String levelCurrent;
  final List<CalculatorSyncAvatarSkill> _skillList;
  @override
  @JsonKey(name: 'skill_list')
  List<CalculatorSyncAvatarSkill> get skillList {
    if (_skillList is EqualUnmodifiableListView) return _skillList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_skillList);
  }

  @override
  final CalculatorSyncAvatarWeapon weapon;
  final List<CalculatorSyncAvatarReliquary> _reliquaryList;
  @override
  @JsonKey(name: 'reliquary_list')
  List<CalculatorSyncAvatarReliquary> get reliquaryList {
    if (_reliquaryList is EqualUnmodifiableListView) return _reliquaryList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reliquaryList);
  }

  @override
  @JsonKey(name: 'wiki_url')
  final String wikiUrl;

  @override
  String toString() {
    return 'CalculatorSyncAvatar(id: $id, name: $name, icon: $icon, weaponCatId: $weaponCatId, avatarLevel: $avatarLevel, elementAttrId: $elementAttrId, maxLevel: $maxLevel, levelCurrent: $levelCurrent, skillList: $skillList, weapon: $weapon, reliquaryList: $reliquaryList, wikiUrl: $wikiUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalculatorSyncAvatarImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.weaponCatId, weaponCatId) ||
                other.weaponCatId == weaponCatId) &&
            (identical(other.avatarLevel, avatarLevel) ||
                other.avatarLevel == avatarLevel) &&
            (identical(other.elementAttrId, elementAttrId) ||
                other.elementAttrId == elementAttrId) &&
            (identical(other.maxLevel, maxLevel) ||
                other.maxLevel == maxLevel) &&
            (identical(other.levelCurrent, levelCurrent) ||
                other.levelCurrent == levelCurrent) &&
            const DeepCollectionEquality()
                .equals(other._skillList, _skillList) &&
            (identical(other.weapon, weapon) || other.weapon == weapon) &&
            const DeepCollectionEquality()
                .equals(other._reliquaryList, _reliquaryList) &&
            (identical(other.wikiUrl, wikiUrl) || other.wikiUrl == wikiUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      icon,
      weaponCatId,
      avatarLevel,
      elementAttrId,
      maxLevel,
      levelCurrent,
      const DeepCollectionEquality().hash(_skillList),
      weapon,
      const DeepCollectionEquality().hash(_reliquaryList),
      wikiUrl);

  /// Create a copy of CalculatorSyncAvatar
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CalculatorSyncAvatarImplCopyWith<_$CalculatorSyncAvatarImpl>
      get copyWith =>
          __$$CalculatorSyncAvatarImplCopyWithImpl<_$CalculatorSyncAvatarImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CalculatorSyncAvatarImplToJson(
      this,
    );
  }
}

abstract class _CalculatorSyncAvatar implements CalculatorSyncAvatar {
  const factory _CalculatorSyncAvatar(
          {required final int id,
          required final String name,
          required final String icon,
          @JsonKey(name: 'weapon_cat_id') required final int weaponCatId,
          @JsonKey(name: 'avatar_level') required final int avatarLevel,
          @JsonKey(name: 'element_attr_id') required final int elementAttrId,
          @JsonKey(name: 'max_level') required final int maxLevel,
          @JsonKey(name: 'level_current') required final String levelCurrent,
          @JsonKey(name: 'skill_list')
          required final List<CalculatorSyncAvatarSkill> skillList,
          required final CalculatorSyncAvatarWeapon weapon,
          @JsonKey(name: 'reliquary_list')
          required final List<CalculatorSyncAvatarReliquary> reliquaryList,
          @JsonKey(name: 'wiki_url') required final String wikiUrl}) =
      _$CalculatorSyncAvatarImpl;

  factory _CalculatorSyncAvatar.fromJson(Map<String, dynamic> json) =
      _$CalculatorSyncAvatarImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get icon;
  @override
  @JsonKey(name: 'weapon_cat_id')
  int get weaponCatId;
  @override
  @JsonKey(name: 'avatar_level')
  int get avatarLevel;
  @override
  @JsonKey(name: 'element_attr_id')
  int get elementAttrId;
  @override
  @JsonKey(name: 'max_level')
  int get maxLevel;
  @override
  @JsonKey(name: 'level_current')
  String get levelCurrent;
  @override
  @JsonKey(name: 'skill_list')
  List<CalculatorSyncAvatarSkill> get skillList;
  @override
  CalculatorSyncAvatarWeapon get weapon;
  @override
  @JsonKey(name: 'reliquary_list')
  List<CalculatorSyncAvatarReliquary> get reliquaryList;
  @override
  @JsonKey(name: 'wiki_url')
  String get wikiUrl;

  /// Create a copy of CalculatorSyncAvatar
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CalculatorSyncAvatarImplCopyWith<_$CalculatorSyncAvatarImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CalculatorSyncAvatarSkill _$CalculatorSyncAvatarSkillFromJson(
    Map<String, dynamic> json) {
  return _CalculatorSyncAvatarSkill.fromJson(json);
}

/// @nodoc
mixin _$CalculatorSyncAvatarSkill {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'group_id')
  int get groupId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;
  @JsonKey(name: 'max_level')
  int get maxLevel => throw _privateConstructorUsedError;
  @JsonKey(name: 'level_current')
  int get levelCurrent => throw _privateConstructorUsedError;

  /// Serializes this CalculatorSyncAvatarSkill to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CalculatorSyncAvatarSkill
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CalculatorSyncAvatarSkillCopyWith<CalculatorSyncAvatarSkill> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalculatorSyncAvatarSkillCopyWith<$Res> {
  factory $CalculatorSyncAvatarSkillCopyWith(CalculatorSyncAvatarSkill value,
          $Res Function(CalculatorSyncAvatarSkill) then) =
      _$CalculatorSyncAvatarSkillCopyWithImpl<$Res, CalculatorSyncAvatarSkill>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'group_id') int groupId,
      String name,
      String icon,
      @JsonKey(name: 'max_level') int maxLevel,
      @JsonKey(name: 'level_current') int levelCurrent});
}

/// @nodoc
class _$CalculatorSyncAvatarSkillCopyWithImpl<$Res,
        $Val extends CalculatorSyncAvatarSkill>
    implements $CalculatorSyncAvatarSkillCopyWith<$Res> {
  _$CalculatorSyncAvatarSkillCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CalculatorSyncAvatarSkill
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? groupId = null,
    Object? name = null,
    Object? icon = null,
    Object? maxLevel = null,
    Object? levelCurrent = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      groupId: null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      maxLevel: null == maxLevel
          ? _value.maxLevel
          : maxLevel // ignore: cast_nullable_to_non_nullable
              as int,
      levelCurrent: null == levelCurrent
          ? _value.levelCurrent
          : levelCurrent // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CalculatorSyncAvatarSkillImplCopyWith<$Res>
    implements $CalculatorSyncAvatarSkillCopyWith<$Res> {
  factory _$$CalculatorSyncAvatarSkillImplCopyWith(
          _$CalculatorSyncAvatarSkillImpl value,
          $Res Function(_$CalculatorSyncAvatarSkillImpl) then) =
      __$$CalculatorSyncAvatarSkillImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'group_id') int groupId,
      String name,
      String icon,
      @JsonKey(name: 'max_level') int maxLevel,
      @JsonKey(name: 'level_current') int levelCurrent});
}

/// @nodoc
class __$$CalculatorSyncAvatarSkillImplCopyWithImpl<$Res>
    extends _$CalculatorSyncAvatarSkillCopyWithImpl<$Res,
        _$CalculatorSyncAvatarSkillImpl>
    implements _$$CalculatorSyncAvatarSkillImplCopyWith<$Res> {
  __$$CalculatorSyncAvatarSkillImplCopyWithImpl(
      _$CalculatorSyncAvatarSkillImpl _value,
      $Res Function(_$CalculatorSyncAvatarSkillImpl) _then)
      : super(_value, _then);

  /// Create a copy of CalculatorSyncAvatarSkill
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? groupId = null,
    Object? name = null,
    Object? icon = null,
    Object? maxLevel = null,
    Object? levelCurrent = null,
  }) {
    return _then(_$CalculatorSyncAvatarSkillImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      groupId: null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      maxLevel: null == maxLevel
          ? _value.maxLevel
          : maxLevel // ignore: cast_nullable_to_non_nullable
              as int,
      levelCurrent: null == levelCurrent
          ? _value.levelCurrent
          : levelCurrent // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CalculatorSyncAvatarSkillImpl implements _CalculatorSyncAvatarSkill {
  const _$CalculatorSyncAvatarSkillImpl(
      {required this.id,
      @JsonKey(name: 'group_id') required this.groupId,
      required this.name,
      required this.icon,
      @JsonKey(name: 'max_level') required this.maxLevel,
      @JsonKey(name: 'level_current') required this.levelCurrent});

  factory _$CalculatorSyncAvatarSkillImpl.fromJson(Map<String, dynamic> json) =>
      _$$CalculatorSyncAvatarSkillImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'group_id')
  final int groupId;
  @override
  final String name;
  @override
  final String icon;
  @override
  @JsonKey(name: 'max_level')
  final int maxLevel;
  @override
  @JsonKey(name: 'level_current')
  final int levelCurrent;

  @override
  String toString() {
    return 'CalculatorSyncAvatarSkill(id: $id, groupId: $groupId, name: $name, icon: $icon, maxLevel: $maxLevel, levelCurrent: $levelCurrent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalculatorSyncAvatarSkillImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.maxLevel, maxLevel) ||
                other.maxLevel == maxLevel) &&
            (identical(other.levelCurrent, levelCurrent) ||
                other.levelCurrent == levelCurrent));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, groupId, name, icon, maxLevel, levelCurrent);

  /// Create a copy of CalculatorSyncAvatarSkill
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CalculatorSyncAvatarSkillImplCopyWith<_$CalculatorSyncAvatarSkillImpl>
      get copyWith => __$$CalculatorSyncAvatarSkillImplCopyWithImpl<
          _$CalculatorSyncAvatarSkillImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CalculatorSyncAvatarSkillImplToJson(
      this,
    );
  }
}

abstract class _CalculatorSyncAvatarSkill implements CalculatorSyncAvatarSkill {
  const factory _CalculatorSyncAvatarSkill(
          {required final int id,
          @JsonKey(name: 'group_id') required final int groupId,
          required final String name,
          required final String icon,
          @JsonKey(name: 'max_level') required final int maxLevel,
          @JsonKey(name: 'level_current') required final int levelCurrent}) =
      _$CalculatorSyncAvatarSkillImpl;

  factory _CalculatorSyncAvatarSkill.fromJson(Map<String, dynamic> json) =
      _$CalculatorSyncAvatarSkillImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'group_id')
  int get groupId;
  @override
  String get name;
  @override
  String get icon;
  @override
  @JsonKey(name: 'max_level')
  int get maxLevel;
  @override
  @JsonKey(name: 'level_current')
  int get levelCurrent;

  /// Create a copy of CalculatorSyncAvatarSkill
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CalculatorSyncAvatarSkillImplCopyWith<_$CalculatorSyncAvatarSkillImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CalculatorSyncAvatarWeapon _$CalculatorSyncAvatarWeaponFromJson(
    Map<String, dynamic> json) {
  return _CalculatorSyncAvatarWeapon.fromJson(json);
}

/// @nodoc
mixin _$CalculatorSyncAvatarWeapon {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'weapon_cat_id')
  int get weaponCatId => throw _privateConstructorUsedError;
  @JsonKey(name: 'weapon_level')
  int get weaponLevel => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;
  @JsonKey(name: 'max_level')
  int get maxLevel => throw _privateConstructorUsedError;
  @JsonKey(name: 'level_current')
  int get levelCurrent => throw _privateConstructorUsedError;

  /// Serializes this CalculatorSyncAvatarWeapon to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CalculatorSyncAvatarWeapon
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CalculatorSyncAvatarWeaponCopyWith<CalculatorSyncAvatarWeapon>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalculatorSyncAvatarWeaponCopyWith<$Res> {
  factory $CalculatorSyncAvatarWeaponCopyWith(CalculatorSyncAvatarWeapon value,
          $Res Function(CalculatorSyncAvatarWeapon) then) =
      _$CalculatorSyncAvatarWeaponCopyWithImpl<$Res,
          CalculatorSyncAvatarWeapon>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'weapon_cat_id') int weaponCatId,
      @JsonKey(name: 'weapon_level') int weaponLevel,
      String name,
      String icon,
      @JsonKey(name: 'max_level') int maxLevel,
      @JsonKey(name: 'level_current') int levelCurrent});
}

/// @nodoc
class _$CalculatorSyncAvatarWeaponCopyWithImpl<$Res,
        $Val extends CalculatorSyncAvatarWeapon>
    implements $CalculatorSyncAvatarWeaponCopyWith<$Res> {
  _$CalculatorSyncAvatarWeaponCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CalculatorSyncAvatarWeapon
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? weaponCatId = null,
    Object? weaponLevel = null,
    Object? name = null,
    Object? icon = null,
    Object? maxLevel = null,
    Object? levelCurrent = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      weaponCatId: null == weaponCatId
          ? _value.weaponCatId
          : weaponCatId // ignore: cast_nullable_to_non_nullable
              as int,
      weaponLevel: null == weaponLevel
          ? _value.weaponLevel
          : weaponLevel // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      maxLevel: null == maxLevel
          ? _value.maxLevel
          : maxLevel // ignore: cast_nullable_to_non_nullable
              as int,
      levelCurrent: null == levelCurrent
          ? _value.levelCurrent
          : levelCurrent // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CalculatorSyncAvatarWeaponImplCopyWith<$Res>
    implements $CalculatorSyncAvatarWeaponCopyWith<$Res> {
  factory _$$CalculatorSyncAvatarWeaponImplCopyWith(
          _$CalculatorSyncAvatarWeaponImpl value,
          $Res Function(_$CalculatorSyncAvatarWeaponImpl) then) =
      __$$CalculatorSyncAvatarWeaponImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'weapon_cat_id') int weaponCatId,
      @JsonKey(name: 'weapon_level') int weaponLevel,
      String name,
      String icon,
      @JsonKey(name: 'max_level') int maxLevel,
      @JsonKey(name: 'level_current') int levelCurrent});
}

/// @nodoc
class __$$CalculatorSyncAvatarWeaponImplCopyWithImpl<$Res>
    extends _$CalculatorSyncAvatarWeaponCopyWithImpl<$Res,
        _$CalculatorSyncAvatarWeaponImpl>
    implements _$$CalculatorSyncAvatarWeaponImplCopyWith<$Res> {
  __$$CalculatorSyncAvatarWeaponImplCopyWithImpl(
      _$CalculatorSyncAvatarWeaponImpl _value,
      $Res Function(_$CalculatorSyncAvatarWeaponImpl) _then)
      : super(_value, _then);

  /// Create a copy of CalculatorSyncAvatarWeapon
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? weaponCatId = null,
    Object? weaponLevel = null,
    Object? name = null,
    Object? icon = null,
    Object? maxLevel = null,
    Object? levelCurrent = null,
  }) {
    return _then(_$CalculatorSyncAvatarWeaponImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      weaponCatId: null == weaponCatId
          ? _value.weaponCatId
          : weaponCatId // ignore: cast_nullable_to_non_nullable
              as int,
      weaponLevel: null == weaponLevel
          ? _value.weaponLevel
          : weaponLevel // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      maxLevel: null == maxLevel
          ? _value.maxLevel
          : maxLevel // ignore: cast_nullable_to_non_nullable
              as int,
      levelCurrent: null == levelCurrent
          ? _value.levelCurrent
          : levelCurrent // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CalculatorSyncAvatarWeaponImpl implements _CalculatorSyncAvatarWeapon {
  const _$CalculatorSyncAvatarWeaponImpl(
      {required this.id,
      @JsonKey(name: 'weapon_cat_id') required this.weaponCatId,
      @JsonKey(name: 'weapon_level') required this.weaponLevel,
      required this.name,
      required this.icon,
      @JsonKey(name: 'max_level') required this.maxLevel,
      @JsonKey(name: 'level_current') required this.levelCurrent});

  factory _$CalculatorSyncAvatarWeaponImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CalculatorSyncAvatarWeaponImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'weapon_cat_id')
  final int weaponCatId;
  @override
  @JsonKey(name: 'weapon_level')
  final int weaponLevel;
  @override
  final String name;
  @override
  final String icon;
  @override
  @JsonKey(name: 'max_level')
  final int maxLevel;
  @override
  @JsonKey(name: 'level_current')
  final int levelCurrent;

  @override
  String toString() {
    return 'CalculatorSyncAvatarWeapon(id: $id, weaponCatId: $weaponCatId, weaponLevel: $weaponLevel, name: $name, icon: $icon, maxLevel: $maxLevel, levelCurrent: $levelCurrent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalculatorSyncAvatarWeaponImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.weaponCatId, weaponCatId) ||
                other.weaponCatId == weaponCatId) &&
            (identical(other.weaponLevel, weaponLevel) ||
                other.weaponLevel == weaponLevel) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.maxLevel, maxLevel) ||
                other.maxLevel == maxLevel) &&
            (identical(other.levelCurrent, levelCurrent) ||
                other.levelCurrent == levelCurrent));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, weaponCatId, weaponLevel,
      name, icon, maxLevel, levelCurrent);

  /// Create a copy of CalculatorSyncAvatarWeapon
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CalculatorSyncAvatarWeaponImplCopyWith<_$CalculatorSyncAvatarWeaponImpl>
      get copyWith => __$$CalculatorSyncAvatarWeaponImplCopyWithImpl<
          _$CalculatorSyncAvatarWeaponImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CalculatorSyncAvatarWeaponImplToJson(
      this,
    );
  }
}

abstract class _CalculatorSyncAvatarWeapon
    implements CalculatorSyncAvatarWeapon {
  const factory _CalculatorSyncAvatarWeapon(
          {required final int id,
          @JsonKey(name: 'weapon_cat_id') required final int weaponCatId,
          @JsonKey(name: 'weapon_level') required final int weaponLevel,
          required final String name,
          required final String icon,
          @JsonKey(name: 'max_level') required final int maxLevel,
          @JsonKey(name: 'level_current') required final int levelCurrent}) =
      _$CalculatorSyncAvatarWeaponImpl;

  factory _CalculatorSyncAvatarWeapon.fromJson(Map<String, dynamic> json) =
      _$CalculatorSyncAvatarWeaponImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'weapon_cat_id')
  int get weaponCatId;
  @override
  @JsonKey(name: 'weapon_level')
  int get weaponLevel;
  @override
  String get name;
  @override
  String get icon;
  @override
  @JsonKey(name: 'max_level')
  int get maxLevel;
  @override
  @JsonKey(name: 'level_current')
  int get levelCurrent;

  /// Create a copy of CalculatorSyncAvatarWeapon
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CalculatorSyncAvatarWeaponImplCopyWith<_$CalculatorSyncAvatarWeaponImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CalculatorSyncAvatarReliquary _$CalculatorSyncAvatarReliquaryFromJson(
    Map<String, dynamic> json) {
  return _CalculatorSyncAvatarReliquary.fromJson(json);
}

/// @nodoc
mixin _$CalculatorSyncAvatarReliquary {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'reliquary_cat_id')
  int get reliquaryCatId => throw _privateConstructorUsedError;
  @JsonKey(name: 'reliquary_level')
  int get reliquaryLevel => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;
  @JsonKey(name: 'max_level')
  int get maxLevel => throw _privateConstructorUsedError;
  @JsonKey(name: 'level_current')
  int get levelCurrent => throw _privateConstructorUsedError;

  /// Serializes this CalculatorSyncAvatarReliquary to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CalculatorSyncAvatarReliquary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CalculatorSyncAvatarReliquaryCopyWith<CalculatorSyncAvatarReliquary>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalculatorSyncAvatarReliquaryCopyWith<$Res> {
  factory $CalculatorSyncAvatarReliquaryCopyWith(
          CalculatorSyncAvatarReliquary value,
          $Res Function(CalculatorSyncAvatarReliquary) then) =
      _$CalculatorSyncAvatarReliquaryCopyWithImpl<$Res,
          CalculatorSyncAvatarReliquary>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'reliquary_cat_id') int reliquaryCatId,
      @JsonKey(name: 'reliquary_level') int reliquaryLevel,
      String name,
      String icon,
      @JsonKey(name: 'max_level') int maxLevel,
      @JsonKey(name: 'level_current') int levelCurrent});
}

/// @nodoc
class _$CalculatorSyncAvatarReliquaryCopyWithImpl<$Res,
        $Val extends CalculatorSyncAvatarReliquary>
    implements $CalculatorSyncAvatarReliquaryCopyWith<$Res> {
  _$CalculatorSyncAvatarReliquaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CalculatorSyncAvatarReliquary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? reliquaryCatId = null,
    Object? reliquaryLevel = null,
    Object? name = null,
    Object? icon = null,
    Object? maxLevel = null,
    Object? levelCurrent = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      reliquaryCatId: null == reliquaryCatId
          ? _value.reliquaryCatId
          : reliquaryCatId // ignore: cast_nullable_to_non_nullable
              as int,
      reliquaryLevel: null == reliquaryLevel
          ? _value.reliquaryLevel
          : reliquaryLevel // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      maxLevel: null == maxLevel
          ? _value.maxLevel
          : maxLevel // ignore: cast_nullable_to_non_nullable
              as int,
      levelCurrent: null == levelCurrent
          ? _value.levelCurrent
          : levelCurrent // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CalculatorSyncAvatarReliquaryImplCopyWith<$Res>
    implements $CalculatorSyncAvatarReliquaryCopyWith<$Res> {
  factory _$$CalculatorSyncAvatarReliquaryImplCopyWith(
          _$CalculatorSyncAvatarReliquaryImpl value,
          $Res Function(_$CalculatorSyncAvatarReliquaryImpl) then) =
      __$$CalculatorSyncAvatarReliquaryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'reliquary_cat_id') int reliquaryCatId,
      @JsonKey(name: 'reliquary_level') int reliquaryLevel,
      String name,
      String icon,
      @JsonKey(name: 'max_level') int maxLevel,
      @JsonKey(name: 'level_current') int levelCurrent});
}

/// @nodoc
class __$$CalculatorSyncAvatarReliquaryImplCopyWithImpl<$Res>
    extends _$CalculatorSyncAvatarReliquaryCopyWithImpl<$Res,
        _$CalculatorSyncAvatarReliquaryImpl>
    implements _$$CalculatorSyncAvatarReliquaryImplCopyWith<$Res> {
  __$$CalculatorSyncAvatarReliquaryImplCopyWithImpl(
      _$CalculatorSyncAvatarReliquaryImpl _value,
      $Res Function(_$CalculatorSyncAvatarReliquaryImpl) _then)
      : super(_value, _then);

  /// Create a copy of CalculatorSyncAvatarReliquary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? reliquaryCatId = null,
    Object? reliquaryLevel = null,
    Object? name = null,
    Object? icon = null,
    Object? maxLevel = null,
    Object? levelCurrent = null,
  }) {
    return _then(_$CalculatorSyncAvatarReliquaryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      reliquaryCatId: null == reliquaryCatId
          ? _value.reliquaryCatId
          : reliquaryCatId // ignore: cast_nullable_to_non_nullable
              as int,
      reliquaryLevel: null == reliquaryLevel
          ? _value.reliquaryLevel
          : reliquaryLevel // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      maxLevel: null == maxLevel
          ? _value.maxLevel
          : maxLevel // ignore: cast_nullable_to_non_nullable
              as int,
      levelCurrent: null == levelCurrent
          ? _value.levelCurrent
          : levelCurrent // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CalculatorSyncAvatarReliquaryImpl
    implements _CalculatorSyncAvatarReliquary {
  const _$CalculatorSyncAvatarReliquaryImpl(
      {required this.id,
      @JsonKey(name: 'reliquary_cat_id') required this.reliquaryCatId,
      @JsonKey(name: 'reliquary_level') required this.reliquaryLevel,
      required this.name,
      required this.icon,
      @JsonKey(name: 'max_level') required this.maxLevel,
      @JsonKey(name: 'level_current') required this.levelCurrent});

  factory _$CalculatorSyncAvatarReliquaryImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CalculatorSyncAvatarReliquaryImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'reliquary_cat_id')
  final int reliquaryCatId;
  @override
  @JsonKey(name: 'reliquary_level')
  final int reliquaryLevel;
  @override
  final String name;
  @override
  final String icon;
  @override
  @JsonKey(name: 'max_level')
  final int maxLevel;
  @override
  @JsonKey(name: 'level_current')
  final int levelCurrent;

  @override
  String toString() {
    return 'CalculatorSyncAvatarReliquary(id: $id, reliquaryCatId: $reliquaryCatId, reliquaryLevel: $reliquaryLevel, name: $name, icon: $icon, maxLevel: $maxLevel, levelCurrent: $levelCurrent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalculatorSyncAvatarReliquaryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.reliquaryCatId, reliquaryCatId) ||
                other.reliquaryCatId == reliquaryCatId) &&
            (identical(other.reliquaryLevel, reliquaryLevel) ||
                other.reliquaryLevel == reliquaryLevel) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.maxLevel, maxLevel) ||
                other.maxLevel == maxLevel) &&
            (identical(other.levelCurrent, levelCurrent) ||
                other.levelCurrent == levelCurrent));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, reliquaryCatId,
      reliquaryLevel, name, icon, maxLevel, levelCurrent);

  /// Create a copy of CalculatorSyncAvatarReliquary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CalculatorSyncAvatarReliquaryImplCopyWith<
          _$CalculatorSyncAvatarReliquaryImpl>
      get copyWith => __$$CalculatorSyncAvatarReliquaryImplCopyWithImpl<
          _$CalculatorSyncAvatarReliquaryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CalculatorSyncAvatarReliquaryImplToJson(
      this,
    );
  }
}

abstract class _CalculatorSyncAvatarReliquary
    implements CalculatorSyncAvatarReliquary {
  const factory _CalculatorSyncAvatarReliquary(
          {required final int id,
          @JsonKey(name: 'reliquary_cat_id') required final int reliquaryCatId,
          @JsonKey(name: 'reliquary_level') required final int reliquaryLevel,
          required final String name,
          required final String icon,
          @JsonKey(name: 'max_level') required final int maxLevel,
          @JsonKey(name: 'level_current') required final int levelCurrent}) =
      _$CalculatorSyncAvatarReliquaryImpl;

  factory _CalculatorSyncAvatarReliquary.fromJson(Map<String, dynamic> json) =
      _$CalculatorSyncAvatarReliquaryImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'reliquary_cat_id')
  int get reliquaryCatId;
  @override
  @JsonKey(name: 'reliquary_level')
  int get reliquaryLevel;
  @override
  String get name;
  @override
  String get icon;
  @override
  @JsonKey(name: 'max_level')
  int get maxLevel;
  @override
  @JsonKey(name: 'level_current')
  int get levelCurrent;

  /// Create a copy of CalculatorSyncAvatarReliquary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CalculatorSyncAvatarReliquaryImplCopyWith<
          _$CalculatorSyncAvatarReliquaryImpl>
      get copyWith => throw _privateConstructorUsedError;
}

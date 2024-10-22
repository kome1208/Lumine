// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'calculator_avatar_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CalculatorAvatarList _$CalculatorAvatarListFromJson(Map<String, dynamic> json) {
  return _CalculatorAvatarList.fromJson(json);
}

/// @nodoc
mixin _$CalculatorAvatarList {
  List<CalculatorAvatar> get list => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;

  /// Serializes this CalculatorAvatarList to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CalculatorAvatarList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CalculatorAvatarListCopyWith<CalculatorAvatarList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalculatorAvatarListCopyWith<$Res> {
  factory $CalculatorAvatarListCopyWith(CalculatorAvatarList value,
          $Res Function(CalculatorAvatarList) then) =
      _$CalculatorAvatarListCopyWithImpl<$Res, CalculatorAvatarList>;
  @useResult
  $Res call({List<CalculatorAvatar> list, int total});
}

/// @nodoc
class _$CalculatorAvatarListCopyWithImpl<$Res,
        $Val extends CalculatorAvatarList>
    implements $CalculatorAvatarListCopyWith<$Res> {
  _$CalculatorAvatarListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CalculatorAvatarList
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
              as List<CalculatorAvatar>,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CalculatorAvatarListImplCopyWith<$Res>
    implements $CalculatorAvatarListCopyWith<$Res> {
  factory _$$CalculatorAvatarListImplCopyWith(_$CalculatorAvatarListImpl value,
          $Res Function(_$CalculatorAvatarListImpl) then) =
      __$$CalculatorAvatarListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CalculatorAvatar> list, int total});
}

/// @nodoc
class __$$CalculatorAvatarListImplCopyWithImpl<$Res>
    extends _$CalculatorAvatarListCopyWithImpl<$Res, _$CalculatorAvatarListImpl>
    implements _$$CalculatorAvatarListImplCopyWith<$Res> {
  __$$CalculatorAvatarListImplCopyWithImpl(_$CalculatorAvatarListImpl _value,
      $Res Function(_$CalculatorAvatarListImpl) _then)
      : super(_value, _then);

  /// Create a copy of CalculatorAvatarList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
    Object? total = null,
  }) {
    return _then(_$CalculatorAvatarListImpl(
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<CalculatorAvatar>,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CalculatorAvatarListImpl implements _CalculatorAvatarList {
  const _$CalculatorAvatarListImpl(
      {required final List<CalculatorAvatar> list, required this.total})
      : _list = list;

  factory _$CalculatorAvatarListImpl.fromJson(Map<String, dynamic> json) =>
      _$$CalculatorAvatarListImplFromJson(json);

  final List<CalculatorAvatar> _list;
  @override
  List<CalculatorAvatar> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  final int total;

  @override
  String toString() {
    return 'CalculatorAvatarList(list: $list, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalculatorAvatarListImpl &&
            const DeepCollectionEquality().equals(other._list, _list) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_list), total);

  /// Create a copy of CalculatorAvatarList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CalculatorAvatarListImplCopyWith<_$CalculatorAvatarListImpl>
      get copyWith =>
          __$$CalculatorAvatarListImplCopyWithImpl<_$CalculatorAvatarListImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CalculatorAvatarListImplToJson(
      this,
    );
  }
}

abstract class _CalculatorAvatarList implements CalculatorAvatarList {
  const factory _CalculatorAvatarList(
      {required final List<CalculatorAvatar> list,
      required final int total}) = _$CalculatorAvatarListImpl;

  factory _CalculatorAvatarList.fromJson(Map<String, dynamic> json) =
      _$CalculatorAvatarListImpl.fromJson;

  @override
  List<CalculatorAvatar> get list;
  @override
  int get total;

  /// Create a copy of CalculatorAvatarList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CalculatorAvatarListImplCopyWith<_$CalculatorAvatarListImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CalculatorAvatar _$CalculatorAvatarFromJson(Map<String, dynamic> json) {
  return _CalculatorAvatar.fromJson(json);
}

/// @nodoc
mixin _$CalculatorAvatar {
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
  @JsonKey(name: 'talent_icons')
  List<String> get talentIcons => throw _privateConstructorUsedError;
  @JsonKey(name: 'side_icon')
  String get sideIcon => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_pictures')
  List<ProfilePicture> get profilePictures =>
      throw _privateConstructorUsedError;
  List<CalculatorAvatarTalent> get talents =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'skill_list')
  List<CalculatorAvatarSkill> get skillList =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'wiki_url')
  String get wikiUrl => throw _privateConstructorUsedError;

  /// Serializes this CalculatorAvatar to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CalculatorAvatar
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CalculatorAvatarCopyWith<CalculatorAvatar> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalculatorAvatarCopyWith<$Res> {
  factory $CalculatorAvatarCopyWith(
          CalculatorAvatar value, $Res Function(CalculatorAvatar) then) =
      _$CalculatorAvatarCopyWithImpl<$Res, CalculatorAvatar>;
  @useResult
  $Res call(
      {int id,
      String name,
      String icon,
      @JsonKey(name: 'weapon_cat_id') int weaponCatId,
      @JsonKey(name: 'avatar_level') int avatarLevel,
      @JsonKey(name: 'element_attr_id') int elementAttrId,
      @JsonKey(name: 'max_level') int maxLevel,
      @JsonKey(name: 'talent_icons') List<String> talentIcons,
      @JsonKey(name: 'side_icon') String sideIcon,
      @JsonKey(name: 'profile_pictures') List<ProfilePicture> profilePictures,
      List<CalculatorAvatarTalent> talents,
      @JsonKey(name: 'skill_list') List<CalculatorAvatarSkill> skillList,
      @JsonKey(name: 'wiki_url') String wikiUrl});
}

/// @nodoc
class _$CalculatorAvatarCopyWithImpl<$Res, $Val extends CalculatorAvatar>
    implements $CalculatorAvatarCopyWith<$Res> {
  _$CalculatorAvatarCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CalculatorAvatar
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
    Object? talentIcons = null,
    Object? sideIcon = null,
    Object? profilePictures = null,
    Object? talents = null,
    Object? skillList = null,
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
      talentIcons: null == talentIcons
          ? _value.talentIcons
          : talentIcons // ignore: cast_nullable_to_non_nullable
              as List<String>,
      sideIcon: null == sideIcon
          ? _value.sideIcon
          : sideIcon // ignore: cast_nullable_to_non_nullable
              as String,
      profilePictures: null == profilePictures
          ? _value.profilePictures
          : profilePictures // ignore: cast_nullable_to_non_nullable
              as List<ProfilePicture>,
      talents: null == talents
          ? _value.talents
          : talents // ignore: cast_nullable_to_non_nullable
              as List<CalculatorAvatarTalent>,
      skillList: null == skillList
          ? _value.skillList
          : skillList // ignore: cast_nullable_to_non_nullable
              as List<CalculatorAvatarSkill>,
      wikiUrl: null == wikiUrl
          ? _value.wikiUrl
          : wikiUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CalculatorAvatarImplCopyWith<$Res>
    implements $CalculatorAvatarCopyWith<$Res> {
  factory _$$CalculatorAvatarImplCopyWith(_$CalculatorAvatarImpl value,
          $Res Function(_$CalculatorAvatarImpl) then) =
      __$$CalculatorAvatarImplCopyWithImpl<$Res>;
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
      @JsonKey(name: 'talent_icons') List<String> talentIcons,
      @JsonKey(name: 'side_icon') String sideIcon,
      @JsonKey(name: 'profile_pictures') List<ProfilePicture> profilePictures,
      List<CalculatorAvatarTalent> talents,
      @JsonKey(name: 'skill_list') List<CalculatorAvatarSkill> skillList,
      @JsonKey(name: 'wiki_url') String wikiUrl});
}

/// @nodoc
class __$$CalculatorAvatarImplCopyWithImpl<$Res>
    extends _$CalculatorAvatarCopyWithImpl<$Res, _$CalculatorAvatarImpl>
    implements _$$CalculatorAvatarImplCopyWith<$Res> {
  __$$CalculatorAvatarImplCopyWithImpl(_$CalculatorAvatarImpl _value,
      $Res Function(_$CalculatorAvatarImpl) _then)
      : super(_value, _then);

  /// Create a copy of CalculatorAvatar
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
    Object? talentIcons = null,
    Object? sideIcon = null,
    Object? profilePictures = null,
    Object? talents = null,
    Object? skillList = null,
    Object? wikiUrl = null,
  }) {
    return _then(_$CalculatorAvatarImpl(
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
      talentIcons: null == talentIcons
          ? _value._talentIcons
          : talentIcons // ignore: cast_nullable_to_non_nullable
              as List<String>,
      sideIcon: null == sideIcon
          ? _value.sideIcon
          : sideIcon // ignore: cast_nullable_to_non_nullable
              as String,
      profilePictures: null == profilePictures
          ? _value._profilePictures
          : profilePictures // ignore: cast_nullable_to_non_nullable
              as List<ProfilePicture>,
      talents: null == talents
          ? _value._talents
          : talents // ignore: cast_nullable_to_non_nullable
              as List<CalculatorAvatarTalent>,
      skillList: null == skillList
          ? _value._skillList
          : skillList // ignore: cast_nullable_to_non_nullable
              as List<CalculatorAvatarSkill>,
      wikiUrl: null == wikiUrl
          ? _value.wikiUrl
          : wikiUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CalculatorAvatarImpl implements _CalculatorAvatar {
  const _$CalculatorAvatarImpl(
      {required this.id,
      required this.name,
      required this.icon,
      @JsonKey(name: 'weapon_cat_id') required this.weaponCatId,
      @JsonKey(name: 'avatar_level') required this.avatarLevel,
      @JsonKey(name: 'element_attr_id') required this.elementAttrId,
      @JsonKey(name: 'max_level') required this.maxLevel,
      @JsonKey(name: 'talent_icons') required final List<String> talentIcons,
      @JsonKey(name: 'side_icon') required this.sideIcon,
      @JsonKey(name: 'profile_pictures')
      required final List<ProfilePicture> profilePictures,
      required final List<CalculatorAvatarTalent> talents,
      @JsonKey(name: 'skill_list')
      required final List<CalculatorAvatarSkill> skillList,
      @JsonKey(name: 'wiki_url') required this.wikiUrl})
      : _talentIcons = talentIcons,
        _profilePictures = profilePictures,
        _talents = talents,
        _skillList = skillList;

  factory _$CalculatorAvatarImpl.fromJson(Map<String, dynamic> json) =>
      _$$CalculatorAvatarImplFromJson(json);

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
  final List<String> _talentIcons;
  @override
  @JsonKey(name: 'talent_icons')
  List<String> get talentIcons {
    if (_talentIcons is EqualUnmodifiableListView) return _talentIcons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_talentIcons);
  }

  @override
  @JsonKey(name: 'side_icon')
  final String sideIcon;
  final List<ProfilePicture> _profilePictures;
  @override
  @JsonKey(name: 'profile_pictures')
  List<ProfilePicture> get profilePictures {
    if (_profilePictures is EqualUnmodifiableListView) return _profilePictures;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_profilePictures);
  }

  final List<CalculatorAvatarTalent> _talents;
  @override
  List<CalculatorAvatarTalent> get talents {
    if (_talents is EqualUnmodifiableListView) return _talents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_talents);
  }

  final List<CalculatorAvatarSkill> _skillList;
  @override
  @JsonKey(name: 'skill_list')
  List<CalculatorAvatarSkill> get skillList {
    if (_skillList is EqualUnmodifiableListView) return _skillList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_skillList);
  }

  @override
  @JsonKey(name: 'wiki_url')
  final String wikiUrl;

  @override
  String toString() {
    return 'CalculatorAvatar(id: $id, name: $name, icon: $icon, weaponCatId: $weaponCatId, avatarLevel: $avatarLevel, elementAttrId: $elementAttrId, maxLevel: $maxLevel, talentIcons: $talentIcons, sideIcon: $sideIcon, profilePictures: $profilePictures, talents: $talents, skillList: $skillList, wikiUrl: $wikiUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalculatorAvatarImpl &&
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
            const DeepCollectionEquality()
                .equals(other._talentIcons, _talentIcons) &&
            (identical(other.sideIcon, sideIcon) ||
                other.sideIcon == sideIcon) &&
            const DeepCollectionEquality()
                .equals(other._profilePictures, _profilePictures) &&
            const DeepCollectionEquality().equals(other._talents, _talents) &&
            const DeepCollectionEquality()
                .equals(other._skillList, _skillList) &&
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
      const DeepCollectionEquality().hash(_talentIcons),
      sideIcon,
      const DeepCollectionEquality().hash(_profilePictures),
      const DeepCollectionEquality().hash(_talents),
      const DeepCollectionEquality().hash(_skillList),
      wikiUrl);

  /// Create a copy of CalculatorAvatar
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CalculatorAvatarImplCopyWith<_$CalculatorAvatarImpl> get copyWith =>
      __$$CalculatorAvatarImplCopyWithImpl<_$CalculatorAvatarImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CalculatorAvatarImplToJson(
      this,
    );
  }
}

abstract class _CalculatorAvatar implements CalculatorAvatar {
  const factory _CalculatorAvatar(
      {required final int id,
      required final String name,
      required final String icon,
      @JsonKey(name: 'weapon_cat_id') required final int weaponCatId,
      @JsonKey(name: 'avatar_level') required final int avatarLevel,
      @JsonKey(name: 'element_attr_id') required final int elementAttrId,
      @JsonKey(name: 'max_level') required final int maxLevel,
      @JsonKey(name: 'talent_icons') required final List<String> talentIcons,
      @JsonKey(name: 'side_icon') required final String sideIcon,
      @JsonKey(name: 'profile_pictures')
      required final List<ProfilePicture> profilePictures,
      required final List<CalculatorAvatarTalent> talents,
      @JsonKey(name: 'skill_list')
      required final List<CalculatorAvatarSkill> skillList,
      @JsonKey(name: 'wiki_url')
      required final String wikiUrl}) = _$CalculatorAvatarImpl;

  factory _CalculatorAvatar.fromJson(Map<String, dynamic> json) =
      _$CalculatorAvatarImpl.fromJson;

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
  @JsonKey(name: 'talent_icons')
  List<String> get talentIcons;
  @override
  @JsonKey(name: 'side_icon')
  String get sideIcon;
  @override
  @JsonKey(name: 'profile_pictures')
  List<ProfilePicture> get profilePictures;
  @override
  List<CalculatorAvatarTalent> get talents;
  @override
  @JsonKey(name: 'skill_list')
  List<CalculatorAvatarSkill> get skillList;
  @override
  @JsonKey(name: 'wiki_url')
  String get wikiUrl;

  /// Create a copy of CalculatorAvatar
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CalculatorAvatarImplCopyWith<_$CalculatorAvatarImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProfilePicture _$ProfilePictureFromJson(Map<String, dynamic> json) {
  return _ProfilePicture.fromJson(json);
}

/// @nodoc
mixin _$ProfilePicture {
  @JsonKey(name: 'avatar_id')
  String get avatarId => throw _privateConstructorUsedError;
  @JsonKey(name: 'costume_id')
  String get costumeId => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_picture_id')
  String get profilePictureId => throw _privateConstructorUsedError;

  /// Serializes this ProfilePicture to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProfilePicture
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfilePictureCopyWith<ProfilePicture> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfilePictureCopyWith<$Res> {
  factory $ProfilePictureCopyWith(
          ProfilePicture value, $Res Function(ProfilePicture) then) =
      _$ProfilePictureCopyWithImpl<$Res, ProfilePicture>;
  @useResult
  $Res call(
      {@JsonKey(name: 'avatar_id') String avatarId,
      @JsonKey(name: 'costume_id') String costumeId,
      String icon,
      @JsonKey(name: 'profile_picture_id') String profilePictureId});
}

/// @nodoc
class _$ProfilePictureCopyWithImpl<$Res, $Val extends ProfilePicture>
    implements $ProfilePictureCopyWith<$Res> {
  _$ProfilePictureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfilePicture
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? avatarId = null,
    Object? costumeId = null,
    Object? icon = null,
    Object? profilePictureId = null,
  }) {
    return _then(_value.copyWith(
      avatarId: null == avatarId
          ? _value.avatarId
          : avatarId // ignore: cast_nullable_to_non_nullable
              as String,
      costumeId: null == costumeId
          ? _value.costumeId
          : costumeId // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      profilePictureId: null == profilePictureId
          ? _value.profilePictureId
          : profilePictureId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfilePictureImplCopyWith<$Res>
    implements $ProfilePictureCopyWith<$Res> {
  factory _$$ProfilePictureImplCopyWith(_$ProfilePictureImpl value,
          $Res Function(_$ProfilePictureImpl) then) =
      __$$ProfilePictureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'avatar_id') String avatarId,
      @JsonKey(name: 'costume_id') String costumeId,
      String icon,
      @JsonKey(name: 'profile_picture_id') String profilePictureId});
}

/// @nodoc
class __$$ProfilePictureImplCopyWithImpl<$Res>
    extends _$ProfilePictureCopyWithImpl<$Res, _$ProfilePictureImpl>
    implements _$$ProfilePictureImplCopyWith<$Res> {
  __$$ProfilePictureImplCopyWithImpl(
      _$ProfilePictureImpl _value, $Res Function(_$ProfilePictureImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfilePicture
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? avatarId = null,
    Object? costumeId = null,
    Object? icon = null,
    Object? profilePictureId = null,
  }) {
    return _then(_$ProfilePictureImpl(
      avatarId: null == avatarId
          ? _value.avatarId
          : avatarId // ignore: cast_nullable_to_non_nullable
              as String,
      costumeId: null == costumeId
          ? _value.costumeId
          : costumeId // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      profilePictureId: null == profilePictureId
          ? _value.profilePictureId
          : profilePictureId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfilePictureImpl implements _ProfilePicture {
  const _$ProfilePictureImpl(
      {@JsonKey(name: 'avatar_id') required this.avatarId,
      @JsonKey(name: 'costume_id') required this.costumeId,
      required this.icon,
      @JsonKey(name: 'profile_picture_id') required this.profilePictureId});

  factory _$ProfilePictureImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfilePictureImplFromJson(json);

  @override
  @JsonKey(name: 'avatar_id')
  final String avatarId;
  @override
  @JsonKey(name: 'costume_id')
  final String costumeId;
  @override
  final String icon;
  @override
  @JsonKey(name: 'profile_picture_id')
  final String profilePictureId;

  @override
  String toString() {
    return 'ProfilePicture(avatarId: $avatarId, costumeId: $costumeId, icon: $icon, profilePictureId: $profilePictureId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfilePictureImpl &&
            (identical(other.avatarId, avatarId) ||
                other.avatarId == avatarId) &&
            (identical(other.costumeId, costumeId) ||
                other.costumeId == costumeId) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.profilePictureId, profilePictureId) ||
                other.profilePictureId == profilePictureId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, avatarId, costumeId, icon, profilePictureId);

  /// Create a copy of ProfilePicture
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfilePictureImplCopyWith<_$ProfilePictureImpl> get copyWith =>
      __$$ProfilePictureImplCopyWithImpl<_$ProfilePictureImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfilePictureImplToJson(
      this,
    );
  }
}

abstract class _ProfilePicture implements ProfilePicture {
  const factory _ProfilePicture(
      {@JsonKey(name: 'avatar_id') required final String avatarId,
      @JsonKey(name: 'costume_id') required final String costumeId,
      required final String icon,
      @JsonKey(name: 'profile_picture_id')
      required final String profilePictureId}) = _$ProfilePictureImpl;

  factory _ProfilePicture.fromJson(Map<String, dynamic> json) =
      _$ProfilePictureImpl.fromJson;

  @override
  @JsonKey(name: 'avatar_id')
  String get avatarId;
  @override
  @JsonKey(name: 'costume_id')
  String get costumeId;
  @override
  String get icon;
  @override
  @JsonKey(name: 'profile_picture_id')
  String get profilePictureId;

  /// Create a copy of ProfilePicture
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfilePictureImplCopyWith<_$ProfilePictureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CalculatorAvatarTalent _$CalculatorAvatarTalentFromJson(
    Map<String, dynamic> json) {
  return _CalculatorAvatarTalent.fromJson(json);
}

/// @nodoc
mixin _$CalculatorAvatarTalent {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;

  /// Serializes this CalculatorAvatarTalent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CalculatorAvatarTalent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CalculatorAvatarTalentCopyWith<CalculatorAvatarTalent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalculatorAvatarTalentCopyWith<$Res> {
  factory $CalculatorAvatarTalentCopyWith(CalculatorAvatarTalent value,
          $Res Function(CalculatorAvatarTalent) then) =
      _$CalculatorAvatarTalentCopyWithImpl<$Res, CalculatorAvatarTalent>;
  @useResult
  $Res call({int id, String name, String icon});
}

/// @nodoc
class _$CalculatorAvatarTalentCopyWithImpl<$Res,
        $Val extends CalculatorAvatarTalent>
    implements $CalculatorAvatarTalentCopyWith<$Res> {
  _$CalculatorAvatarTalentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CalculatorAvatarTalent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? icon = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CalculatorAvatarTalentImplCopyWith<$Res>
    implements $CalculatorAvatarTalentCopyWith<$Res> {
  factory _$$CalculatorAvatarTalentImplCopyWith(
          _$CalculatorAvatarTalentImpl value,
          $Res Function(_$CalculatorAvatarTalentImpl) then) =
      __$$CalculatorAvatarTalentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String icon});
}

/// @nodoc
class __$$CalculatorAvatarTalentImplCopyWithImpl<$Res>
    extends _$CalculatorAvatarTalentCopyWithImpl<$Res,
        _$CalculatorAvatarTalentImpl>
    implements _$$CalculatorAvatarTalentImplCopyWith<$Res> {
  __$$CalculatorAvatarTalentImplCopyWithImpl(
      _$CalculatorAvatarTalentImpl _value,
      $Res Function(_$CalculatorAvatarTalentImpl) _then)
      : super(_value, _then);

  /// Create a copy of CalculatorAvatarTalent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? icon = null,
  }) {
    return _then(_$CalculatorAvatarTalentImpl(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CalculatorAvatarTalentImpl implements _CalculatorAvatarTalent {
  const _$CalculatorAvatarTalentImpl(
      {required this.id, required this.name, required this.icon});

  factory _$CalculatorAvatarTalentImpl.fromJson(Map<String, dynamic> json) =>
      _$$CalculatorAvatarTalentImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String icon;

  @override
  String toString() {
    return 'CalculatorAvatarTalent(id: $id, name: $name, icon: $icon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalculatorAvatarTalentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, icon);

  /// Create a copy of CalculatorAvatarTalent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CalculatorAvatarTalentImplCopyWith<_$CalculatorAvatarTalentImpl>
      get copyWith => __$$CalculatorAvatarTalentImplCopyWithImpl<
          _$CalculatorAvatarTalentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CalculatorAvatarTalentImplToJson(
      this,
    );
  }
}

abstract class _CalculatorAvatarTalent implements CalculatorAvatarTalent {
  const factory _CalculatorAvatarTalent(
      {required final int id,
      required final String name,
      required final String icon}) = _$CalculatorAvatarTalentImpl;

  factory _CalculatorAvatarTalent.fromJson(Map<String, dynamic> json) =
      _$CalculatorAvatarTalentImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get icon;

  /// Create a copy of CalculatorAvatarTalent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CalculatorAvatarTalentImplCopyWith<_$CalculatorAvatarTalentImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CalculatorAvatarSkill _$CalculatorAvatarSkillFromJson(
    Map<String, dynamic> json) {
  return _CalculatorAvatarSkill.fromJson(json);
}

/// @nodoc
mixin _$CalculatorAvatarSkill {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'group_id')
  int get groupId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;
  @JsonKey(name: 'max_level')
  int get maxLevel => throw _privateConstructorUsedError;

  /// Serializes this CalculatorAvatarSkill to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CalculatorAvatarSkill
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CalculatorAvatarSkillCopyWith<CalculatorAvatarSkill> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalculatorAvatarSkillCopyWith<$Res> {
  factory $CalculatorAvatarSkillCopyWith(CalculatorAvatarSkill value,
          $Res Function(CalculatorAvatarSkill) then) =
      _$CalculatorAvatarSkillCopyWithImpl<$Res, CalculatorAvatarSkill>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'group_id') int groupId,
      String name,
      String icon,
      @JsonKey(name: 'max_level') int maxLevel});
}

/// @nodoc
class _$CalculatorAvatarSkillCopyWithImpl<$Res,
        $Val extends CalculatorAvatarSkill>
    implements $CalculatorAvatarSkillCopyWith<$Res> {
  _$CalculatorAvatarSkillCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CalculatorAvatarSkill
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? groupId = null,
    Object? name = null,
    Object? icon = null,
    Object? maxLevel = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CalculatorAvatarSkillImplCopyWith<$Res>
    implements $CalculatorAvatarSkillCopyWith<$Res> {
  factory _$$CalculatorAvatarSkillImplCopyWith(
          _$CalculatorAvatarSkillImpl value,
          $Res Function(_$CalculatorAvatarSkillImpl) then) =
      __$$CalculatorAvatarSkillImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'group_id') int groupId,
      String name,
      String icon,
      @JsonKey(name: 'max_level') int maxLevel});
}

/// @nodoc
class __$$CalculatorAvatarSkillImplCopyWithImpl<$Res>
    extends _$CalculatorAvatarSkillCopyWithImpl<$Res,
        _$CalculatorAvatarSkillImpl>
    implements _$$CalculatorAvatarSkillImplCopyWith<$Res> {
  __$$CalculatorAvatarSkillImplCopyWithImpl(_$CalculatorAvatarSkillImpl _value,
      $Res Function(_$CalculatorAvatarSkillImpl) _then)
      : super(_value, _then);

  /// Create a copy of CalculatorAvatarSkill
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? groupId = null,
    Object? name = null,
    Object? icon = null,
    Object? maxLevel = null,
  }) {
    return _then(_$CalculatorAvatarSkillImpl(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CalculatorAvatarSkillImpl implements _CalculatorAvatarSkill {
  const _$CalculatorAvatarSkillImpl(
      {required this.id,
      @JsonKey(name: 'group_id') required this.groupId,
      required this.name,
      required this.icon,
      @JsonKey(name: 'max_level') required this.maxLevel});

  factory _$CalculatorAvatarSkillImpl.fromJson(Map<String, dynamic> json) =>
      _$$CalculatorAvatarSkillImplFromJson(json);

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
  String toString() {
    return 'CalculatorAvatarSkill(id: $id, groupId: $groupId, name: $name, icon: $icon, maxLevel: $maxLevel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalculatorAvatarSkillImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.maxLevel, maxLevel) ||
                other.maxLevel == maxLevel));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, groupId, name, icon, maxLevel);

  /// Create a copy of CalculatorAvatarSkill
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CalculatorAvatarSkillImplCopyWith<_$CalculatorAvatarSkillImpl>
      get copyWith => __$$CalculatorAvatarSkillImplCopyWithImpl<
          _$CalculatorAvatarSkillImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CalculatorAvatarSkillImplToJson(
      this,
    );
  }
}

abstract class _CalculatorAvatarSkill implements CalculatorAvatarSkill {
  const factory _CalculatorAvatarSkill(
          {required final int id,
          @JsonKey(name: 'group_id') required final int groupId,
          required final String name,
          required final String icon,
          @JsonKey(name: 'max_level') required final int maxLevel}) =
      _$CalculatorAvatarSkillImpl;

  factory _CalculatorAvatarSkill.fromJson(Map<String, dynamic> json) =
      _$CalculatorAvatarSkillImpl.fromJson;

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

  /// Create a copy of CalculatorAvatarSkill
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CalculatorAvatarSkillImplCopyWith<_$CalculatorAvatarSkillImpl>
      get copyWith => throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'calendar_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Calendar _$CalendarFromJson(Map<String, dynamic> json) {
  return _Calendar.fromJson(json);
}

/// @nodoc
mixin _$Calendar {
  List<CalendarItem> get calendar => throw _privateConstructorUsedError;

  /// Serializes this Calendar to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Calendar
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CalendarCopyWith<Calendar> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalendarCopyWith<$Res> {
  factory $CalendarCopyWith(Calendar value, $Res Function(Calendar) then) =
      _$CalendarCopyWithImpl<$Res, Calendar>;
  @useResult
  $Res call({List<CalendarItem> calendar});
}

/// @nodoc
class _$CalendarCopyWithImpl<$Res, $Val extends Calendar>
    implements $CalendarCopyWith<$Res> {
  _$CalendarCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Calendar
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? calendar = null,
  }) {
    return _then(_value.copyWith(
      calendar: null == calendar
          ? _value.calendar
          : calendar // ignore: cast_nullable_to_non_nullable
              as List<CalendarItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CalendarImplCopyWith<$Res>
    implements $CalendarCopyWith<$Res> {
  factory _$$CalendarImplCopyWith(
          _$CalendarImpl value, $Res Function(_$CalendarImpl) then) =
      __$$CalendarImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CalendarItem> calendar});
}

/// @nodoc
class __$$CalendarImplCopyWithImpl<$Res>
    extends _$CalendarCopyWithImpl<$Res, _$CalendarImpl>
    implements _$$CalendarImplCopyWith<$Res> {
  __$$CalendarImplCopyWithImpl(
      _$CalendarImpl _value, $Res Function(_$CalendarImpl) _then)
      : super(_value, _then);

  /// Create a copy of Calendar
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? calendar = null,
  }) {
    return _then(_$CalendarImpl(
      calendar: null == calendar
          ? _value._calendar
          : calendar // ignore: cast_nullable_to_non_nullable
              as List<CalendarItem>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CalendarImpl implements _Calendar {
  const _$CalendarImpl({required final List<CalendarItem> calendar})
      : _calendar = calendar;

  factory _$CalendarImpl.fromJson(Map<String, dynamic> json) =>
      _$$CalendarImplFromJson(json);

  final List<CalendarItem> _calendar;
  @override
  List<CalendarItem> get calendar {
    if (_calendar is EqualUnmodifiableListView) return _calendar;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_calendar);
  }

  @override
  String toString() {
    return 'Calendar(calendar: $calendar)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalendarImpl &&
            const DeepCollectionEquality().equals(other._calendar, _calendar));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_calendar));

  /// Create a copy of Calendar
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CalendarImplCopyWith<_$CalendarImpl> get copyWith =>
      __$$CalendarImplCopyWithImpl<_$CalendarImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CalendarImplToJson(
      this,
    );
  }
}

abstract class _Calendar implements Calendar {
  const factory _Calendar({required final List<CalendarItem> calendar}) =
      _$CalendarImpl;

  factory _Calendar.fromJson(Map<String, dynamic> json) =
      _$CalendarImpl.fromJson;

  @override
  List<CalendarItem> get calendar;

  /// Create a copy of Calendar
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CalendarImplCopyWith<_$CalendarImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CalendarItem _$CalendarItemFromJson(Map<String, dynamic> json) {
  return _CalendarItem.fromJson(json);
}

/// @nodoc
mixin _$CalendarItem {
  @JsonKey(name: 'drop_day')
  List<int> get dropDay => throw _privateConstructorUsedError;
  @JsonKey(name: 'break_type')
  BreakType get breakType => throw _privateConstructorUsedError;
  @JsonKey(name: 'character_abstracts')
  List<Abstract> get characterAbstracts => throw _privateConstructorUsedError;
  @JsonKey(name: 'material_abstracts')
  List<Abstract> get materialAbstracts => throw _privateConstructorUsedError;
  @JsonKey(name: 'obtain_method')
  String get obtainMethod => throw _privateConstructorUsedError;

  /// Serializes this CalendarItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CalendarItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CalendarItemCopyWith<CalendarItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalendarItemCopyWith<$Res> {
  factory $CalendarItemCopyWith(
          CalendarItem value, $Res Function(CalendarItem) then) =
      _$CalendarItemCopyWithImpl<$Res, CalendarItem>;
  @useResult
  $Res call(
      {@JsonKey(name: 'drop_day') List<int> dropDay,
      @JsonKey(name: 'break_type') BreakType breakType,
      @JsonKey(name: 'character_abstracts') List<Abstract> characterAbstracts,
      @JsonKey(name: 'material_abstracts') List<Abstract> materialAbstracts,
      @JsonKey(name: 'obtain_method') String obtainMethod});
}

/// @nodoc
class _$CalendarItemCopyWithImpl<$Res, $Val extends CalendarItem>
    implements $CalendarItemCopyWith<$Res> {
  _$CalendarItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CalendarItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dropDay = null,
    Object? breakType = null,
    Object? characterAbstracts = null,
    Object? materialAbstracts = null,
    Object? obtainMethod = null,
  }) {
    return _then(_value.copyWith(
      dropDay: null == dropDay
          ? _value.dropDay
          : dropDay // ignore: cast_nullable_to_non_nullable
              as List<int>,
      breakType: null == breakType
          ? _value.breakType
          : breakType // ignore: cast_nullable_to_non_nullable
              as BreakType,
      characterAbstracts: null == characterAbstracts
          ? _value.characterAbstracts
          : characterAbstracts // ignore: cast_nullable_to_non_nullable
              as List<Abstract>,
      materialAbstracts: null == materialAbstracts
          ? _value.materialAbstracts
          : materialAbstracts // ignore: cast_nullable_to_non_nullable
              as List<Abstract>,
      obtainMethod: null == obtainMethod
          ? _value.obtainMethod
          : obtainMethod // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CalendarItemImplCopyWith<$Res>
    implements $CalendarItemCopyWith<$Res> {
  factory _$$CalendarItemImplCopyWith(
          _$CalendarItemImpl value, $Res Function(_$CalendarItemImpl) then) =
      __$$CalendarItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'drop_day') List<int> dropDay,
      @JsonKey(name: 'break_type') BreakType breakType,
      @JsonKey(name: 'character_abstracts') List<Abstract> characterAbstracts,
      @JsonKey(name: 'material_abstracts') List<Abstract> materialAbstracts,
      @JsonKey(name: 'obtain_method') String obtainMethod});
}

/// @nodoc
class __$$CalendarItemImplCopyWithImpl<$Res>
    extends _$CalendarItemCopyWithImpl<$Res, _$CalendarItemImpl>
    implements _$$CalendarItemImplCopyWith<$Res> {
  __$$CalendarItemImplCopyWithImpl(
      _$CalendarItemImpl _value, $Res Function(_$CalendarItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of CalendarItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dropDay = null,
    Object? breakType = null,
    Object? characterAbstracts = null,
    Object? materialAbstracts = null,
    Object? obtainMethod = null,
  }) {
    return _then(_$CalendarItemImpl(
      dropDay: null == dropDay
          ? _value._dropDay
          : dropDay // ignore: cast_nullable_to_non_nullable
              as List<int>,
      breakType: null == breakType
          ? _value.breakType
          : breakType // ignore: cast_nullable_to_non_nullable
              as BreakType,
      characterAbstracts: null == characterAbstracts
          ? _value._characterAbstracts
          : characterAbstracts // ignore: cast_nullable_to_non_nullable
              as List<Abstract>,
      materialAbstracts: null == materialAbstracts
          ? _value._materialAbstracts
          : materialAbstracts // ignore: cast_nullable_to_non_nullable
              as List<Abstract>,
      obtainMethod: null == obtainMethod
          ? _value.obtainMethod
          : obtainMethod // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CalendarItemImpl implements _CalendarItem {
  const _$CalendarItemImpl(
      {@JsonKey(name: 'drop_day') required final List<int> dropDay,
      @JsonKey(name: 'break_type') required this.breakType,
      @JsonKey(name: 'character_abstracts')
      required final List<Abstract> characterAbstracts,
      @JsonKey(name: 'material_abstracts')
      required final List<Abstract> materialAbstracts,
      @JsonKey(name: 'obtain_method') required this.obtainMethod})
      : _dropDay = dropDay,
        _characterAbstracts = characterAbstracts,
        _materialAbstracts = materialAbstracts;

  factory _$CalendarItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$CalendarItemImplFromJson(json);

  final List<int> _dropDay;
  @override
  @JsonKey(name: 'drop_day')
  List<int> get dropDay {
    if (_dropDay is EqualUnmodifiableListView) return _dropDay;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dropDay);
  }

  @override
  @JsonKey(name: 'break_type')
  final BreakType breakType;
  final List<Abstract> _characterAbstracts;
  @override
  @JsonKey(name: 'character_abstracts')
  List<Abstract> get characterAbstracts {
    if (_characterAbstracts is EqualUnmodifiableListView)
      return _characterAbstracts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_characterAbstracts);
  }

  final List<Abstract> _materialAbstracts;
  @override
  @JsonKey(name: 'material_abstracts')
  List<Abstract> get materialAbstracts {
    if (_materialAbstracts is EqualUnmodifiableListView)
      return _materialAbstracts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_materialAbstracts);
  }

  @override
  @JsonKey(name: 'obtain_method')
  final String obtainMethod;

  @override
  String toString() {
    return 'CalendarItem(dropDay: $dropDay, breakType: $breakType, characterAbstracts: $characterAbstracts, materialAbstracts: $materialAbstracts, obtainMethod: $obtainMethod)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalendarItemImpl &&
            const DeepCollectionEquality().equals(other._dropDay, _dropDay) &&
            (identical(other.breakType, breakType) ||
                other.breakType == breakType) &&
            const DeepCollectionEquality()
                .equals(other._characterAbstracts, _characterAbstracts) &&
            const DeepCollectionEquality()
                .equals(other._materialAbstracts, _materialAbstracts) &&
            (identical(other.obtainMethod, obtainMethod) ||
                other.obtainMethod == obtainMethod));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_dropDay),
      breakType,
      const DeepCollectionEquality().hash(_characterAbstracts),
      const DeepCollectionEquality().hash(_materialAbstracts),
      obtainMethod);

  /// Create a copy of CalendarItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CalendarItemImplCopyWith<_$CalendarItemImpl> get copyWith =>
      __$$CalendarItemImplCopyWithImpl<_$CalendarItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CalendarItemImplToJson(
      this,
    );
  }
}

abstract class _CalendarItem implements CalendarItem {
  const factory _CalendarItem(
          {@JsonKey(name: 'drop_day') required final List<int> dropDay,
          @JsonKey(name: 'break_type') required final BreakType breakType,
          @JsonKey(name: 'character_abstracts')
          required final List<Abstract> characterAbstracts,
          @JsonKey(name: 'material_abstracts')
          required final List<Abstract> materialAbstracts,
          @JsonKey(name: 'obtain_method') required final String obtainMethod}) =
      _$CalendarItemImpl;

  factory _CalendarItem.fromJson(Map<String, dynamic> json) =
      _$CalendarItemImpl.fromJson;

  @override
  @JsonKey(name: 'drop_day')
  List<int> get dropDay;
  @override
  @JsonKey(name: 'break_type')
  BreakType get breakType;
  @override
  @JsonKey(name: 'character_abstracts')
  List<Abstract> get characterAbstracts;
  @override
  @JsonKey(name: 'material_abstracts')
  List<Abstract> get materialAbstracts;
  @override
  @JsonKey(name: 'obtain_method')
  String get obtainMethod;

  /// Create a copy of CalendarItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CalendarItemImplCopyWith<_$CalendarItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Abstract _$AbstractFromJson(Map<String, dynamic> json) {
  return _Abstract.fromJson(json);
}

/// @nodoc
mixin _$Abstract {
  @JsonKey(name: 'entry_page_id')
  String get entryPageId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'icon_url')
  String get iconUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'filter_values')
  FilterValues get filterValues => throw _privateConstructorUsedError;
  String get desc => throw _privateConstructorUsedError;

  /// Serializes this Abstract to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Abstract
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AbstractCopyWith<Abstract> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AbstractCopyWith<$Res> {
  factory $AbstractCopyWith(Abstract value, $Res Function(Abstract) then) =
      _$AbstractCopyWithImpl<$Res, Abstract>;
  @useResult
  $Res call(
      {@JsonKey(name: 'entry_page_id') String entryPageId,
      String name,
      @JsonKey(name: 'icon_url') String iconUrl,
      @JsonKey(name: 'filter_values') FilterValues filterValues,
      String desc});

  $FilterValuesCopyWith<$Res> get filterValues;
}

/// @nodoc
class _$AbstractCopyWithImpl<$Res, $Val extends Abstract>
    implements $AbstractCopyWith<$Res> {
  _$AbstractCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Abstract
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entryPageId = null,
    Object? name = null,
    Object? iconUrl = null,
    Object? filterValues = null,
    Object? desc = null,
  }) {
    return _then(_value.copyWith(
      entryPageId: null == entryPageId
          ? _value.entryPageId
          : entryPageId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      iconUrl: null == iconUrl
          ? _value.iconUrl
          : iconUrl // ignore: cast_nullable_to_non_nullable
              as String,
      filterValues: null == filterValues
          ? _value.filterValues
          : filterValues // ignore: cast_nullable_to_non_nullable
              as FilterValues,
      desc: null == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of Abstract
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FilterValuesCopyWith<$Res> get filterValues {
    return $FilterValuesCopyWith<$Res>(_value.filterValues, (value) {
      return _then(_value.copyWith(filterValues: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AbstractImplCopyWith<$Res>
    implements $AbstractCopyWith<$Res> {
  factory _$$AbstractImplCopyWith(
          _$AbstractImpl value, $Res Function(_$AbstractImpl) then) =
      __$$AbstractImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'entry_page_id') String entryPageId,
      String name,
      @JsonKey(name: 'icon_url') String iconUrl,
      @JsonKey(name: 'filter_values') FilterValues filterValues,
      String desc});

  @override
  $FilterValuesCopyWith<$Res> get filterValues;
}

/// @nodoc
class __$$AbstractImplCopyWithImpl<$Res>
    extends _$AbstractCopyWithImpl<$Res, _$AbstractImpl>
    implements _$$AbstractImplCopyWith<$Res> {
  __$$AbstractImplCopyWithImpl(
      _$AbstractImpl _value, $Res Function(_$AbstractImpl) _then)
      : super(_value, _then);

  /// Create a copy of Abstract
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entryPageId = null,
    Object? name = null,
    Object? iconUrl = null,
    Object? filterValues = null,
    Object? desc = null,
  }) {
    return _then(_$AbstractImpl(
      entryPageId: null == entryPageId
          ? _value.entryPageId
          : entryPageId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      iconUrl: null == iconUrl
          ? _value.iconUrl
          : iconUrl // ignore: cast_nullable_to_non_nullable
              as String,
      filterValues: null == filterValues
          ? _value.filterValues
          : filterValues // ignore: cast_nullable_to_non_nullable
              as FilterValues,
      desc: null == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AbstractImpl implements _Abstract {
  const _$AbstractImpl(
      {@JsonKey(name: 'entry_page_id') required this.entryPageId,
      required this.name,
      @JsonKey(name: 'icon_url') required this.iconUrl,
      @JsonKey(name: 'filter_values') required this.filterValues,
      required this.desc});

  factory _$AbstractImpl.fromJson(Map<String, dynamic> json) =>
      _$$AbstractImplFromJson(json);

  @override
  @JsonKey(name: 'entry_page_id')
  final String entryPageId;
  @override
  final String name;
  @override
  @JsonKey(name: 'icon_url')
  final String iconUrl;
  @override
  @JsonKey(name: 'filter_values')
  final FilterValues filterValues;
  @override
  final String desc;

  @override
  String toString() {
    return 'Abstract(entryPageId: $entryPageId, name: $name, iconUrl: $iconUrl, filterValues: $filterValues, desc: $desc)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AbstractImpl &&
            (identical(other.entryPageId, entryPageId) ||
                other.entryPageId == entryPageId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.iconUrl, iconUrl) || other.iconUrl == iconUrl) &&
            (identical(other.filterValues, filterValues) ||
                other.filterValues == filterValues) &&
            (identical(other.desc, desc) || other.desc == desc));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, entryPageId, name, iconUrl, filterValues, desc);

  /// Create a copy of Abstract
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AbstractImplCopyWith<_$AbstractImpl> get copyWith =>
      __$$AbstractImplCopyWithImpl<_$AbstractImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AbstractImplToJson(
      this,
    );
  }
}

abstract class _Abstract implements Abstract {
  const factory _Abstract(
      {@JsonKey(name: 'entry_page_id') required final String entryPageId,
      required final String name,
      @JsonKey(name: 'icon_url') required final String iconUrl,
      @JsonKey(name: 'filter_values') required final FilterValues filterValues,
      required final String desc}) = _$AbstractImpl;

  factory _Abstract.fromJson(Map<String, dynamic> json) =
      _$AbstractImpl.fromJson;

  @override
  @JsonKey(name: 'entry_page_id')
  String get entryPageId;
  @override
  String get name;
  @override
  @JsonKey(name: 'icon_url')
  String get iconUrl;
  @override
  @JsonKey(name: 'filter_values')
  FilterValues get filterValues;
  @override
  String get desc;

  /// Create a copy of Abstract
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AbstractImplCopyWith<_$AbstractImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FilterValues _$FilterValuesFromJson(Map<String, dynamic> json) {
  return _FilterValues.fromJson(json);
}

/// @nodoc
mixin _$FilterValues {
  @JsonKey(name: 'weapon_property')
  FilterProperty? get weaponProperty => throw _privateConstructorUsedError;
  @JsonKey(name: 'weapon_rarity')
  FilterProperty? get weaponRarity => throw _privateConstructorUsedError;
  @JsonKey(name: 'weapon_type')
  FilterProperty? get weaponType => throw _privateConstructorUsedError;
  @JsonKey(name: 'character_property')
  FilterProperty? get characterProperty => throw _privateConstructorUsedError;
  @JsonKey(name: 'character_vision')
  FilterProperty? get characterVision => throw _privateConstructorUsedError;
  @JsonKey(name: 'character_region')
  FilterProperty? get characterRegion => throw _privateConstructorUsedError;
  @JsonKey(name: 'character_rarity')
  FilterProperty? get characterRarity => throw _privateConstructorUsedError;
  @JsonKey(name: 'character_weapon')
  FilterProperty? get characterWeapon => throw _privateConstructorUsedError;

  /// Serializes this FilterValues to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FilterValues
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FilterValuesCopyWith<FilterValues> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterValuesCopyWith<$Res> {
  factory $FilterValuesCopyWith(
          FilterValues value, $Res Function(FilterValues) then) =
      _$FilterValuesCopyWithImpl<$Res, FilterValues>;
  @useResult
  $Res call(
      {@JsonKey(name: 'weapon_property') FilterProperty? weaponProperty,
      @JsonKey(name: 'weapon_rarity') FilterProperty? weaponRarity,
      @JsonKey(name: 'weapon_type') FilterProperty? weaponType,
      @JsonKey(name: 'character_property') FilterProperty? characterProperty,
      @JsonKey(name: 'character_vision') FilterProperty? characterVision,
      @JsonKey(name: 'character_region') FilterProperty? characterRegion,
      @JsonKey(name: 'character_rarity') FilterProperty? characterRarity,
      @JsonKey(name: 'character_weapon') FilterProperty? characterWeapon});

  $FilterPropertyCopyWith<$Res>? get weaponProperty;
  $FilterPropertyCopyWith<$Res>? get weaponRarity;
  $FilterPropertyCopyWith<$Res>? get weaponType;
  $FilterPropertyCopyWith<$Res>? get characterProperty;
  $FilterPropertyCopyWith<$Res>? get characterVision;
  $FilterPropertyCopyWith<$Res>? get characterRegion;
  $FilterPropertyCopyWith<$Res>? get characterRarity;
  $FilterPropertyCopyWith<$Res>? get characterWeapon;
}

/// @nodoc
class _$FilterValuesCopyWithImpl<$Res, $Val extends FilterValues>
    implements $FilterValuesCopyWith<$Res> {
  _$FilterValuesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FilterValues
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weaponProperty = freezed,
    Object? weaponRarity = freezed,
    Object? weaponType = freezed,
    Object? characterProperty = freezed,
    Object? characterVision = freezed,
    Object? characterRegion = freezed,
    Object? characterRarity = freezed,
    Object? characterWeapon = freezed,
  }) {
    return _then(_value.copyWith(
      weaponProperty: freezed == weaponProperty
          ? _value.weaponProperty
          : weaponProperty // ignore: cast_nullable_to_non_nullable
              as FilterProperty?,
      weaponRarity: freezed == weaponRarity
          ? _value.weaponRarity
          : weaponRarity // ignore: cast_nullable_to_non_nullable
              as FilterProperty?,
      weaponType: freezed == weaponType
          ? _value.weaponType
          : weaponType // ignore: cast_nullable_to_non_nullable
              as FilterProperty?,
      characterProperty: freezed == characterProperty
          ? _value.characterProperty
          : characterProperty // ignore: cast_nullable_to_non_nullable
              as FilterProperty?,
      characterVision: freezed == characterVision
          ? _value.characterVision
          : characterVision // ignore: cast_nullable_to_non_nullable
              as FilterProperty?,
      characterRegion: freezed == characterRegion
          ? _value.characterRegion
          : characterRegion // ignore: cast_nullable_to_non_nullable
              as FilterProperty?,
      characterRarity: freezed == characterRarity
          ? _value.characterRarity
          : characterRarity // ignore: cast_nullable_to_non_nullable
              as FilterProperty?,
      characterWeapon: freezed == characterWeapon
          ? _value.characterWeapon
          : characterWeapon // ignore: cast_nullable_to_non_nullable
              as FilterProperty?,
    ) as $Val);
  }

  /// Create a copy of FilterValues
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FilterPropertyCopyWith<$Res>? get weaponProperty {
    if (_value.weaponProperty == null) {
      return null;
    }

    return $FilterPropertyCopyWith<$Res>(_value.weaponProperty!, (value) {
      return _then(_value.copyWith(weaponProperty: value) as $Val);
    });
  }

  /// Create a copy of FilterValues
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FilterPropertyCopyWith<$Res>? get weaponRarity {
    if (_value.weaponRarity == null) {
      return null;
    }

    return $FilterPropertyCopyWith<$Res>(_value.weaponRarity!, (value) {
      return _then(_value.copyWith(weaponRarity: value) as $Val);
    });
  }

  /// Create a copy of FilterValues
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FilterPropertyCopyWith<$Res>? get weaponType {
    if (_value.weaponType == null) {
      return null;
    }

    return $FilterPropertyCopyWith<$Res>(_value.weaponType!, (value) {
      return _then(_value.copyWith(weaponType: value) as $Val);
    });
  }

  /// Create a copy of FilterValues
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FilterPropertyCopyWith<$Res>? get characterProperty {
    if (_value.characterProperty == null) {
      return null;
    }

    return $FilterPropertyCopyWith<$Res>(_value.characterProperty!, (value) {
      return _then(_value.copyWith(characterProperty: value) as $Val);
    });
  }

  /// Create a copy of FilterValues
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FilterPropertyCopyWith<$Res>? get characterVision {
    if (_value.characterVision == null) {
      return null;
    }

    return $FilterPropertyCopyWith<$Res>(_value.characterVision!, (value) {
      return _then(_value.copyWith(characterVision: value) as $Val);
    });
  }

  /// Create a copy of FilterValues
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FilterPropertyCopyWith<$Res>? get characterRegion {
    if (_value.characterRegion == null) {
      return null;
    }

    return $FilterPropertyCopyWith<$Res>(_value.characterRegion!, (value) {
      return _then(_value.copyWith(characterRegion: value) as $Val);
    });
  }

  /// Create a copy of FilterValues
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FilterPropertyCopyWith<$Res>? get characterRarity {
    if (_value.characterRarity == null) {
      return null;
    }

    return $FilterPropertyCopyWith<$Res>(_value.characterRarity!, (value) {
      return _then(_value.copyWith(characterRarity: value) as $Val);
    });
  }

  /// Create a copy of FilterValues
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FilterPropertyCopyWith<$Res>? get characterWeapon {
    if (_value.characterWeapon == null) {
      return null;
    }

    return $FilterPropertyCopyWith<$Res>(_value.characterWeapon!, (value) {
      return _then(_value.copyWith(characterWeapon: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FilterValuesImplCopyWith<$Res>
    implements $FilterValuesCopyWith<$Res> {
  factory _$$FilterValuesImplCopyWith(
          _$FilterValuesImpl value, $Res Function(_$FilterValuesImpl) then) =
      __$$FilterValuesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'weapon_property') FilterProperty? weaponProperty,
      @JsonKey(name: 'weapon_rarity') FilterProperty? weaponRarity,
      @JsonKey(name: 'weapon_type') FilterProperty? weaponType,
      @JsonKey(name: 'character_property') FilterProperty? characterProperty,
      @JsonKey(name: 'character_vision') FilterProperty? characterVision,
      @JsonKey(name: 'character_region') FilterProperty? characterRegion,
      @JsonKey(name: 'character_rarity') FilterProperty? characterRarity,
      @JsonKey(name: 'character_weapon') FilterProperty? characterWeapon});

  @override
  $FilterPropertyCopyWith<$Res>? get weaponProperty;
  @override
  $FilterPropertyCopyWith<$Res>? get weaponRarity;
  @override
  $FilterPropertyCopyWith<$Res>? get weaponType;
  @override
  $FilterPropertyCopyWith<$Res>? get characterProperty;
  @override
  $FilterPropertyCopyWith<$Res>? get characterVision;
  @override
  $FilterPropertyCopyWith<$Res>? get characterRegion;
  @override
  $FilterPropertyCopyWith<$Res>? get characterRarity;
  @override
  $FilterPropertyCopyWith<$Res>? get characterWeapon;
}

/// @nodoc
class __$$FilterValuesImplCopyWithImpl<$Res>
    extends _$FilterValuesCopyWithImpl<$Res, _$FilterValuesImpl>
    implements _$$FilterValuesImplCopyWith<$Res> {
  __$$FilterValuesImplCopyWithImpl(
      _$FilterValuesImpl _value, $Res Function(_$FilterValuesImpl) _then)
      : super(_value, _then);

  /// Create a copy of FilterValues
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weaponProperty = freezed,
    Object? weaponRarity = freezed,
    Object? weaponType = freezed,
    Object? characterProperty = freezed,
    Object? characterVision = freezed,
    Object? characterRegion = freezed,
    Object? characterRarity = freezed,
    Object? characterWeapon = freezed,
  }) {
    return _then(_$FilterValuesImpl(
      weaponProperty: freezed == weaponProperty
          ? _value.weaponProperty
          : weaponProperty // ignore: cast_nullable_to_non_nullable
              as FilterProperty?,
      weaponRarity: freezed == weaponRarity
          ? _value.weaponRarity
          : weaponRarity // ignore: cast_nullable_to_non_nullable
              as FilterProperty?,
      weaponType: freezed == weaponType
          ? _value.weaponType
          : weaponType // ignore: cast_nullable_to_non_nullable
              as FilterProperty?,
      characterProperty: freezed == characterProperty
          ? _value.characterProperty
          : characterProperty // ignore: cast_nullable_to_non_nullable
              as FilterProperty?,
      characterVision: freezed == characterVision
          ? _value.characterVision
          : characterVision // ignore: cast_nullable_to_non_nullable
              as FilterProperty?,
      characterRegion: freezed == characterRegion
          ? _value.characterRegion
          : characterRegion // ignore: cast_nullable_to_non_nullable
              as FilterProperty?,
      characterRarity: freezed == characterRarity
          ? _value.characterRarity
          : characterRarity // ignore: cast_nullable_to_non_nullable
              as FilterProperty?,
      characterWeapon: freezed == characterWeapon
          ? _value.characterWeapon
          : characterWeapon // ignore: cast_nullable_to_non_nullable
              as FilterProperty?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FilterValuesImpl implements _FilterValues {
  const _$FilterValuesImpl(
      {@JsonKey(name: 'weapon_property') this.weaponProperty,
      @JsonKey(name: 'weapon_rarity') this.weaponRarity,
      @JsonKey(name: 'weapon_type') this.weaponType,
      @JsonKey(name: 'character_property') this.characterProperty,
      @JsonKey(name: 'character_vision') this.characterVision,
      @JsonKey(name: 'character_region') this.characterRegion,
      @JsonKey(name: 'character_rarity') this.characterRarity,
      @JsonKey(name: 'character_weapon') this.characterWeapon});

  factory _$FilterValuesImpl.fromJson(Map<String, dynamic> json) =>
      _$$FilterValuesImplFromJson(json);

  @override
  @JsonKey(name: 'weapon_property')
  final FilterProperty? weaponProperty;
  @override
  @JsonKey(name: 'weapon_rarity')
  final FilterProperty? weaponRarity;
  @override
  @JsonKey(name: 'weapon_type')
  final FilterProperty? weaponType;
  @override
  @JsonKey(name: 'character_property')
  final FilterProperty? characterProperty;
  @override
  @JsonKey(name: 'character_vision')
  final FilterProperty? characterVision;
  @override
  @JsonKey(name: 'character_region')
  final FilterProperty? characterRegion;
  @override
  @JsonKey(name: 'character_rarity')
  final FilterProperty? characterRarity;
  @override
  @JsonKey(name: 'character_weapon')
  final FilterProperty? characterWeapon;

  @override
  String toString() {
    return 'FilterValues(weaponProperty: $weaponProperty, weaponRarity: $weaponRarity, weaponType: $weaponType, characterProperty: $characterProperty, characterVision: $characterVision, characterRegion: $characterRegion, characterRarity: $characterRarity, characterWeapon: $characterWeapon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterValuesImpl &&
            (identical(other.weaponProperty, weaponProperty) ||
                other.weaponProperty == weaponProperty) &&
            (identical(other.weaponRarity, weaponRarity) ||
                other.weaponRarity == weaponRarity) &&
            (identical(other.weaponType, weaponType) ||
                other.weaponType == weaponType) &&
            (identical(other.characterProperty, characterProperty) ||
                other.characterProperty == characterProperty) &&
            (identical(other.characterVision, characterVision) ||
                other.characterVision == characterVision) &&
            (identical(other.characterRegion, characterRegion) ||
                other.characterRegion == characterRegion) &&
            (identical(other.characterRarity, characterRarity) ||
                other.characterRarity == characterRarity) &&
            (identical(other.characterWeapon, characterWeapon) ||
                other.characterWeapon == characterWeapon));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      weaponProperty,
      weaponRarity,
      weaponType,
      characterProperty,
      characterVision,
      characterRegion,
      characterRarity,
      characterWeapon);

  /// Create a copy of FilterValues
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterValuesImplCopyWith<_$FilterValuesImpl> get copyWith =>
      __$$FilterValuesImplCopyWithImpl<_$FilterValuesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FilterValuesImplToJson(
      this,
    );
  }
}

abstract class _FilterValues implements FilterValues {
  const factory _FilterValues(
      {@JsonKey(name: 'weapon_property') final FilterProperty? weaponProperty,
      @JsonKey(name: 'weapon_rarity') final FilterProperty? weaponRarity,
      @JsonKey(name: 'weapon_type') final FilterProperty? weaponType,
      @JsonKey(name: 'character_property')
      final FilterProperty? characterProperty,
      @JsonKey(name: 'character_vision') final FilterProperty? characterVision,
      @JsonKey(name: 'character_region') final FilterProperty? characterRegion,
      @JsonKey(name: 'character_rarity') final FilterProperty? characterRarity,
      @JsonKey(name: 'character_weapon')
      final FilterProperty? characterWeapon}) = _$FilterValuesImpl;

  factory _FilterValues.fromJson(Map<String, dynamic> json) =
      _$FilterValuesImpl.fromJson;

  @override
  @JsonKey(name: 'weapon_property')
  FilterProperty? get weaponProperty;
  @override
  @JsonKey(name: 'weapon_rarity')
  FilterProperty? get weaponRarity;
  @override
  @JsonKey(name: 'weapon_type')
  FilterProperty? get weaponType;
  @override
  @JsonKey(name: 'character_property')
  FilterProperty? get characterProperty;
  @override
  @JsonKey(name: 'character_vision')
  FilterProperty? get characterVision;
  @override
  @JsonKey(name: 'character_region')
  FilterProperty? get characterRegion;
  @override
  @JsonKey(name: 'character_rarity')
  FilterProperty? get characterRarity;
  @override
  @JsonKey(name: 'character_weapon')
  FilterProperty? get characterWeapon;

  /// Create a copy of FilterValues
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FilterValuesImplCopyWith<_$FilterValuesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FilterProperty _$FilterPropertyFromJson(Map<String, dynamic> json) {
  return _FilterProperty.fromJson(json);
}

/// @nodoc
mixin _$FilterProperty {
  List<String> get values => throw _privateConstructorUsedError;
  @JsonKey(name: 'value_types')
  List<FilterValueTypes> get valueTypes => throw _privateConstructorUsedError;
  FilterPropertyKey? get key => throw _privateConstructorUsedError;

  /// Serializes this FilterProperty to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FilterProperty
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FilterPropertyCopyWith<FilterProperty> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterPropertyCopyWith<$Res> {
  factory $FilterPropertyCopyWith(
          FilterProperty value, $Res Function(FilterProperty) then) =
      _$FilterPropertyCopyWithImpl<$Res, FilterProperty>;
  @useResult
  $Res call(
      {List<String> values,
      @JsonKey(name: 'value_types') List<FilterValueTypes> valueTypes,
      FilterPropertyKey? key});

  $FilterPropertyKeyCopyWith<$Res>? get key;
}

/// @nodoc
class _$FilterPropertyCopyWithImpl<$Res, $Val extends FilterProperty>
    implements $FilterPropertyCopyWith<$Res> {
  _$FilterPropertyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FilterProperty
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? values = null,
    Object? valueTypes = null,
    Object? key = freezed,
  }) {
    return _then(_value.copyWith(
      values: null == values
          ? _value.values
          : values // ignore: cast_nullable_to_non_nullable
              as List<String>,
      valueTypes: null == valueTypes
          ? _value.valueTypes
          : valueTypes // ignore: cast_nullable_to_non_nullable
              as List<FilterValueTypes>,
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as FilterPropertyKey?,
    ) as $Val);
  }

  /// Create a copy of FilterProperty
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FilterPropertyKeyCopyWith<$Res>? get key {
    if (_value.key == null) {
      return null;
    }

    return $FilterPropertyKeyCopyWith<$Res>(_value.key!, (value) {
      return _then(_value.copyWith(key: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FilterPropertyImplCopyWith<$Res>
    implements $FilterPropertyCopyWith<$Res> {
  factory _$$FilterPropertyImplCopyWith(_$FilterPropertyImpl value,
          $Res Function(_$FilterPropertyImpl) then) =
      __$$FilterPropertyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String> values,
      @JsonKey(name: 'value_types') List<FilterValueTypes> valueTypes,
      FilterPropertyKey? key});

  @override
  $FilterPropertyKeyCopyWith<$Res>? get key;
}

/// @nodoc
class __$$FilterPropertyImplCopyWithImpl<$Res>
    extends _$FilterPropertyCopyWithImpl<$Res, _$FilterPropertyImpl>
    implements _$$FilterPropertyImplCopyWith<$Res> {
  __$$FilterPropertyImplCopyWithImpl(
      _$FilterPropertyImpl _value, $Res Function(_$FilterPropertyImpl) _then)
      : super(_value, _then);

  /// Create a copy of FilterProperty
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? values = null,
    Object? valueTypes = null,
    Object? key = freezed,
  }) {
    return _then(_$FilterPropertyImpl(
      values: null == values
          ? _value._values
          : values // ignore: cast_nullable_to_non_nullable
              as List<String>,
      valueTypes: null == valueTypes
          ? _value._valueTypes
          : valueTypes // ignore: cast_nullable_to_non_nullable
              as List<FilterValueTypes>,
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as FilterPropertyKey?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FilterPropertyImpl implements _FilterProperty {
  const _$FilterPropertyImpl(
      {required final List<String> values,
      @JsonKey(name: 'value_types')
      required final List<FilterValueTypes> valueTypes,
      required this.key})
      : _values = values,
        _valueTypes = valueTypes;

  factory _$FilterPropertyImpl.fromJson(Map<String, dynamic> json) =>
      _$$FilterPropertyImplFromJson(json);

  final List<String> _values;
  @override
  List<String> get values {
    if (_values is EqualUnmodifiableListView) return _values;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_values);
  }

  final List<FilterValueTypes> _valueTypes;
  @override
  @JsonKey(name: 'value_types')
  List<FilterValueTypes> get valueTypes {
    if (_valueTypes is EqualUnmodifiableListView) return _valueTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_valueTypes);
  }

  @override
  final FilterPropertyKey? key;

  @override
  String toString() {
    return 'FilterProperty(values: $values, valueTypes: $valueTypes, key: $key)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterPropertyImpl &&
            const DeepCollectionEquality().equals(other._values, _values) &&
            const DeepCollectionEquality()
                .equals(other._valueTypes, _valueTypes) &&
            (identical(other.key, key) || other.key == key));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_values),
      const DeepCollectionEquality().hash(_valueTypes),
      key);

  /// Create a copy of FilterProperty
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterPropertyImplCopyWith<_$FilterPropertyImpl> get copyWith =>
      __$$FilterPropertyImplCopyWithImpl<_$FilterPropertyImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FilterPropertyImplToJson(
      this,
    );
  }
}

abstract class _FilterProperty implements FilterProperty {
  const factory _FilterProperty(
      {required final List<String> values,
      @JsonKey(name: 'value_types')
      required final List<FilterValueTypes> valueTypes,
      required final FilterPropertyKey? key}) = _$FilterPropertyImpl;

  factory _FilterProperty.fromJson(Map<String, dynamic> json) =
      _$FilterPropertyImpl.fromJson;

  @override
  List<String> get values;
  @override
  @JsonKey(name: 'value_types')
  List<FilterValueTypes> get valueTypes;
  @override
  FilterPropertyKey? get key;

  /// Create a copy of FilterProperty
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FilterPropertyImplCopyWith<_$FilterPropertyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FilterPropertyKey _$FilterPropertyKeyFromJson(Map<String, dynamic> json) {
  return _FilterPropertyKey.fromJson(json);
}

/// @nodoc
mixin _$FilterPropertyKey {
  String get key => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  @JsonKey(name: 'mi18n_key')
  String get mi18nKey => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_multi_select')
  bool get isMultiSelect => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_hidden')
  bool get isHidden => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this FilterPropertyKey to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FilterPropertyKey
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FilterPropertyKeyCopyWith<FilterPropertyKey> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterPropertyKeyCopyWith<$Res> {
  factory $FilterPropertyKeyCopyWith(
          FilterPropertyKey value, $Res Function(FilterPropertyKey) then) =
      _$FilterPropertyKeyCopyWithImpl<$Res, FilterPropertyKey>;
  @useResult
  $Res call(
      {String key,
      String text,
      @JsonKey(name: 'mi18n_key') String mi18nKey,
      @JsonKey(name: 'is_multi_select') bool isMultiSelect,
      String id,
      @JsonKey(name: 'is_hidden') bool isHidden,
      @JsonKey(name: 'updated_at') String updatedAt});
}

/// @nodoc
class _$FilterPropertyKeyCopyWithImpl<$Res, $Val extends FilterPropertyKey>
    implements $FilterPropertyKeyCopyWith<$Res> {
  _$FilterPropertyKeyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FilterPropertyKey
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? text = null,
    Object? mi18nKey = null,
    Object? isMultiSelect = null,
    Object? id = null,
    Object? isHidden = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      mi18nKey: null == mi18nKey
          ? _value.mi18nKey
          : mi18nKey // ignore: cast_nullable_to_non_nullable
              as String,
      isMultiSelect: null == isMultiSelect
          ? _value.isMultiSelect
          : isMultiSelect // ignore: cast_nullable_to_non_nullable
              as bool,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isHidden: null == isHidden
          ? _value.isHidden
          : isHidden // ignore: cast_nullable_to_non_nullable
              as bool,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FilterPropertyKeyImplCopyWith<$Res>
    implements $FilterPropertyKeyCopyWith<$Res> {
  factory _$$FilterPropertyKeyImplCopyWith(_$FilterPropertyKeyImpl value,
          $Res Function(_$FilterPropertyKeyImpl) then) =
      __$$FilterPropertyKeyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String key,
      String text,
      @JsonKey(name: 'mi18n_key') String mi18nKey,
      @JsonKey(name: 'is_multi_select') bool isMultiSelect,
      String id,
      @JsonKey(name: 'is_hidden') bool isHidden,
      @JsonKey(name: 'updated_at') String updatedAt});
}

/// @nodoc
class __$$FilterPropertyKeyImplCopyWithImpl<$Res>
    extends _$FilterPropertyKeyCopyWithImpl<$Res, _$FilterPropertyKeyImpl>
    implements _$$FilterPropertyKeyImplCopyWith<$Res> {
  __$$FilterPropertyKeyImplCopyWithImpl(_$FilterPropertyKeyImpl _value,
      $Res Function(_$FilterPropertyKeyImpl) _then)
      : super(_value, _then);

  /// Create a copy of FilterPropertyKey
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? text = null,
    Object? mi18nKey = null,
    Object? isMultiSelect = null,
    Object? id = null,
    Object? isHidden = null,
    Object? updatedAt = null,
  }) {
    return _then(_$FilterPropertyKeyImpl(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      mi18nKey: null == mi18nKey
          ? _value.mi18nKey
          : mi18nKey // ignore: cast_nullable_to_non_nullable
              as String,
      isMultiSelect: null == isMultiSelect
          ? _value.isMultiSelect
          : isMultiSelect // ignore: cast_nullable_to_non_nullable
              as bool,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isHidden: null == isHidden
          ? _value.isHidden
          : isHidden // ignore: cast_nullable_to_non_nullable
              as bool,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FilterPropertyKeyImpl implements _FilterPropertyKey {
  const _$FilterPropertyKeyImpl(
      {required this.key,
      required this.text,
      @JsonKey(name: 'mi18n_key') required this.mi18nKey,
      @JsonKey(name: 'is_multi_select') required this.isMultiSelect,
      required this.id,
      @JsonKey(name: 'is_hidden') required this.isHidden,
      @JsonKey(name: 'updated_at') required this.updatedAt});

  factory _$FilterPropertyKeyImpl.fromJson(Map<String, dynamic> json) =>
      _$$FilterPropertyKeyImplFromJson(json);

  @override
  final String key;
  @override
  final String text;
  @override
  @JsonKey(name: 'mi18n_key')
  final String mi18nKey;
  @override
  @JsonKey(name: 'is_multi_select')
  final bool isMultiSelect;
  @override
  final String id;
  @override
  @JsonKey(name: 'is_hidden')
  final bool isHidden;
  @override
  @JsonKey(name: 'updated_at')
  final String updatedAt;

  @override
  String toString() {
    return 'FilterPropertyKey(key: $key, text: $text, mi18nKey: $mi18nKey, isMultiSelect: $isMultiSelect, id: $id, isHidden: $isHidden, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterPropertyKeyImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.mi18nKey, mi18nKey) ||
                other.mi18nKey == mi18nKey) &&
            (identical(other.isMultiSelect, isMultiSelect) ||
                other.isMultiSelect == isMultiSelect) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isHidden, isHidden) ||
                other.isHidden == isHidden) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, key, text, mi18nKey, isMultiSelect, id, isHidden, updatedAt);

  /// Create a copy of FilterPropertyKey
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterPropertyKeyImplCopyWith<_$FilterPropertyKeyImpl> get copyWith =>
      __$$FilterPropertyKeyImplCopyWithImpl<_$FilterPropertyKeyImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FilterPropertyKeyImplToJson(
      this,
    );
  }
}

abstract class _FilterPropertyKey implements FilterPropertyKey {
  const factory _FilterPropertyKey(
          {required final String key,
          required final String text,
          @JsonKey(name: 'mi18n_key') required final String mi18nKey,
          @JsonKey(name: 'is_multi_select') required final bool isMultiSelect,
          required final String id,
          @JsonKey(name: 'is_hidden') required final bool isHidden,
          @JsonKey(name: 'updated_at') required final String updatedAt}) =
      _$FilterPropertyKeyImpl;

  factory _FilterPropertyKey.fromJson(Map<String, dynamic> json) =
      _$FilterPropertyKeyImpl.fromJson;

  @override
  String get key;
  @override
  String get text;
  @override
  @JsonKey(name: 'mi18n_key')
  String get mi18nKey;
  @override
  @JsonKey(name: 'is_multi_select')
  bool get isMultiSelect;
  @override
  String get id;
  @override
  @JsonKey(name: 'is_hidden')
  bool get isHidden;
  @override
  @JsonKey(name: 'updated_at')
  String get updatedAt;

  /// Create a copy of FilterPropertyKey
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FilterPropertyKeyImplCopyWith<_$FilterPropertyKeyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FilterValueTypes _$FilterValueTypesFromJson(Map<String, dynamic> json) {
  return _FilterValueTypes.fromJson(json);
}

/// @nodoc
mixin _$FilterValueTypes {
  String get id => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;
  @JsonKey(name: 'mi18n_key')
  String get mi18nKey => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;
  @JsonKey(name: 'enum_string')
  String get enumString => throw _privateConstructorUsedError;

  /// Serializes this FilterValueTypes to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FilterValueTypes
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FilterValueTypesCopyWith<FilterValueTypes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterValueTypesCopyWith<$Res> {
  factory $FilterValueTypesCopyWith(
          FilterValueTypes value, $Res Function(FilterValueTypes) then) =
      _$FilterValueTypesCopyWithImpl<$Res, FilterValueTypes>;
  @useResult
  $Res call(
      {String id,
      String value,
      @JsonKey(name: 'mi18n_key') String mi18nKey,
      String icon,
      @JsonKey(name: 'enum_string') String enumString});
}

/// @nodoc
class _$FilterValueTypesCopyWithImpl<$Res, $Val extends FilterValueTypes>
    implements $FilterValueTypesCopyWith<$Res> {
  _$FilterValueTypesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FilterValueTypes
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? value = null,
    Object? mi18nKey = null,
    Object? icon = null,
    Object? enumString = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      mi18nKey: null == mi18nKey
          ? _value.mi18nKey
          : mi18nKey // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      enumString: null == enumString
          ? _value.enumString
          : enumString // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FilterValueTypesImplCopyWith<$Res>
    implements $FilterValueTypesCopyWith<$Res> {
  factory _$$FilterValueTypesImplCopyWith(_$FilterValueTypesImpl value,
          $Res Function(_$FilterValueTypesImpl) then) =
      __$$FilterValueTypesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String value,
      @JsonKey(name: 'mi18n_key') String mi18nKey,
      String icon,
      @JsonKey(name: 'enum_string') String enumString});
}

/// @nodoc
class __$$FilterValueTypesImplCopyWithImpl<$Res>
    extends _$FilterValueTypesCopyWithImpl<$Res, _$FilterValueTypesImpl>
    implements _$$FilterValueTypesImplCopyWith<$Res> {
  __$$FilterValueTypesImplCopyWithImpl(_$FilterValueTypesImpl _value,
      $Res Function(_$FilterValueTypesImpl) _then)
      : super(_value, _then);

  /// Create a copy of FilterValueTypes
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? value = null,
    Object? mi18nKey = null,
    Object? icon = null,
    Object? enumString = null,
  }) {
    return _then(_$FilterValueTypesImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      mi18nKey: null == mi18nKey
          ? _value.mi18nKey
          : mi18nKey // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      enumString: null == enumString
          ? _value.enumString
          : enumString // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FilterValueTypesImpl implements _FilterValueTypes {
  const _$FilterValueTypesImpl(
      {required this.id,
      required this.value,
      @JsonKey(name: 'mi18n_key') required this.mi18nKey,
      required this.icon,
      @JsonKey(name: 'enum_string') required this.enumString});

  factory _$FilterValueTypesImpl.fromJson(Map<String, dynamic> json) =>
      _$$FilterValueTypesImplFromJson(json);

  @override
  final String id;
  @override
  final String value;
  @override
  @JsonKey(name: 'mi18n_key')
  final String mi18nKey;
  @override
  final String icon;
  @override
  @JsonKey(name: 'enum_string')
  final String enumString;

  @override
  String toString() {
    return 'FilterValueTypes(id: $id, value: $value, mi18nKey: $mi18nKey, icon: $icon, enumString: $enumString)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterValueTypesImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.mi18nKey, mi18nKey) ||
                other.mi18nKey == mi18nKey) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.enumString, enumString) ||
                other.enumString == enumString));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, value, mi18nKey, icon, enumString);

  /// Create a copy of FilterValueTypes
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterValueTypesImplCopyWith<_$FilterValueTypesImpl> get copyWith =>
      __$$FilterValueTypesImplCopyWithImpl<_$FilterValueTypesImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FilterValueTypesImplToJson(
      this,
    );
  }
}

abstract class _FilterValueTypes implements FilterValueTypes {
  const factory _FilterValueTypes(
          {required final String id,
          required final String value,
          @JsonKey(name: 'mi18n_key') required final String mi18nKey,
          required final String icon,
          @JsonKey(name: 'enum_string') required final String enumString}) =
      _$FilterValueTypesImpl;

  factory _FilterValueTypes.fromJson(Map<String, dynamic> json) =
      _$FilterValueTypesImpl.fromJson;

  @override
  String get id;
  @override
  String get value;
  @override
  @JsonKey(name: 'mi18n_key')
  String get mi18nKey;
  @override
  String get icon;
  @override
  @JsonKey(name: 'enum_string')
  String get enumString;

  /// Create a copy of FilterValueTypes
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FilterValueTypesImplCopyWith<_$FilterValueTypesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

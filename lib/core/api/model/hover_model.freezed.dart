// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hover_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Hover _$HoverFromJson(Map<String, dynamic> json) {
  return _Hover.fromJson(json);
}

/// @nodoc
mixin _$Hover {
  @JsonKey(name: 'ep_summary')
  EPSummary get epSummary => throw _privateConstructorUsedError;
  @JsonKey(name: 'extends')
  List<ExtendData> get extendsData => throw _privateConstructorUsedError;

  /// Serializes this Hover to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Hover
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HoverCopyWith<Hover> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HoverCopyWith<$Res> {
  factory $HoverCopyWith(Hover value, $Res Function(Hover) then) =
      _$HoverCopyWithImpl<$Res, Hover>;
  @useResult
  $Res call(
      {@JsonKey(name: 'ep_summary') EPSummary epSummary,
      @JsonKey(name: 'extends') List<ExtendData> extendsData});

  $EPSummaryCopyWith<$Res> get epSummary;
}

/// @nodoc
class _$HoverCopyWithImpl<$Res, $Val extends Hover>
    implements $HoverCopyWith<$Res> {
  _$HoverCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Hover
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? epSummary = null,
    Object? extendsData = null,
  }) {
    return _then(_value.copyWith(
      epSummary: null == epSummary
          ? _value.epSummary
          : epSummary // ignore: cast_nullable_to_non_nullable
              as EPSummary,
      extendsData: null == extendsData
          ? _value.extendsData
          : extendsData // ignore: cast_nullable_to_non_nullable
              as List<ExtendData>,
    ) as $Val);
  }

  /// Create a copy of Hover
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EPSummaryCopyWith<$Res> get epSummary {
    return $EPSummaryCopyWith<$Res>(_value.epSummary, (value) {
      return _then(_value.copyWith(epSummary: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HoverImplCopyWith<$Res> implements $HoverCopyWith<$Res> {
  factory _$$HoverImplCopyWith(
          _$HoverImpl value, $Res Function(_$HoverImpl) then) =
      __$$HoverImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'ep_summary') EPSummary epSummary,
      @JsonKey(name: 'extends') List<ExtendData> extendsData});

  @override
  $EPSummaryCopyWith<$Res> get epSummary;
}

/// @nodoc
class __$$HoverImplCopyWithImpl<$Res>
    extends _$HoverCopyWithImpl<$Res, _$HoverImpl>
    implements _$$HoverImplCopyWith<$Res> {
  __$$HoverImplCopyWithImpl(
      _$HoverImpl _value, $Res Function(_$HoverImpl) _then)
      : super(_value, _then);

  /// Create a copy of Hover
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? epSummary = null,
    Object? extendsData = null,
  }) {
    return _then(_$HoverImpl(
      epSummary: null == epSummary
          ? _value.epSummary
          : epSummary // ignore: cast_nullable_to_non_nullable
              as EPSummary,
      extendsData: null == extendsData
          ? _value._extendsData
          : extendsData // ignore: cast_nullable_to_non_nullable
              as List<ExtendData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HoverImpl implements _Hover {
  const _$HoverImpl(
      {@JsonKey(name: 'ep_summary') required this.epSummary,
      @JsonKey(name: 'extends') required final List<ExtendData> extendsData})
      : _extendsData = extendsData;

  factory _$HoverImpl.fromJson(Map<String, dynamic> json) =>
      _$$HoverImplFromJson(json);

  @override
  @JsonKey(name: 'ep_summary')
  final EPSummary epSummary;
  final List<ExtendData> _extendsData;
  @override
  @JsonKey(name: 'extends')
  List<ExtendData> get extendsData {
    if (_extendsData is EqualUnmodifiableListView) return _extendsData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_extendsData);
  }

  @override
  String toString() {
    return 'Hover(epSummary: $epSummary, extendsData: $extendsData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HoverImpl &&
            (identical(other.epSummary, epSummary) ||
                other.epSummary == epSummary) &&
            const DeepCollectionEquality()
                .equals(other._extendsData, _extendsData));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, epSummary,
      const DeepCollectionEquality().hash(_extendsData));

  /// Create a copy of Hover
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HoverImplCopyWith<_$HoverImpl> get copyWith =>
      __$$HoverImplCopyWithImpl<_$HoverImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HoverImplToJson(
      this,
    );
  }
}

abstract class _Hover implements Hover {
  const factory _Hover(
      {@JsonKey(name: 'ep_summary') required final EPSummary epSummary,
      @JsonKey(name: 'extends')
      required final List<ExtendData> extendsData}) = _$HoverImpl;

  factory _Hover.fromJson(Map<String, dynamic> json) = _$HoverImpl.fromJson;

  @override
  @JsonKey(name: 'ep_summary')
  EPSummary get epSummary;
  @override
  @JsonKey(name: 'extends')
  List<ExtendData> get extendsData;

  /// Create a copy of Hover
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HoverImplCopyWith<_$HoverImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EPSummary _$EPSummaryFromJson(Map<String, dynamic> json) {
  return _EPSummary.fromJson(json);
}

/// @nodoc
mixin _$EPSummary {
  @JsonKey(name: 'entry_page_id')
  String get entryPageId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'icon_url')
  String get iconUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'filter_values')
  FilterValues get filterValues => throw _privateConstructorUsedError;
  String get desc => throw _privateConstructorUsedError;

  /// Serializes this EPSummary to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EPSummary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EPSummaryCopyWith<EPSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EPSummaryCopyWith<$Res> {
  factory $EPSummaryCopyWith(EPSummary value, $Res Function(EPSummary) then) =
      _$EPSummaryCopyWithImpl<$Res, EPSummary>;
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
class _$EPSummaryCopyWithImpl<$Res, $Val extends EPSummary>
    implements $EPSummaryCopyWith<$Res> {
  _$EPSummaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EPSummary
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

  /// Create a copy of EPSummary
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
abstract class _$$EPSummaryImplCopyWith<$Res>
    implements $EPSummaryCopyWith<$Res> {
  factory _$$EPSummaryImplCopyWith(
          _$EPSummaryImpl value, $Res Function(_$EPSummaryImpl) then) =
      __$$EPSummaryImplCopyWithImpl<$Res>;
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
class __$$EPSummaryImplCopyWithImpl<$Res>
    extends _$EPSummaryCopyWithImpl<$Res, _$EPSummaryImpl>
    implements _$$EPSummaryImplCopyWith<$Res> {
  __$$EPSummaryImplCopyWithImpl(
      _$EPSummaryImpl _value, $Res Function(_$EPSummaryImpl) _then)
      : super(_value, _then);

  /// Create a copy of EPSummary
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
    return _then(_$EPSummaryImpl(
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
class _$EPSummaryImpl implements _EPSummary {
  const _$EPSummaryImpl(
      {@JsonKey(name: 'entry_page_id') required this.entryPageId,
      required this.name,
      @JsonKey(name: 'icon_url') required this.iconUrl,
      @JsonKey(name: 'filter_values') required this.filterValues,
      required this.desc});

  factory _$EPSummaryImpl.fromJson(Map<String, dynamic> json) =>
      _$$EPSummaryImplFromJson(json);

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
    return 'EPSummary(entryPageId: $entryPageId, name: $name, iconUrl: $iconUrl, filterValues: $filterValues, desc: $desc)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EPSummaryImpl &&
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

  /// Create a copy of EPSummary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EPSummaryImplCopyWith<_$EPSummaryImpl> get copyWith =>
      __$$EPSummaryImplCopyWithImpl<_$EPSummaryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EPSummaryImplToJson(
      this,
    );
  }
}

abstract class _EPSummary implements EPSummary {
  const factory _EPSummary(
      {@JsonKey(name: 'entry_page_id') required final String entryPageId,
      required final String name,
      @JsonKey(name: 'icon_url') required final String iconUrl,
      @JsonKey(name: 'filter_values') required final FilterValues filterValues,
      required final String desc}) = _$EPSummaryImpl;

  factory _EPSummary.fromJson(Map<String, dynamic> json) =
      _$EPSummaryImpl.fromJson;

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

  /// Create a copy of EPSummary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EPSummaryImplCopyWith<_$EPSummaryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ExtendData _$ExtendDataFromJson(Map<String, dynamic> json) {
  return _ExtendData.fromJson(json);
}

/// @nodoc
mixin _$ExtendData {
  @JsonKey(name: 'ep_abstracts')
  List<EPAbstract> get epAbstracts => throw _privateConstructorUsedError;
  ExtendDataText get text => throw _privateConstructorUsedError;
  @JsonKey(name: 'source_desc')
  String get sourceDesc => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  /// Serializes this ExtendData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ExtendData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExtendDataCopyWith<ExtendData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExtendDataCopyWith<$Res> {
  factory $ExtendDataCopyWith(
          ExtendData value, $Res Function(ExtendData) then) =
      _$ExtendDataCopyWithImpl<$Res, ExtendData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'ep_abstracts') List<EPAbstract> epAbstracts,
      ExtendDataText text,
      @JsonKey(name: 'source_desc') String sourceDesc,
      String title});

  $ExtendDataTextCopyWith<$Res> get text;
}

/// @nodoc
class _$ExtendDataCopyWithImpl<$Res, $Val extends ExtendData>
    implements $ExtendDataCopyWith<$Res> {
  _$ExtendDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExtendData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? epAbstracts = null,
    Object? text = null,
    Object? sourceDesc = null,
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      epAbstracts: null == epAbstracts
          ? _value.epAbstracts
          : epAbstracts // ignore: cast_nullable_to_non_nullable
              as List<EPAbstract>,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as ExtendDataText,
      sourceDesc: null == sourceDesc
          ? _value.sourceDesc
          : sourceDesc // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of ExtendData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ExtendDataTextCopyWith<$Res> get text {
    return $ExtendDataTextCopyWith<$Res>(_value.text, (value) {
      return _then(_value.copyWith(text: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ExtendDataImplCopyWith<$Res>
    implements $ExtendDataCopyWith<$Res> {
  factory _$$ExtendDataImplCopyWith(
          _$ExtendDataImpl value, $Res Function(_$ExtendDataImpl) then) =
      __$$ExtendDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'ep_abstracts') List<EPAbstract> epAbstracts,
      ExtendDataText text,
      @JsonKey(name: 'source_desc') String sourceDesc,
      String title});

  @override
  $ExtendDataTextCopyWith<$Res> get text;
}

/// @nodoc
class __$$ExtendDataImplCopyWithImpl<$Res>
    extends _$ExtendDataCopyWithImpl<$Res, _$ExtendDataImpl>
    implements _$$ExtendDataImplCopyWith<$Res> {
  __$$ExtendDataImplCopyWithImpl(
      _$ExtendDataImpl _value, $Res Function(_$ExtendDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExtendData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? epAbstracts = null,
    Object? text = null,
    Object? sourceDesc = null,
    Object? title = null,
  }) {
    return _then(_$ExtendDataImpl(
      epAbstracts: null == epAbstracts
          ? _value._epAbstracts
          : epAbstracts // ignore: cast_nullable_to_non_nullable
              as List<EPAbstract>,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as ExtendDataText,
      sourceDesc: null == sourceDesc
          ? _value.sourceDesc
          : sourceDesc // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExtendDataImpl implements _ExtendData {
  const _$ExtendDataImpl(
      {@JsonKey(name: 'ep_abstracts')
      required final List<EPAbstract> epAbstracts,
      required this.text,
      @JsonKey(name: 'source_desc') required this.sourceDesc,
      required this.title})
      : _epAbstracts = epAbstracts;

  factory _$ExtendDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExtendDataImplFromJson(json);

  final List<EPAbstract> _epAbstracts;
  @override
  @JsonKey(name: 'ep_abstracts')
  List<EPAbstract> get epAbstracts {
    if (_epAbstracts is EqualUnmodifiableListView) return _epAbstracts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_epAbstracts);
  }

  @override
  final ExtendDataText text;
  @override
  @JsonKey(name: 'source_desc')
  final String sourceDesc;
  @override
  final String title;

  @override
  String toString() {
    return 'ExtendData(epAbstracts: $epAbstracts, text: $text, sourceDesc: $sourceDesc, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExtendDataImpl &&
            const DeepCollectionEquality()
                .equals(other._epAbstracts, _epAbstracts) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.sourceDesc, sourceDesc) ||
                other.sourceDesc == sourceDesc) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_epAbstracts),
      text,
      sourceDesc,
      title);

  /// Create a copy of ExtendData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExtendDataImplCopyWith<_$ExtendDataImpl> get copyWith =>
      __$$ExtendDataImplCopyWithImpl<_$ExtendDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExtendDataImplToJson(
      this,
    );
  }
}

abstract class _ExtendData implements ExtendData {
  const factory _ExtendData(
      {@JsonKey(name: 'ep_abstracts')
      required final List<EPAbstract> epAbstracts,
      required final ExtendDataText text,
      @JsonKey(name: 'source_desc') required final String sourceDesc,
      required final String title}) = _$ExtendDataImpl;

  factory _ExtendData.fromJson(Map<String, dynamic> json) =
      _$ExtendDataImpl.fromJson;

  @override
  @JsonKey(name: 'ep_abstracts')
  List<EPAbstract> get epAbstracts;
  @override
  ExtendDataText get text;
  @override
  @JsonKey(name: 'source_desc')
  String get sourceDesc;
  @override
  String get title;

  /// Create a copy of ExtendData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExtendDataImplCopyWith<_$ExtendDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EPAbstract _$EPAbstractFromJson(Map<String, dynamic> json) {
  return _EPAbstract.fromJson(json);
}

/// @nodoc
mixin _$EPAbstract {
  @JsonKey(name: 'entry_page_id')
  String get entryPageId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'icon_url')
  String get iconUrl => throw _privateConstructorUsedError;

  /// Serializes this EPAbstract to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EPAbstract
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EPAbstractCopyWith<EPAbstract> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EPAbstractCopyWith<$Res> {
  factory $EPAbstractCopyWith(
          EPAbstract value, $Res Function(EPAbstract) then) =
      _$EPAbstractCopyWithImpl<$Res, EPAbstract>;
  @useResult
  $Res call(
      {@JsonKey(name: 'entry_page_id') String entryPageId,
      String name,
      @JsonKey(name: 'icon_url') String iconUrl});
}

/// @nodoc
class _$EPAbstractCopyWithImpl<$Res, $Val extends EPAbstract>
    implements $EPAbstractCopyWith<$Res> {
  _$EPAbstractCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EPAbstract
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entryPageId = null,
    Object? name = null,
    Object? iconUrl = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EPAbstractImplCopyWith<$Res>
    implements $EPAbstractCopyWith<$Res> {
  factory _$$EPAbstractImplCopyWith(
          _$EPAbstractImpl value, $Res Function(_$EPAbstractImpl) then) =
      __$$EPAbstractImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'entry_page_id') String entryPageId,
      String name,
      @JsonKey(name: 'icon_url') String iconUrl});
}

/// @nodoc
class __$$EPAbstractImplCopyWithImpl<$Res>
    extends _$EPAbstractCopyWithImpl<$Res, _$EPAbstractImpl>
    implements _$$EPAbstractImplCopyWith<$Res> {
  __$$EPAbstractImplCopyWithImpl(
      _$EPAbstractImpl _value, $Res Function(_$EPAbstractImpl) _then)
      : super(_value, _then);

  /// Create a copy of EPAbstract
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entryPageId = null,
    Object? name = null,
    Object? iconUrl = null,
  }) {
    return _then(_$EPAbstractImpl(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EPAbstractImpl implements _EPAbstract {
  const _$EPAbstractImpl(
      {@JsonKey(name: 'entry_page_id') required this.entryPageId,
      required this.name,
      @JsonKey(name: 'icon_url') required this.iconUrl});

  factory _$EPAbstractImpl.fromJson(Map<String, dynamic> json) =>
      _$$EPAbstractImplFromJson(json);

  @override
  @JsonKey(name: 'entry_page_id')
  final String entryPageId;
  @override
  final String name;
  @override
  @JsonKey(name: 'icon_url')
  final String iconUrl;

  @override
  String toString() {
    return 'EPAbstract(entryPageId: $entryPageId, name: $name, iconUrl: $iconUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EPAbstractImpl &&
            (identical(other.entryPageId, entryPageId) ||
                other.entryPageId == entryPageId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.iconUrl, iconUrl) || other.iconUrl == iconUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, entryPageId, name, iconUrl);

  /// Create a copy of EPAbstract
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EPAbstractImplCopyWith<_$EPAbstractImpl> get copyWith =>
      __$$EPAbstractImplCopyWithImpl<_$EPAbstractImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EPAbstractImplToJson(
      this,
    );
  }
}

abstract class _EPAbstract implements EPAbstract {
  const factory _EPAbstract(
          {@JsonKey(name: 'entry_page_id') required final String entryPageId,
          required final String name,
          @JsonKey(name: 'icon_url') required final String iconUrl}) =
      _$EPAbstractImpl;

  factory _EPAbstract.fromJson(Map<String, dynamic> json) =
      _$EPAbstractImpl.fromJson;

  @override
  @JsonKey(name: 'entry_page_id')
  String get entryPageId;
  @override
  String get name;
  @override
  @JsonKey(name: 'icon_url')
  String get iconUrl;

  /// Create a copy of EPAbstract
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EPAbstractImplCopyWith<_$EPAbstractImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ExtendDataText _$ExtendDataTextFromJson(Map<String, dynamic> json) {
  return _ExtendDataText.fromJson(json);
}

/// @nodoc
mixin _$ExtendDataText {
  @JsonKey(name: 'ascension_weapon_attr_header')
  String? get ascensionWeaponAttrHeader => throw _privateConstructorUsedError;
  @JsonKey(name: 'ascension_weapon_attr_data')
  String? get ascensionWeaponAttrData => throw _privateConstructorUsedError;

  /// Serializes this ExtendDataText to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ExtendDataText
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExtendDataTextCopyWith<ExtendDataText> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExtendDataTextCopyWith<$Res> {
  factory $ExtendDataTextCopyWith(
          ExtendDataText value, $Res Function(ExtendDataText) then) =
      _$ExtendDataTextCopyWithImpl<$Res, ExtendDataText>;
  @useResult
  $Res call(
      {@JsonKey(name: 'ascension_weapon_attr_header')
      String? ascensionWeaponAttrHeader,
      @JsonKey(name: 'ascension_weapon_attr_data')
      String? ascensionWeaponAttrData});
}

/// @nodoc
class _$ExtendDataTextCopyWithImpl<$Res, $Val extends ExtendDataText>
    implements $ExtendDataTextCopyWith<$Res> {
  _$ExtendDataTextCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExtendDataText
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ascensionWeaponAttrHeader = freezed,
    Object? ascensionWeaponAttrData = freezed,
  }) {
    return _then(_value.copyWith(
      ascensionWeaponAttrHeader: freezed == ascensionWeaponAttrHeader
          ? _value.ascensionWeaponAttrHeader
          : ascensionWeaponAttrHeader // ignore: cast_nullable_to_non_nullable
              as String?,
      ascensionWeaponAttrData: freezed == ascensionWeaponAttrData
          ? _value.ascensionWeaponAttrData
          : ascensionWeaponAttrData // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExtendDataTextImplCopyWith<$Res>
    implements $ExtendDataTextCopyWith<$Res> {
  factory _$$ExtendDataTextImplCopyWith(_$ExtendDataTextImpl value,
          $Res Function(_$ExtendDataTextImpl) then) =
      __$$ExtendDataTextImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'ascension_weapon_attr_header')
      String? ascensionWeaponAttrHeader,
      @JsonKey(name: 'ascension_weapon_attr_data')
      String? ascensionWeaponAttrData});
}

/// @nodoc
class __$$ExtendDataTextImplCopyWithImpl<$Res>
    extends _$ExtendDataTextCopyWithImpl<$Res, _$ExtendDataTextImpl>
    implements _$$ExtendDataTextImplCopyWith<$Res> {
  __$$ExtendDataTextImplCopyWithImpl(
      _$ExtendDataTextImpl _value, $Res Function(_$ExtendDataTextImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExtendDataText
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ascensionWeaponAttrHeader = freezed,
    Object? ascensionWeaponAttrData = freezed,
  }) {
    return _then(_$ExtendDataTextImpl(
      ascensionWeaponAttrHeader: freezed == ascensionWeaponAttrHeader
          ? _value.ascensionWeaponAttrHeader
          : ascensionWeaponAttrHeader // ignore: cast_nullable_to_non_nullable
              as String?,
      ascensionWeaponAttrData: freezed == ascensionWeaponAttrData
          ? _value.ascensionWeaponAttrData
          : ascensionWeaponAttrData // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExtendDataTextImpl implements _ExtendDataText {
  const _$ExtendDataTextImpl(
      {@JsonKey(name: 'ascension_weapon_attr_header')
      required this.ascensionWeaponAttrHeader,
      @JsonKey(name: 'ascension_weapon_attr_data')
      required this.ascensionWeaponAttrData});

  factory _$ExtendDataTextImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExtendDataTextImplFromJson(json);

  @override
  @JsonKey(name: 'ascension_weapon_attr_header')
  final String? ascensionWeaponAttrHeader;
  @override
  @JsonKey(name: 'ascension_weapon_attr_data')
  final String? ascensionWeaponAttrData;

  @override
  String toString() {
    return 'ExtendDataText(ascensionWeaponAttrHeader: $ascensionWeaponAttrHeader, ascensionWeaponAttrData: $ascensionWeaponAttrData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExtendDataTextImpl &&
            (identical(other.ascensionWeaponAttrHeader,
                    ascensionWeaponAttrHeader) ||
                other.ascensionWeaponAttrHeader == ascensionWeaponAttrHeader) &&
            (identical(
                    other.ascensionWeaponAttrData, ascensionWeaponAttrData) ||
                other.ascensionWeaponAttrData == ascensionWeaponAttrData));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, ascensionWeaponAttrHeader, ascensionWeaponAttrData);

  /// Create a copy of ExtendDataText
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExtendDataTextImplCopyWith<_$ExtendDataTextImpl> get copyWith =>
      __$$ExtendDataTextImplCopyWithImpl<_$ExtendDataTextImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExtendDataTextImplToJson(
      this,
    );
  }
}

abstract class _ExtendDataText implements ExtendDataText {
  const factory _ExtendDataText(
      {@JsonKey(name: 'ascension_weapon_attr_header')
      required final String? ascensionWeaponAttrHeader,
      @JsonKey(name: 'ascension_weapon_attr_data')
      required final String? ascensionWeaponAttrData}) = _$ExtendDataTextImpl;

  factory _ExtendDataText.fromJson(Map<String, dynamic> json) =
      _$ExtendDataTextImpl.fromJson;

  @override
  @JsonKey(name: 'ascension_weapon_attr_header')
  String? get ascensionWeaponAttrHeader;
  @override
  @JsonKey(name: 'ascension_weapon_attr_data')
  String? get ascensionWeaponAttrData;

  /// Create a copy of ExtendDataText
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExtendDataTextImplCopyWith<_$ExtendDataTextImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

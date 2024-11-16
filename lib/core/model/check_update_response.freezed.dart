// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check_update_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdateCheckResponse _$UpdateCheckResponseFromJson(Map<String, dynamic> json) {
  return _UpdateCheckResponse.fromJson(json);
}

/// @nodoc
mixin _$UpdateCheckResponse {
  String get version => throw _privateConstructorUsedError;
  int get buildNumber => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  /// Serializes this UpdateCheckResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateCheckResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateCheckResponseCopyWith<UpdateCheckResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateCheckResponseCopyWith<$Res> {
  factory $UpdateCheckResponseCopyWith(
          UpdateCheckResponse value, $Res Function(UpdateCheckResponse) then) =
      _$UpdateCheckResponseCopyWithImpl<$Res, UpdateCheckResponse>;
  @useResult
  $Res call({String version, int buildNumber, String url});
}

/// @nodoc
class _$UpdateCheckResponseCopyWithImpl<$Res, $Val extends UpdateCheckResponse>
    implements $UpdateCheckResponseCopyWith<$Res> {
  _$UpdateCheckResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateCheckResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? version = null,
    Object? buildNumber = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      buildNumber: null == buildNumber
          ? _value.buildNumber
          : buildNumber // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateCheckResponseImplCopyWith<$Res>
    implements $UpdateCheckResponseCopyWith<$Res> {
  factory _$$UpdateCheckResponseImplCopyWith(_$UpdateCheckResponseImpl value,
          $Res Function(_$UpdateCheckResponseImpl) then) =
      __$$UpdateCheckResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String version, int buildNumber, String url});
}

/// @nodoc
class __$$UpdateCheckResponseImplCopyWithImpl<$Res>
    extends _$UpdateCheckResponseCopyWithImpl<$Res, _$UpdateCheckResponseImpl>
    implements _$$UpdateCheckResponseImplCopyWith<$Res> {
  __$$UpdateCheckResponseImplCopyWithImpl(_$UpdateCheckResponseImpl _value,
      $Res Function(_$UpdateCheckResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateCheckResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? version = null,
    Object? buildNumber = null,
    Object? url = null,
  }) {
    return _then(_$UpdateCheckResponseImpl(
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      buildNumber: null == buildNumber
          ? _value.buildNumber
          : buildNumber // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateCheckResponseImpl implements _UpdateCheckResponse {
  const _$UpdateCheckResponseImpl(
      {required this.version, required this.buildNumber, required this.url});

  factory _$UpdateCheckResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateCheckResponseImplFromJson(json);

  @override
  final String version;
  @override
  final int buildNumber;
  @override
  final String url;

  @override
  String toString() {
    return 'UpdateCheckResponse(version: $version, buildNumber: $buildNumber, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateCheckResponseImpl &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.buildNumber, buildNumber) ||
                other.buildNumber == buildNumber) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, version, buildNumber, url);

  /// Create a copy of UpdateCheckResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateCheckResponseImplCopyWith<_$UpdateCheckResponseImpl> get copyWith =>
      __$$UpdateCheckResponseImplCopyWithImpl<_$UpdateCheckResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateCheckResponseImplToJson(
      this,
    );
  }
}

abstract class _UpdateCheckResponse implements UpdateCheckResponse {
  const factory _UpdateCheckResponse(
      {required final String version,
      required final int buildNumber,
      required final String url}) = _$UpdateCheckResponseImpl;

  factory _UpdateCheckResponse.fromJson(Map<String, dynamic> json) =
      _$UpdateCheckResponseImpl.fromJson;

  @override
  String get version;
  @override
  int get buildNumber;
  @override
  String get url;

  /// Create a copy of UpdateCheckResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateCheckResponseImplCopyWith<_$UpdateCheckResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

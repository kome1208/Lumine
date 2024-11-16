// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_update_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateCheckResponseImpl _$$UpdateCheckResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateCheckResponseImpl(
      version: json['version'] as String,
      buildNumber: (json['buildNumber'] as num).toInt(),
      url: json['url'] as String,
    );

Map<String, dynamic> _$$UpdateCheckResponseImplToJson(
        _$UpdateCheckResponseImpl instance) =>
    <String, dynamic>{
      'version': instance.version,
      'buildNumber': instance.buildNumber,
      'url': instance.url,
    };

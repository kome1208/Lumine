// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_record_card_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GameRecordCard _$GameRecordCardFromJson(Map<String, dynamic> json) =>
    GameRecordCard(
      list: (json['list'] as List<dynamic>)
          .map((e) => GameRecordCardData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GameRecordCardToJson(GameRecordCard instance) =>
    <String, dynamic>{
      'list': instance.list,
    };

GameRecordCardData _$GameRecordCardDataFromJson(Map<String, dynamic> json) =>
    GameRecordCardData(
      hasRole: json['has_role'] as bool,
      gameId: (json['game_id'] as num).toInt(),
      gameRoleId: json['game_role_id'] as String,
      nickname: json['nickname'] as String,
      region: json['region'] as String,
      level: (json['level'] as num).toInt(),
      backgroundImage: json['background_image'] as String,
      isPublic: json['is_public'] as bool,
      data: (json['data'] as List<dynamic>)
          .map((e) =>
              GameRecordCardDisplayData.fromJson(e as Map<String, dynamic>))
          .toList(),
      regionName: json['region_name'] as String,
      url: json['url'] as String,
      dataSwitches: (json['data_switches'] as List<dynamic>)
          .map((e) =>
              GameRecordCardDataSwitch.fromJson(e as Map<String, dynamic>))
          .toList(),
      backgroundColor: json['background_color'] as String,
      backgroundImageV2: json['background_image_v2'] as String,
      logo: json['logo'] as String,
      gameName: json['game_name'] as String,
    );

Map<String, dynamic> _$GameRecordCardDataToJson(GameRecordCardData instance) =>
    <String, dynamic>{
      'has_role': instance.hasRole,
      'game_id': instance.gameId,
      'game_role_id': instance.gameRoleId,
      'nickname': instance.nickname,
      'region': instance.region,
      'level': instance.level,
      'background_image': instance.backgroundImage,
      'is_public': instance.isPublic,
      'data': instance.data,
      'region_name': instance.regionName,
      'url': instance.url,
      'data_switches': instance.dataSwitches,
      'background_color': instance.backgroundColor,
      'background_image_v2': instance.backgroundImageV2,
      'logo': instance.logo,
      'game_name': instance.gameName,
    };

GameRecordCardDisplayData _$GameRecordCardDisplayDataFromJson(
        Map<String, dynamic> json) =>
    GameRecordCardDisplayData(
      name: json['name'] as String,
      type: (json['type'] as num).toInt(),
      value: json['value'] as String,
    );

Map<String, dynamic> _$GameRecordCardDisplayDataToJson(
        GameRecordCardDisplayData instance) =>
    <String, dynamic>{
      'name': instance.name,
      'type': instance.type,
      'value': instance.value,
    };

GameRecordCardDataSwitch _$GameRecordCardDataSwitchFromJson(
        Map<String, dynamic> json) =>
    GameRecordCardDataSwitch(
      switchId: (json['switch_id'] as num).toInt(),
      isPublic: json['is_public'] as bool,
      switchName: json['switch_name'] as String,
    );

Map<String, dynamic> _$GameRecordCardDataSwitchToJson(
        GameRecordCardDataSwitch instance) =>
    <String, dynamic>{
      'switch_id': instance.switchId,
      'is_public': instance.isPublic,
      'switch_name': instance.switchName,
    };

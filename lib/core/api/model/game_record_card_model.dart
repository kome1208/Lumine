
import 'package:json_annotation/json_annotation.dart';

part 'game_record_card_model.g.dart';

@JsonSerializable()
class GameRecordCard {
  final List<GameRecordCardData> list;

  GameRecordCard({
    required this.list
  });

  factory GameRecordCard.fromJson(Map<String, dynamic> json) => _$GameRecordCardFromJson(json);

  Map<String, dynamic> toJson() => _$GameRecordCardToJson(this);
}

@JsonSerializable()
class GameRecordCardData {
  @JsonKey(name: 'has_role')
  final bool hasRole;
  @JsonKey(name: 'game_id')
  final int gameId;
  @JsonKey(name: 'game_role_id')
  final String gameRoleId;
  final String nickname;
  final String region;
  final int level;
  @JsonKey(name: 'background_image')
  final String backgroundImage;
  @JsonKey(name: 'is_public')
  final bool isPublic;
  final List<GameRecordCardDisplayData> data;
  @JsonKey(name: 'region_name')
  final String regionName;
  final String url;
  @JsonKey(name: 'data_switches')
  final List<GameRecordCardDataSwitch> dataSwitches;
  @JsonKey(name: 'background_color')
  final String backgroundColor;
  @JsonKey(name: 'background_image_v2')
  final String backgroundImageV2;
  final String logo;
  @JsonKey(name: 'game_name')
  final String gameName;

  GameRecordCardData({
    required this.hasRole,
    required this.gameId,
    required this.gameRoleId,
    required this.nickname,
    required this.region,
    required this.level,
    required this.backgroundImage,
    required this.isPublic,
    required this.data,
    required this.regionName,
    required this.url,
    required this.dataSwitches,
    required this.backgroundColor,
    required this.backgroundImageV2,
    required this.logo,
    required this.gameName,
  });

  factory GameRecordCardData.fromJson(Map<String, dynamic> json) => _$GameRecordCardDataFromJson(json);

  Map<String, dynamic> toJson() => _$GameRecordCardDataToJson(this);
}

@JsonSerializable()
class GameRecordCardDisplayData {
  final String name;
  final int type;
  final String value;

  GameRecordCardDisplayData({
    required this.name,
    required this.type,
    required this.value
  });

  factory GameRecordCardDisplayData.fromJson(Map<String, dynamic> json) => _$GameRecordCardDisplayDataFromJson(json);

  Map<String, dynamic> toJson() => _$GameRecordCardDisplayDataToJson(this);
}

@JsonSerializable()
class GameRecordCardDataSwitch {
  @JsonKey(name: 'switch_id')
  final int switchId;
  @JsonKey(name: 'is_public')
  final bool isPublic;
  @JsonKey(name: 'switch_name')
  final String switchName;

  GameRecordCardDataSwitch({
    required this.switchId,
    required this.isPublic,
    required this.switchName
  });

  factory GameRecordCardDataSwitch.fromJson(Map<String, dynamic> json) => _$GameRecordCardDataSwitchFromJson(json);

  Map<String, dynamic> toJson() => _$GameRecordCardDataSwitchToJson(this);
}
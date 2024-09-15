import 'package:json_annotation/json_annotation.dart';

part 'exchange_code.g.dart';

@JsonSerializable()
class ExchangeGroup {
  final String id;
  @JsonKey(name: 'bonuses_summary')
  final BonusesSummary bonusesSummary;
  final List<Bonus> bonuses;
  final String title;
  @JsonKey(name: 'game_id')
  final int gameId;
  @JsonKey(name: 'group_status')
  final String groupStatus;
  @JsonKey(name: 'offline_at')
  final int offlineAt;
  final String reason;
  @JsonKey(name: 'publish_at')
  final int publishAt;
  final String operator;
  @JsonKey(name: 'created_at')
  final int createdAt;
  @JsonKey(name: 'updated_at')
  final int updatedAt;

  ExchangeGroup({
    required this.id,
    required this.bonusesSummary,
    required this.bonuses,
    required this.title,
    required this.gameId,
    required this.groupStatus,
    required this.offlineAt,
    required this.reason,
    required this.publishAt,
    required this.operator,
    required this.createdAt,
    required this.updatedAt
  });

  factory ExchangeGroup.fromJson(Map<String, dynamic> json) => _$ExchangeGroupFromJson(json);

  Map<String, dynamic> toJson() => _$ExchangeGroupToJson(this);
}

@JsonSerializable()
class Bonus {
  @JsonKey(name: 'exchange_group_id')
  final String exchangeGroupId;
  @JsonKey(name: 'exchange_code')
  final String exchangeCode;
  @JsonKey(name: 'code_status')
  final String codeStatus;
  @JsonKey(name: 'offline_at')
  final int offlineAt;
  @JsonKey(name: 'icon_bonuses')
  final List<IconBonus> iconBonuses;

  Bonus({
    required this.exchangeGroupId,
    required this.exchangeCode,
    required this.codeStatus,
    required this.offlineAt,
    required this.iconBonuses
  });

  factory Bonus.fromJson(Map<String, dynamic> json) => _$BonusFromJson(json);

  Map<String, dynamic> toJson() => _$BonusToJson(this);
}

@JsonSerializable()
class BonusesSummary {
  @JsonKey(name: 'icon_bonuses')
  final List<IconBonus> iconBonuses;
  @JsonKey(name: 'code_count')
  final int codeCount;

  BonusesSummary({
    required this.iconBonuses,
    required this.codeCount
  });

  factory BonusesSummary.fromJson(Map<String, dynamic> json) => _$BonusesSummaryFromJson(json);

  Map<String, dynamic> toJson() => _$BonusesSummaryToJson(this);
}

@JsonSerializable()
class IconBonus {
  @JsonKey(name: 'bonus_num')
  final int bonusNum;
  @JsonKey(name: 'icon_url')
  final String iconUrl;

  IconBonus({
    required this.bonusNum,
    required this.iconUrl
  });

  factory IconBonus.fromJson(Map<String, dynamic> json) => _$IconBonusFromJson(json);

  Map<String, dynamic> toJson() => _$IconBonusToJson(this);
}
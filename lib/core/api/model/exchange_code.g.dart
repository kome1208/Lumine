// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exchange_code.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExchangeGroup _$ExchangeGroupFromJson(Map<String, dynamic> json) =>
    ExchangeGroup(
      id: json['id'] as String,
      bonusesSummary: BonusesSummary.fromJson(
          json['bonuses_summary'] as Map<String, dynamic>),
      bonuses: (json['bonuses'] as List<dynamic>)
          .map((e) => Bonus.fromJson(e as Map<String, dynamic>))
          .toList(),
      title: json['title'] as String,
      gameId: (json['game_id'] as num).toInt(),
      groupStatus: json['group_status'] as String,
      offlineAt: (json['offline_at'] as num).toInt(),
      reason: json['reason'] as String,
      publishAt: (json['publish_at'] as num).toInt(),
      operator: json['operator'] as String,
      createdAt: (json['created_at'] as num).toInt(),
      updatedAt: (json['updated_at'] as num).toInt(),
    );

Map<String, dynamic> _$ExchangeGroupToJson(ExchangeGroup instance) =>
    <String, dynamic>{
      'id': instance.id,
      'bonuses_summary': instance.bonusesSummary,
      'bonuses': instance.bonuses,
      'title': instance.title,
      'game_id': instance.gameId,
      'group_status': instance.groupStatus,
      'offline_at': instance.offlineAt,
      'reason': instance.reason,
      'publish_at': instance.publishAt,
      'operator': instance.operator,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };

Bonus _$BonusFromJson(Map<String, dynamic> json) => Bonus(
      exchangeGroupId: json['exchange_group_id'] as String,
      exchangeCode: json['exchange_code'] as String,
      codeStatus: json['code_status'] as String,
      offlineAt: (json['offline_at'] as num).toInt(),
      iconBonuses: (json['icon_bonuses'] as List<dynamic>)
          .map((e) => IconBonus.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$BonusToJson(Bonus instance) => <String, dynamic>{
      'exchange_group_id': instance.exchangeGroupId,
      'exchange_code': instance.exchangeCode,
      'code_status': instance.codeStatus,
      'offline_at': instance.offlineAt,
      'icon_bonuses': instance.iconBonuses,
    };

BonusesSummary _$BonusesSummaryFromJson(Map<String, dynamic> json) =>
    BonusesSummary(
      iconBonuses: (json['icon_bonuses'] as List<dynamic>)
          .map((e) => IconBonus.fromJson(e as Map<String, dynamic>))
          .toList(),
      codeCount: (json['code_count'] as num).toInt(),
    );

Map<String, dynamic> _$BonusesSummaryToJson(BonusesSummary instance) =>
    <String, dynamic>{
      'icon_bonuses': instance.iconBonuses,
      'code_count': instance.codeCount,
    };

IconBonus _$IconBonusFromJson(Map<String, dynamic> json) => IconBonus(
      bonusNum: (json['bonus_num'] as num).toInt(),
      iconUrl: json['icon_url'] as String,
    );

Map<String, dynamic> _$IconBonusToJson(IconBonus instance) => <String, dynamic>{
      'bonus_num': instance.bonusNum,
      'icon_url': instance.iconUrl,
    };

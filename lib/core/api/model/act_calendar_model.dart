import 'package:freezed_annotation/freezed_annotation.dart';

part 'act_calendar_model.g.dart';
part 'act_calendar_model.freezed.dart';

@freezed
class ActCalendar with _$ActCalendar {
  const factory ActCalendar({
    @JsonKey(name: 'avatar_card_pool_list') required List<CardPool> avatarCardPoolList,
    @JsonKey(name: 'weapon_card_pool_list') required List<CardPool> weaponCardPoolList,
    // @JsonKey(name: 'mixed_card_pool_list') List<> mixedCardPoolList,
    @JsonKey(name: 'selected_avatar_card_pool_list') required List<CardPool> selectedAvatarCardPoolList,
    // @JsonKey(name: 'selected_mixed_card_pool_list	') List<> selectedMixedCardPoolList,
    @JsonKey(name: 'act_list') required List<ActItem> actList,
    @JsonKey(name: 'fixed_act_list') required List<ActItem> fixedActList
  }) = _ActCalendar;

  factory ActCalendar.fromJson(Map<String, dynamic> json) => _$ActCalendarFromJson(json);
}


@freezed
class CardPool with _$CardPool {
  const factory CardPool({
    @JsonKey(name: 'pool_id') required int poolId,
    @JsonKey(name: 'version_name') required String versionName,
    @JsonKey(name: 'pool_name') required String poolName,
    @JsonKey(name: 'pool_type') required PoolType poolType,
    required List<CardPoolAvatar> avatars,
    required List<CardPoolWeapon> weapon,
    @JsonKey(name: 'start_timestamp') required String startTimestamp,
    @JsonKey(name: 'end_timestamp') required String endTimestamp,
    @JsonKey(name: 'pool_status') required PoolStatus poolStatus,
    @JsonKey(name: 'countdown_seconds') required int countdownSeconds
  }) = _CardPool;

  factory CardPool.fromJson(Map<String, dynamic> json) => _$CardPoolFromJson(json);
}

@freezed
class CardPoolAvatar with _$CardPoolAvatar {
  const factory CardPoolAvatar({
    required int id,
    required String icon,
    required String name,
    required String element,
    required int rarity,
    @JsonKey(name: 'is_invisible') required bool isInvisible,
  }) = _CardPoolAvatar;

  factory CardPoolAvatar.fromJson(Map<String, dynamic> json) => _$CardPoolAvatarFromJson(json);
}

@freezed
class CardPoolWeapon with _$CardPoolWeapon {
  const factory CardPoolWeapon({
    required int id,
    required String icon,
    required int rarity,
    required String name,
    @JsonKey(name: 'wiki_url') required String wikiUrl
  }) = _CardPoolWeapon;

  factory CardPoolWeapon.fromJson(Map<String, dynamic> json) => _$CardPoolWeaponFromJson(json);
}

@freezed
class ActItem with _$ActItem {
  const factory ActItem({
    required int id,
    required String name,
    required ActType type,
    @JsonKey(name: 'start_timestamp') required String startTimestamp,
    @JsonKey(name: 'end_timestamp') required String endTimestamp,
    required String desc,
    required String strategy,
    @JsonKey(name: 'countdown_seconds') required int countdownSeconds,
    required PoolStatus status,
    @JsonKey(name: 'reward_list') required List<ActReward> rewardList,
    @JsonKey(name: 'is_finished') required bool isFinished,
    @JsonKey(name: 'explore_detail') ExploreDetail? exploreDetail,
    @JsonKey(name: 'liben_detail') LibenDetail? libenDetail,
    @JsonKey(name: 'role_combat_detail') RoleCombatDetail? roleCombatDetail,
    @JsonKey(name: 'tower_detail') TowerDetail? towerDetail,
    @JsonKey(name: 'double_detail') DoubleDetail? doubleDetail,
  }) = _ActItem;

  factory ActItem.fromJson(Map<String, dynamic> json) => _$ActItemFromJson(json);
}

@freezed
class ActReward with _$ActReward {
  const factory ActReward({
    @JsonKey(name: 'item_id') required int itemId,
    required String name,
    required String icon,
    @JsonKey(name: 'wiki_url') required String wikiUrl,
    required int num,
    required String rarity,
    @JsonKey(name: 'homepage_show') required bool homepageShow,
  }) = _ActReward;

  factory ActReward.fromJson(Map<String, dynamic> json) => _$ActRewardFromJson(json); 
}

@freezed
class ExploreDetail with _$ExploreDetail {
  const factory ExploreDetail({
    @JsonKey(name: 'explore_percent') required int explorePercent,
    @JsonKey(name: 'is_finished') required bool isFinished,
  }) = _ExploreDetail;

  factory ExploreDetail.fromJson(Map<String, dynamic> json) => _$ExploreDetailFromJson(json);
}

@freezed
class LibenDetail with _$LibenDetail {
  const factory LibenDetail({
    required int status,
    required int progress,
    required int total,
    @JsonKey(name: 'is_has_taken_special_reward') required bool isHasTakenSpecialReward,
  }) = _LibenDetail;

  factory LibenDetail.fromJson(Map<String, dynamic> json) => _$LibenDetailFromJson(json);
}

@freezed
class TowerDetail with _$TowerDetail {
  const factory TowerDetail({
    @JsonKey(name: 'is_unlock') required bool isUnlock,
    @JsonKey(name: 'max_star') required int maxStar,
    @JsonKey(name: 'total_star') required int totalStar,
    @JsonKey(name: 'has_data') required bool hasData,
  }) = _TowerDetail;

  factory TowerDetail.fromJson(Map<String, dynamic> json) => _$TowerDetailFromJson(json);
}

@freezed
class RoleCombatDetail with _$RoleCombatDetail {
  const factory RoleCombatDetail({
    @JsonKey(name: 'is_unlock') required bool isUnlock,
    @JsonKey(name: 'max_round_id') required int maxRoundId,
    @JsonKey(name: 'has_data') required bool hasData,
  }) = _RoleCombatDetail;

  factory RoleCombatDetail.fromJson(Map<String, dynamic> json) => _$RoleCombatDetailFromJson(json);
}

@freezed
class DoubleDetail with _$DoubleDetail {
  const factory DoubleDetail({
    required int total,
    required int left,
  }) = _DoubleDetail;

  factory DoubleDetail.fromJson(Map<String, dynamic> json) => _$DoubleDetailFromJson(json);
}

@JsonEnum(valueField: 'poolType')
enum PoolType {
  characterEventWish(1),
  weaponEventWish(2);

  const PoolType(this.poolType);
  final int poolType;
}

@JsonEnum(valueField: 'poolStatus')
enum PoolStatus {
  beforeStart(1),
  onGoing(2),
  ended(3);

  const PoolStatus(this.poolStatus);
  final int poolStatus;
}

@JsonEnum(valueField: 'actType')
enum ActType {
  other('ActTypeOther'),
  explore('ActTypeExplore'),
  liBen('ActTypeLiBen'),
  roleCombat('ActTypeRoleCombat'),
  tower('ActTypeTower'),
  double('ActTypeDouble');

  const ActType(this.actType);
  final String actType;
}
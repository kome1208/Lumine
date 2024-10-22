import 'package:freezed_annotation/freezed_annotation.dart';

part 'calculator_sync_avatar_list_model.g.dart';
part 'calculator_sync_avatar_list_model.freezed.dart';

@freezed
class CalculatorSyncAvatarList with _$CalculatorSyncAvatarList {
  const factory CalculatorSyncAvatarList({
    required List<CalculatorSyncAvatar> list,
    required int total,
  }) = _CalculatorSyncAvatarList;

  factory CalculatorSyncAvatarList.fromJson(Map<String, dynamic> json) => _$CalculatorSyncAvatarListFromJson(json);
}

@freezed
class CalculatorSyncAvatar with _$CalculatorSyncAvatar {
  const factory CalculatorSyncAvatar({
    required int id,
    required String name,
    required String icon,
    @JsonKey(name: 'weapon_cat_id') required int weaponCatId,
    @JsonKey(name: 'avatar_level') required int avatarLevel,
    @JsonKey(name: 'element_attr_id') required int elementAttrId,
    @JsonKey(name: 'max_level') required int maxLevel,
    @JsonKey(name: 'level_current') required String levelCurrent,
    @JsonKey(name: 'skill_list') required List<CalculatorSyncAvatarSkill> skillList,
    required CalculatorSyncAvatarWeapon weapon,
    @JsonKey(name: 'reliquary_list') required List<CalculatorSyncAvatarReliquary> reliquaryList,
    @JsonKey(name: 'wiki_url') required String wikiUrl,
  }) = _CalculatorSyncAvatar;

  factory CalculatorSyncAvatar.fromJson(Map<String, dynamic> json) => _$CalculatorSyncAvatarFromJson(json);
}

@freezed
class CalculatorSyncAvatarSkill with _$CalculatorSyncAvatarSkill {
  const factory CalculatorSyncAvatarSkill({
    required int id,
    @JsonKey(name: 'group_id') required int groupId,
    required String name,
    required String icon,
    @JsonKey(name: 'max_level') required int maxLevel,
    @JsonKey(name: 'level_current') required int levelCurrent,
  }) = _CalculatorSyncAvatarSkill;

  factory CalculatorSyncAvatarSkill.fromJson(Map<String, dynamic> json) => _$CalculatorSyncAvatarSkillFromJson(json);
}

@freezed
class CalculatorSyncAvatarWeapon with _$CalculatorSyncAvatarWeapon {
  const factory CalculatorSyncAvatarWeapon({
    required int id,
    @JsonKey(name: 'weapon_cat_id') required int weaponCatId,
    @JsonKey(name: 'weapon_level') required int weaponLevel,
    required String name,
    required String icon,
    @JsonKey(name: 'max_level') required int maxLevel,
    @JsonKey(name: 'level_current') required int levelCurrent,
  }) = _CalculatorSyncAvatarWeapon;

  factory CalculatorSyncAvatarWeapon.fromJson(Map<String, dynamic> json) => _$CalculatorSyncAvatarWeaponFromJson(json);
}

@freezed
class CalculatorSyncAvatarReliquary with _$CalculatorSyncAvatarReliquary {
  const factory CalculatorSyncAvatarReliquary({
    required int id,
    @JsonKey(name: 'reliquary_cat_id') required int reliquaryCatId,
    @JsonKey(name: 'reliquary_level') required int reliquaryLevel,
    required String name,
    required String icon,
    @JsonKey(name: 'max_level') required int maxLevel,
    @JsonKey(name: 'level_current') required int levelCurrent,
  }) = _CalculatorSyncAvatarReliquary;

  factory CalculatorSyncAvatarReliquary.fromJson(Map<String, dynamic> json) => _$CalculatorSyncAvatarReliquaryFromJson(json);
}
import 'package:freezed_annotation/freezed_annotation.dart';

part 'calculator_avatar_list_model.g.dart';
part 'calculator_avatar_list_model.freezed.dart';

@freezed
class CalculatorAvatarList with _$CalculatorAvatarList {
  const factory CalculatorAvatarList({
    required List<CalculatorAvatar> list,
    required int total,
  }) = _CalculatorAvatarList;

  factory CalculatorAvatarList.fromJson(Map<String, dynamic> json) => _$CalculatorAvatarListFromJson(json);
}

@freezed
class CalculatorAvatar with _$CalculatorAvatar {
  const factory CalculatorAvatar({
    required int id,
    required String name,
    required String icon,
    @JsonKey(name: 'weapon_cat_id') required int weaponCatId,
    @JsonKey(name: 'avatar_level') required int avatarLevel,
    @JsonKey(name: 'element_attr_id') required int elementAttrId,
    @JsonKey(name: 'max_level') required int maxLevel,
    @JsonKey(name: 'talent_icons') required List<String> talentIcons,
    @JsonKey(name: 'side_icon') required String sideIcon,
    @JsonKey(name: 'profile_pictures') required List<ProfilePicture> profilePictures,
    required List<CalculatorAvatarTalent> talents,
    @JsonKey(name: 'skill_list') required List<CalculatorAvatarSkill> skillList,
    @JsonKey(name: 'wiki_url') required String wikiUrl,
  }) = _CalculatorAvatar;

  factory CalculatorAvatar.fromJson(Map<String, dynamic> json) => _$CalculatorAvatarFromJson(json);
}

@freezed
class ProfilePicture with _$ProfilePicture {
  const factory ProfilePicture({
    @JsonKey(name: 'avatar_id') required String avatarId,
    @JsonKey(name: 'costume_id') required String costumeId,
    required String icon,
    @JsonKey(name: 'profile_picture_id') required String profilePictureId,
  }) = _ProfilePicture;

  factory ProfilePicture.fromJson(Map<String, dynamic> json) => _$ProfilePictureFromJson(json);
}

@freezed
class CalculatorAvatarTalent with _$CalculatorAvatarTalent {
  const factory CalculatorAvatarTalent({
    required int id,
    required String name,
    required String icon,
  }) = _CalculatorAvatarTalent;

  factory CalculatorAvatarTalent.fromJson(Map<String, dynamic> json) => _$CalculatorAvatarTalentFromJson(json);
}

@freezed
class CalculatorAvatarSkill with _$CalculatorAvatarSkill {
  const factory CalculatorAvatarSkill({
    required int id,
    @JsonKey(name: 'group_id') required int groupId,
    required String name,
    required String icon,
    @JsonKey(name: 'max_level') required int maxLevel
  }) = _CalculatorAvatarSkill;

  factory CalculatorAvatarSkill.fromJson(Map<String, dynamic> json) => _$CalculatorAvatarSkillFromJson(json);
}
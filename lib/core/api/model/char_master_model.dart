import 'package:json_annotation/json_annotation.dart';

part 'char_master_model.g.dart';

@JsonSerializable()
class CharMaster {
  final List<CharMasterAvatar> list;
  @JsonKey(name: 'is_unlock')
  final bool isUnlock;

  CharMaster({
    required this.list,
    required this.isUnlock,
  });

  factory CharMaster.fromJson(Map<String, dynamic> json) => _$CharMasterFromJson(json);

  Map<String, dynamic> toJson() => _$CharMasterToJson(this);
}

@JsonSerializable()
class CharMasterAvatar {
  @JsonKey(name: 'avatar_id')
  final int avatarId;
  final String name;
  final String icon;
  final int status;
  @JsonKey(name: 'has_red_dot')
  final bool hasRedDot;
  @JsonKey(name: 'level_id')
  final int levelId;

  CharMasterAvatar({
    required this.avatarId,
    required this.name,
    required this.icon,
    required this.status,
    required this.hasRedDot,
    required this.levelId
  });

  factory CharMasterAvatar.fromJson(Map<String, dynamic> json) => _$CharMasterAvatarFromJson(json);

  Map<String, dynamic> toJson() => _$CharMasterAvatarToJson(this);
}
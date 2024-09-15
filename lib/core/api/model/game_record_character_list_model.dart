import 'package:json_annotation/json_annotation.dart';

part 'game_record_character_list_model.g.dart';

@JsonSerializable()
class GameRecordCharacterList {
  final List<CharacterListCharacter> list;

  GameRecordCharacterList({
    required this.list
  });

  factory GameRecordCharacterList.fromJson(Map<String, dynamic> json) => _$GameRecordCharacterListFromJson(json);

  Map<String, dynamic> toJson() => _$GameRecordCharacterListToJson(this);
}

@JsonSerializable()
class CharacterListCharacter {
  final int id;
  final String icon;
  final String name;
  final String element;
  final int fetter;
  final int level;
  final int rarity;
  @JsonKey(name: 'actived_constellation_num')
  final int activedConstellationNum;
  final String image;
  @JsonKey(name: 'is_chosen')
  final bool isChosen;
  @JsonKey(name: 'side_icon')
  final String sideIcon;
  @JsonKey(name: 'weapon_type')
  final int weaponType;
  final CharacterListWeapon weapon;

  CharacterListCharacter({
    required this.id,
    required this.icon,
    required this.name,
    required this.element,
    required this.fetter,
    required this.level,
    required this.rarity,
    required this.activedConstellationNum,
    required this.image,
    required this.isChosen,
    required this.sideIcon,
    required this.weaponType,
    required this.weapon,
  });

  factory CharacterListCharacter.fromJson(Map<String, dynamic> json) => _$CharacterListCharacterFromJson(json);

  Map<String, dynamic> toJson() => _$CharacterListCharacterToJson(this);
}

@JsonSerializable()
class CharacterListWeapon {
  final int id;
  final String icon;
  final int type;
  final int rarity;
  final int level;
  @JsonKey(name: 'affix_level')
  final int affixLevel;

  CharacterListWeapon({
    required this.id,
    required this.icon,
    required this.type,
    required this.rarity,
    required this.level,
    required this.affixLevel,
  });

  factory CharacterListWeapon.fromJson(Map<String, dynamic> json) => _$CharacterListWeaponFromJson(json);

  Map<String, dynamic> toJson() => _$CharacterListWeaponToJson(this);
}
// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_record_character_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GameRecordCharacterList _$GameRecordCharacterListFromJson(
        Map<String, dynamic> json) =>
    GameRecordCharacterList(
      list: (json['list'] as List<dynamic>)
          .map(
              (e) => CharacterListCharacter.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GameRecordCharacterListToJson(
        GameRecordCharacterList instance) =>
    <String, dynamic>{
      'list': instance.list,
    };

CharacterListCharacter _$CharacterListCharacterFromJson(
        Map<String, dynamic> json) =>
    CharacterListCharacter(
      id: (json['id'] as num).toInt(),
      icon: json['icon'] as String,
      name: json['name'] as String,
      element: json['element'] as String,
      fetter: (json['fetter'] as num).toInt(),
      level: (json['level'] as num).toInt(),
      rarity: (json['rarity'] as num).toInt(),
      activedConstellationNum:
          (json['actived_constellation_num'] as num).toInt(),
      image: json['image'] as String,
      isChosen: json['is_chosen'] as bool,
      sideIcon: json['side_icon'] as String,
      weaponType: (json['weapon_type'] as num).toInt(),
      weapon:
          CharacterListWeapon.fromJson(json['weapon'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CharacterListCharacterToJson(
        CharacterListCharacter instance) =>
    <String, dynamic>{
      'id': instance.id,
      'icon': instance.icon,
      'name': instance.name,
      'element': instance.element,
      'fetter': instance.fetter,
      'level': instance.level,
      'rarity': instance.rarity,
      'actived_constellation_num': instance.activedConstellationNum,
      'image': instance.image,
      'is_chosen': instance.isChosen,
      'side_icon': instance.sideIcon,
      'weapon_type': instance.weaponType,
      'weapon': instance.weapon,
    };

CharacterListWeapon _$CharacterListWeaponFromJson(Map<String, dynamic> json) =>
    CharacterListWeapon(
      id: (json['id'] as num).toInt(),
      icon: json['icon'] as String,
      type: (json['type'] as num).toInt(),
      rarity: (json['rarity'] as num).toInt(),
      level: (json['level'] as num).toInt(),
      affixLevel: (json['affix_level'] as num).toInt(),
    );

Map<String, dynamic> _$CharacterListWeaponToJson(
        CharacterListWeapon instance) =>
    <String, dynamic>{
      'id': instance.id,
      'icon': instance.icon,
      'type': instance.type,
      'rarity': instance.rarity,
      'level': instance.level,
      'affix_level': instance.affixLevel,
    };

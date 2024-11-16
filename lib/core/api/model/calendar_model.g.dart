// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calendar_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CalendarImpl _$$CalendarImplFromJson(Map<String, dynamic> json) =>
    _$CalendarImpl(
      calendar: (json['calendar'] as List<dynamic>)
          .map((e) => CalendarItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CalendarImplToJson(_$CalendarImpl instance) =>
    <String, dynamic>{
      'calendar': instance.calendar,
    };

_$CalendarItemImpl _$$CalendarItemImplFromJson(Map<String, dynamic> json) =>
    _$CalendarItemImpl(
      dropDay: (json['drop_day'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      breakType: $enumDecode(_$BreakTypeEnumMap, json['break_type']),
      characterAbstracts: (json['character_abstracts'] as List<dynamic>)
          .map((e) => Abstract.fromJson(e as Map<String, dynamic>))
          .toList(),
      materialAbstracts: (json['material_abstracts'] as List<dynamic>)
          .map((e) => Abstract.fromJson(e as Map<String, dynamic>))
          .toList(),
      obtainMethod: json['obtain_method'] as String,
    );

Map<String, dynamic> _$$CalendarItemImplToJson(_$CalendarItemImpl instance) =>
    <String, dynamic>{
      'drop_day': instance.dropDay,
      'break_type': _$BreakTypeEnumMap[instance.breakType]!,
      'character_abstracts': instance.characterAbstracts,
      'material_abstracts': instance.materialAbstracts,
      'obtain_method': instance.obtainMethod,
    };

const _$BreakTypeEnumMap = {
  BreakType.talentLevelUp: 1,
  BreakType.weaponAscension: 2,
};

_$AbstractImpl _$$AbstractImplFromJson(Map<String, dynamic> json) =>
    _$AbstractImpl(
      entryPageId: json['entry_page_id'] as String,
      name: json['name'] as String,
      iconUrl: json['icon_url'] as String,
      filterValues:
          FilterValues.fromJson(json['filter_values'] as Map<String, dynamic>),
      desc: json['desc'] as String,
    );

Map<String, dynamic> _$$AbstractImplToJson(_$AbstractImpl instance) =>
    <String, dynamic>{
      'entry_page_id': instance.entryPageId,
      'name': instance.name,
      'icon_url': instance.iconUrl,
      'filter_values': instance.filterValues,
      'desc': instance.desc,
    };

_$FilterValuesImpl _$$FilterValuesImplFromJson(Map<String, dynamic> json) =>
    _$FilterValuesImpl(
      weaponProperty: json['weapon_property'] == null
          ? null
          : FilterProperty.fromJson(
              json['weapon_property'] as Map<String, dynamic>),
      weaponRarity: json['weapon_rarity'] == null
          ? null
          : FilterProperty.fromJson(
              json['weapon_rarity'] as Map<String, dynamic>),
      weaponType: json['weapon_type'] == null
          ? null
          : FilterProperty.fromJson(
              json['weapon_type'] as Map<String, dynamic>),
      characterProperty: json['character_property'] == null
          ? null
          : FilterProperty.fromJson(
              json['character_property'] as Map<String, dynamic>),
      characterVision: json['character_vision'] == null
          ? null
          : FilterProperty.fromJson(
              json['character_vision'] as Map<String, dynamic>),
      characterRegion: json['character_region'] == null
          ? null
          : FilterProperty.fromJson(
              json['character_region'] as Map<String, dynamic>),
      characterRarity: json['character_rarity'] == null
          ? null
          : FilterProperty.fromJson(
              json['character_rarity'] as Map<String, dynamic>),
      characterWeapon: json['character_weapon'] == null
          ? null
          : FilterProperty.fromJson(
              json['character_weapon'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FilterValuesImplToJson(_$FilterValuesImpl instance) =>
    <String, dynamic>{
      'weapon_property': instance.weaponProperty,
      'weapon_rarity': instance.weaponRarity,
      'weapon_type': instance.weaponType,
      'character_property': instance.characterProperty,
      'character_vision': instance.characterVision,
      'character_region': instance.characterRegion,
      'character_rarity': instance.characterRarity,
      'character_weapon': instance.characterWeapon,
    };

_$FilterPropertyImpl _$$FilterPropertyImplFromJson(Map<String, dynamic> json) =>
    _$FilterPropertyImpl(
      values:
          (json['values'] as List<dynamic>).map((e) => e as String).toList(),
      valueTypes: (json['value_types'] as List<dynamic>)
          .map((e) => FilterValueTypes.fromJson(e as Map<String, dynamic>))
          .toList(),
      key: json['key'] == null
          ? null
          : FilterPropertyKey.fromJson(json['key'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FilterPropertyImplToJson(
        _$FilterPropertyImpl instance) =>
    <String, dynamic>{
      'values': instance.values,
      'value_types': instance.valueTypes,
      'key': instance.key,
    };

_$FilterPropertyKeyImpl _$$FilterPropertyKeyImplFromJson(
        Map<String, dynamic> json) =>
    _$FilterPropertyKeyImpl(
      key: json['key'] as String,
      text: json['text'] as String,
      mi18nKey: json['mi18n_key'] as String,
      isMultiSelect: json['is_multi_select'] as bool,
      id: json['id'] as String,
      isHidden: json['is_hidden'] as bool,
      updatedAt: json['updated_at'] as String,
    );

Map<String, dynamic> _$$FilterPropertyKeyImplToJson(
        _$FilterPropertyKeyImpl instance) =>
    <String, dynamic>{
      'key': instance.key,
      'text': instance.text,
      'mi18n_key': instance.mi18nKey,
      'is_multi_select': instance.isMultiSelect,
      'id': instance.id,
      'is_hidden': instance.isHidden,
      'updated_at': instance.updatedAt,
    };

_$FilterValueTypesImpl _$$FilterValueTypesImplFromJson(
        Map<String, dynamic> json) =>
    _$FilterValueTypesImpl(
      id: json['id'] as String,
      value: json['value'] as String,
      mi18nKey: json['mi18n_key'] as String,
      icon: json['icon'] as String,
      enumString: json['enum_string'] as String,
    );

Map<String, dynamic> _$$FilterValueTypesImplToJson(
        _$FilterValueTypesImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'value': instance.value,
      'mi18n_key': instance.mi18nKey,
      'icon': instance.icon,
      'enum_string': instance.enumString,
    };

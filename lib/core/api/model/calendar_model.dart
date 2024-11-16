import 'package:freezed_annotation/freezed_annotation.dart';

part 'calendar_model.g.dart';
part 'calendar_model.freezed.dart';

@freezed
class Calendar with _$Calendar {
  const factory Calendar({
    required List<CalendarItem> calendar,
  }) = _Calendar;

  factory Calendar.fromJson(Map<String, dynamic> json) => _$CalendarFromJson(json);
}

@freezed
class CalendarItem with _$CalendarItem {
  const factory CalendarItem({
    @JsonKey(name: 'drop_day') required List<int> dropDay,
    @JsonKey(name: 'break_type') required BreakType breakType,
    @JsonKey(name: 'character_abstracts') required List<Abstract> characterAbstracts,
    @JsonKey(name: 'material_abstracts') required List<Abstract> materialAbstracts,
    @JsonKey(name: 'obtain_method') required String obtainMethod,
  }) = _CalendarItem;

  factory CalendarItem.fromJson(Map<String, dynamic> json) => _$CalendarItemFromJson(json);
}

@freezed
class Abstract with _$Abstract {
  const factory Abstract({
    @JsonKey(name: 'entry_page_id') required String entryPageId,
    required String name,
    @JsonKey(name: 'icon_url') required String iconUrl,
    @JsonKey(name: 'filter_values') required FilterValues filterValues,
    required String desc,
  }) = _Abstract;

  factory Abstract.fromJson(Map<String, dynamic> json) => _$AbstractFromJson(json);
}

@freezed
class FilterValues with _$FilterValues {
  const factory FilterValues({
    @JsonKey(name: 'weapon_property') FilterProperty? weaponProperty,
    @JsonKey(name: 'weapon_rarity') FilterProperty? weaponRarity,
    @JsonKey(name: 'weapon_type') FilterProperty? weaponType,
    @JsonKey(name: 'character_property') FilterProperty? characterProperty,
    @JsonKey(name: 'character_vision') FilterProperty? characterVision,
    @JsonKey(name: 'character_region') FilterProperty? characterRegion,
    @JsonKey(name: 'character_rarity') FilterProperty? characterRarity,
    @JsonKey(name: 'character_weapon') FilterProperty? characterWeapon,
  }) = _FilterValues;

  factory FilterValues.fromJson(Map<String, dynamic> json) => _$FilterValuesFromJson(json);
}

@freezed
class FilterProperty with _$FilterProperty {
  const factory FilterProperty({
    required List<String> values,
    @JsonKey(name: 'value_types') required List<FilterValueTypes> valueTypes,
    required FilterPropertyKey? key,
  }) = _FilterProperty;

  factory FilterProperty.fromJson(Map<String, dynamic> json) => _$FilterPropertyFromJson(json);
}

@freezed
class FilterPropertyKey with _$FilterPropertyKey {
  const factory FilterPropertyKey({
    required String key,
    required String text,
    @JsonKey(name: 'mi18n_key') required String mi18nKey,
    @JsonKey(name: 'is_multi_select') required bool isMultiSelect,
    required String id,
    @JsonKey(name: 'is_hidden') required bool isHidden,
    @JsonKey(name: 'updated_at') required String updatedAt
  }) = _FilterPropertyKey;

  factory FilterPropertyKey.fromJson(Map<String, dynamic> json) => _$FilterPropertyKeyFromJson(json);
}

@freezed
class FilterValueTypes with _$FilterValueTypes {
  const factory FilterValueTypes({
    required String id,
    required String value,
    @JsonKey(name: 'mi18n_key') required String mi18nKey,
    required String icon,
    @JsonKey(name: 'enum_string') required String enumString
  }) = _FilterValueTypes;

  factory FilterValueTypes.fromJson(Map<String, dynamic> json) => _$FilterValueTypesFromJson(json);
}

@JsonEnum(valueField: 'breakType')
enum BreakType {
  talentLevelUp(1),
  weaponAscension(2);

  const BreakType(this.breakType);
  final int breakType;
}
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lumine/core/api/model/calendar_model.dart';

part 'hover_model.g.dart';
part 'hover_model.freezed.dart';

@freezed
class Hover with _$Hover {
  const factory Hover({
    @JsonKey(name: 'ep_summary') required EPSummary epSummary,
    @JsonKey(name: 'extends') required List<ExtendData> extendsData,
  }) = _Hover;

  factory Hover.fromJson(Map<String, dynamic> json) => _$HoverFromJson(json);
}

@freezed
class EPSummary with _$EPSummary {
  const factory EPSummary({
    @JsonKey(name: 'entry_page_id') required String entryPageId,
    required String name,
    @JsonKey(name: 'icon_url') required String iconUrl,
    @JsonKey(name: 'filter_values') required FilterValues filterValues,
    required String desc,
  }) = _EPSummary;

  factory EPSummary.fromJson(Map<String, dynamic> json) => _$EPSummaryFromJson(json);
}

@freezed
class ExtendData with _$ExtendData {
  const factory ExtendData({
    @JsonKey(name: 'ep_abstracts') required List<EPAbstract> epAbstracts,
    required ExtendDataText text,
    @JsonKey(name: 'source_desc') required String sourceDesc,
    required String title,
  }) = _ExtendData;

  factory ExtendData.fromJson(Map<String, dynamic> json) => _$ExtendDataFromJson(json);
}

@freezed
class EPAbstract with _$EPAbstract {
  const factory EPAbstract({
    @JsonKey(name: 'entry_page_id') required String entryPageId,
    required String name,
    @JsonKey(name: 'icon_url') required String iconUrl,
  }) = _EPAbstract;

  factory EPAbstract.fromJson(Map<String, dynamic> json) => _$EPAbstractFromJson(json);
}

@freezed
class ExtendDataText with _$ExtendDataText {
  const factory ExtendDataText({
    @JsonKey(name: 'ascension_weapon_attr_header') required String? ascensionWeaponAttrHeader,
    @JsonKey(name: 'ascension_weapon_attr_data') required String? ascensionWeaponAttrData,
  }) = _ExtendDataText;

  factory ExtendDataText.fromJson(Map<String, dynamic> json) => _$ExtendDataTextFromJson(json);
}
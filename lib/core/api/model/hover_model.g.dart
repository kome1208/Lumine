// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hover_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HoverImpl _$$HoverImplFromJson(Map<String, dynamic> json) => _$HoverImpl(
      epSummary: EPSummary.fromJson(json['ep_summary'] as Map<String, dynamic>),
      extendsData: (json['extends'] as List<dynamic>)
          .map((e) => ExtendData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$HoverImplToJson(_$HoverImpl instance) =>
    <String, dynamic>{
      'ep_summary': instance.epSummary,
      'extends': instance.extendsData,
    };

_$EPSummaryImpl _$$EPSummaryImplFromJson(Map<String, dynamic> json) =>
    _$EPSummaryImpl(
      entryPageId: json['entry_page_id'] as String,
      name: json['name'] as String,
      iconUrl: json['icon_url'] as String,
      filterValues:
          FilterValues.fromJson(json['filter_values'] as Map<String, dynamic>),
      desc: json['desc'] as String,
    );

Map<String, dynamic> _$$EPSummaryImplToJson(_$EPSummaryImpl instance) =>
    <String, dynamic>{
      'entry_page_id': instance.entryPageId,
      'name': instance.name,
      'icon_url': instance.iconUrl,
      'filter_values': instance.filterValues,
      'desc': instance.desc,
    };

_$ExtendDataImpl _$$ExtendDataImplFromJson(Map<String, dynamic> json) =>
    _$ExtendDataImpl(
      epAbstracts: (json['ep_abstracts'] as List<dynamic>)
          .map((e) => EPAbstract.fromJson(e as Map<String, dynamic>))
          .toList(),
      text: ExtendDataText.fromJson(json['text'] as Map<String, dynamic>),
      sourceDesc: json['source_desc'] as String,
      title: json['title'] as String,
    );

Map<String, dynamic> _$$ExtendDataImplToJson(_$ExtendDataImpl instance) =>
    <String, dynamic>{
      'ep_abstracts': instance.epAbstracts,
      'text': instance.text,
      'source_desc': instance.sourceDesc,
      'title': instance.title,
    };

_$EPAbstractImpl _$$EPAbstractImplFromJson(Map<String, dynamic> json) =>
    _$EPAbstractImpl(
      entryPageId: json['entry_page_id'] as String,
      name: json['name'] as String,
      iconUrl: json['icon_url'] as String,
    );

Map<String, dynamic> _$$EPAbstractImplToJson(_$EPAbstractImpl instance) =>
    <String, dynamic>{
      'entry_page_id': instance.entryPageId,
      'name': instance.name,
      'icon_url': instance.iconUrl,
    };

_$ExtendDataTextImpl _$$ExtendDataTextImplFromJson(Map<String, dynamic> json) =>
    _$ExtendDataTextImpl(
      ascensionWeaponAttrHeader:
          json['ascension_weapon_attr_header'] as String?,
      ascensionWeaponAttrData: json['ascension_weapon_attr_data'] as String?,
    );

Map<String, dynamic> _$$ExtendDataTextImplToJson(
        _$ExtendDataTextImpl instance) =>
    <String, dynamic>{
      'ascension_weapon_attr_header': instance.ascensionWeaponAttrHeader,
      'ascension_weapon_attr_data': instance.ascensionWeaponAttrData,
    };

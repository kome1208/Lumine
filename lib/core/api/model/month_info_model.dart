import 'package:json_annotation/json_annotation.dart';

part 'month_info_model.g.dart';

@JsonSerializable()
class MonthInfo {
  final int uid;
  final String region;
  final String nickname;
  @JsonKey(name: 'optional_month')
  final List<int> optionalMonth;
  final int month;
  @JsonKey(name: 'data_month')
  final int dataMonth;
  @JsonKey(name: 'month_data')
  final MonthData monthData;
  @JsonKey(name: 'day_data')
  final DayData dayData;

  MonthInfo({
    required this.uid,
    required this.region,
    required this.nickname,
    required this.optionalMonth,
    required this.month,
    required this.dataMonth,
    required this.monthData,
    required this.dayData
  });

  factory MonthInfo.fromJson(Map<String, dynamic> json) => _$MonthInfoFromJson(json);

  Map<String, dynamic> toJson() => _$MonthInfoToJson(this);
}

@JsonSerializable()
class MonthData {
  @JsonKey(name: 'current_primogems')
  final int currentPrimogems;
  @JsonKey(name: 'current_mora')
  final int currentMora;
  @JsonKey(name: 'last_primogems')
  final int lastPrimogems;
  @JsonKey(name: 'last_mora')
  final int lastMora;
  @JsonKey(name: 'primogem_rate')
  final int primogemRate;
  @JsonKey(name: 'mora_rate')
  final int moraRate;
  @JsonKey(name: 'group_by')
  final List<MonthDataGroup> groupBy;

  MonthData({
    required this.currentPrimogems,
    required this.currentMora,
    required this.lastPrimogems,
    required this.lastMora,
    required this.primogemRate,
    required this.moraRate,
    required this.groupBy,
  });

  factory MonthData.fromJson(Map<String, dynamic> json) => _$MonthDataFromJson(json);

  Map<String, dynamic> toJson() => _$MonthDataToJson(this);
}

@JsonSerializable()
class DayData {
  @JsonKey(name: 'current_primogems')
  final int currentPrimogems;
  @JsonKey(name: 'current_mora')
  final int currentMora;

  DayData({
    required this.currentPrimogems,
    required this.currentMora
  });

  factory DayData.fromJson(Map<String, dynamic> json) => _$DayDataFromJson(json);

  Map<String, dynamic> toJson() => _$DayDataToJson(this);
}

@JsonSerializable()
class MonthDataGroup {
  @JsonKey(name: 'action_id')
  final int actionId;
  final String action;
  final int num;
  final int percent;

  MonthDataGroup({
    required this.actionId,
    required this.action,
    required this.num,
    required this.percent
  });

  factory MonthDataGroup.fromJson(Map<String, dynamic> json) => _$MonthDataGroupFromJson(json);

  Map<String, dynamic> toJson() => _$MonthDataGroupToJson(this);
}
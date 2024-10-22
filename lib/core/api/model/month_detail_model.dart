import 'package:freezed_annotation/freezed_annotation.dart';

part 'month_detail_model.g.dart';
part 'month_detail_model.freezed.dart';

@freezed
class MonthDetail with _$MonthDetail {
  const factory MonthDetail({
    required int uid,
    required String region,
    required String nickname,
    @JsonKey(name: 'data_month') required int dataMonth,
    @JsonKey(name: 'current_page') required int currentPage,
    required List<ActionInfo> list,
    @JsonKey(name: 'optional_month') required List<int> optionalMonth
  }) = _MonthDetail;

  factory MonthDetail.fromJson(Map<String, dynamic> json) => _$MonthDetailFromJson(json);
}

@freezed
class ActionInfo with _$ActionInfo {
  const factory ActionInfo({
    @JsonKey(name: 'action_id') required int actionId,
    required String action,
    required String time,
    required int num,
  }) = _ActionInfo;

  factory ActionInfo.fromJson(Map<String, dynamic> json) => _$ActionInfoFromJson(json);
}
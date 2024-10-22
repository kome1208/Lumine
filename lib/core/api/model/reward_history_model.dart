import 'package:freezed_annotation/freezed_annotation.dart';

part 'reward_history_model.g.dart';
part 'reward_history_model.freezed.dart';

@freezed
class RewardHistory with _$RewardHistory {
  const factory RewardHistory({
    required List<Reward> list,
    required int total,
  }) = _RewardHistory;

  factory RewardHistory.fromJson(Map<String, dynamic> json) => _$RewardHistoryFromJson(json);
}

@freezed
class Reward with _$Reward {
  const factory Reward({
    required int id,
    required int status,
    required int type,
    required String game,
    required String img,
    required String name,
    @JsonKey(name: 'created_at') required String createdAt,
    required String desc,
    required int cnt,
  }) = _Reward;

  factory Reward.fromJson(Map<String, dynamic> json) => _$RewardFromJson(json);
}
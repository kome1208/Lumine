import 'package:freezed_annotation/freezed_annotation.dart';

part 'achievement_model.g.dart';
part 'achievement_model.freezed.dart';

@freezed
class AchievementData with _$AchievementData {
  const factory AchievementData({
    required List<Achievement> list,
    @JsonKey(name: 'achievement_num') required int achievementNum, 
  }) = _AchievementData;

  factory AchievementData.fromJson(Map<String, dynamic> json) => _$AchievementDataFromJson(json);
}

@freezed
class Achievement with _$Achievement {
  const factory Achievement({
    required String name,
    required String id,
    required int percentage,
    @JsonKey(name: 'finish_num') required int finishNum,
    @JsonKey(name: 'show_percent') required bool showPercent,
    required String icon,
  }) = _Achievement;

  factory Achievement.fromJson(Map<String, dynamic> json) => _$AchievementFromJson(json);
}
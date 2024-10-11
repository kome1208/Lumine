import 'package:lumine/core/api/model/achievement_model.dart';
import 'package:lumine/core/provider/hoyolab_api.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'achievement_provider.g.dart';

@Riverpod()
class AchievementNotifier extends _$AchievementNotifier {
  @override
  Future<AchievementData> build() async {
    return fetchData();
  }

  Future<AchievementData> fetchData() async {
    final api = ref.watch(hoYoLABAPINotifierProvider);

    return api.getAchievements();
  }

  Future<void> refresh() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async => await fetchData());
  }
}
import 'package:lumine/core/api/model/spiral_abyss_model.dart';
import 'package:lumine/core/provider/hoyolab_api.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'spiral_abyss_provider.g.dart';

@Riverpod()
class SpiralAbyssNotifier extends _$SpiralAbyssNotifier {
  @override
  Future<SpiralAbyss> build(int scheduleType) async {
    return fetchData();
  }

  Future<SpiralAbyss> fetchData() async {
    final api = ref.watch(hoYoLABAPINotifierProvider);

    return api.getSpiralAbyss(scheduleType: scheduleType);
  }

  Future<void> refresh() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async => await fetchData());
  }
}
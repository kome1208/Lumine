import 'package:lumine/core/api/model/game_record_model.dart';
import 'package:lumine/core/provider/hoyolab_api.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'game_record.g.dart';

@Riverpod()
class GameRecordNotifier extends _$GameRecordNotifier {
  @override
  Future<GameRecord> build() async {
    return fetchData();
  }

  Future<GameRecord> fetchData() async {
    final api = ref.watch(hoYoLABAPINotifierProvider);

    return api.getGameRecord(avatarListType: 1);
  }

  Future<void> refresh() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async => await fetchData());
  }
}
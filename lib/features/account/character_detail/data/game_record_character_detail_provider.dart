import 'package:lumine/core/api/model/game_record_character_detail_model.dart';
import 'package:lumine/core/provider/hoyolab_api.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'game_record_character_detail_provider.g.dart';

@Riverpod()
class GameRecordCharacterDetailNotifier extends _$GameRecordCharacterDetailNotifier {
  @override
  Future<GameRecordCharacterDetail> build(int characterId) {
    return fetchData();
  }

  Future<GameRecordCharacterDetail> fetchData() async {
    final api = ref.watch(hoYoLABAPINotifierProvider);

    return api.getCharacterDetail([characterId]);
  }

  Future<void> refresh() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async => await fetchData());
  }
}
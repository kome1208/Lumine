import 'package:lumine/core/api/model/game_record_character_list_model.dart';
import 'package:lumine/core/provider/hoyolab_api.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'game_record_character_list_provider.g.dart';

@Riverpod()
class GameRecordCharacterListNotifier extends _$GameRecordCharacterListNotifier {
  @override
  Future<GameRecordCharacterList> build(
    int sortType,
    List<String>? elements,
    List<int>? weaponTypes
  ) async {
    return fetchData();
  }

  Future<GameRecordCharacterList> fetchData() async {
    final api = ref.watch(hoYoLABAPINotifierProvider);

    return api.getCharacterList(
      sortType: sortType,
      elements: elements,
      weaponType: weaponTypes
    );
  }

  Future<void> refresh() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async => await fetchData());
  }
}
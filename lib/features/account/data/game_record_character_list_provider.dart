import 'package:lumine/core/api/model/game_record_character_list_model.dart';
import 'package:lumine/core/provider/hoyolab_api.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'game_record_character_list_provider.g.dart';

@Riverpod()
Future<GameRecordCharacterList> gameRecordCharacterList(
  GameRecordCharacterListRef ref,
  int sortType,
  List<String>? elements,
  List<int>? weaponTypes
) async {
  final api = ref.watch(hoYoLABAPINotifierProvider);

  return api.getCharacterList(
    sortType: sortType,
    elements: elements,
    weaponType: weaponTypes
  );
}
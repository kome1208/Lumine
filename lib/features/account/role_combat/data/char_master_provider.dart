import 'package:lumine/core/api/model/char_master_model.dart';
import 'package:lumine/core/provider/hoyolab_api.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'char_master_provider.g.dart';

@Riverpod()
class CharMasterNotifier extends _$CharMasterNotifier {
  @override
  Future<CharMaster> build() async {
    return fetchData();
  }

  Future<CharMaster> fetchData() async {
    final api = ref.watch(hoYoLABAPINotifierProvider);

    return api.getCharMaster();
  }

  Future<void> refresh() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async => await fetchData());
  }
}
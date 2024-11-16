import 'package:lumine/core/api/model/role_combat_model.dart';
import 'package:lumine/core/provider/hoyolab_api.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'role_combat_provider.g.dart';

@Riverpod()
class RoleCombatNotifier extends _$RoleCombatNotifier {
  @override
  Future<RoleCombat> build() async {
    return fetchData();
  }

  Future<RoleCombat> fetchData() async {
    final api = ref.watch(hoYoLABAPINotifierProvider);

    return api.getRoleCombat();
  }

  Future<void> refresh() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async => await fetchData());
  }
}
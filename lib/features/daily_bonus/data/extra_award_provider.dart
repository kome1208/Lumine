import 'package:lumine/core/api/model/extra_award_model.dart';
import 'package:lumine/core/provider/hoyolab_api.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'extra_award_provider.g.dart';

@Riverpod(keepAlive: true)
class ExtraAwardNotifier extends _$ExtraAwardNotifier {
  @override
  Future<ExtraAwardList> build() async {
    return getExtraAward();
  }

  Future<ExtraAwardList> getExtraAward() async {
    final api = ref.watch(hoYoLABAPINotifierProvider);

    return api.getExtraAward();
  }

  Future<void> refresh() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async => await getExtraAward());
  }
}
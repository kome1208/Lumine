import 'package:lumine/core/api/model/daily_award_list_model.dart';
import 'package:lumine/core/provider/hoyolab_api.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'award_list_notifier_provider.g.dart';

@Riverpod(keepAlive: true)
class AwardListNotifier extends _$AwardListNotifier {
  @override
  Future<DailyAwardList> build() async {
    return getAwardList();
  }

  Future<DailyAwardList> getAwardList() async {
    final api = ref.watch(hoYoLABAPINotifierProvider);

    return api.getAwardList();
  }

  Future<void> refresh() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async => await getAwardList());
  }
}
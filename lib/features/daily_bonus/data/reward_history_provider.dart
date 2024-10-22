import 'package:lumine/core/api/model/reward_history_model.dart';
import 'package:lumine/core/provider/hoyolab_api.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'reward_history_provider.g.dart';

@Riverpod()
class RewardHistoryNotifier extends _$RewardHistoryNotifier {
  int _currentPage = 0;
  bool noMoreRecords = false;

  @override
  Future<RewardHistory> build() async {
    return fetchData();
  }

  Future<void> fetchMore() async {
    if (state.isLoading || state.isRefreshing || state.isReloading || noMoreRecords) return;

    state = const AsyncValue.loading();

    final history = await fetchData();

    state = AsyncData(
      history.copyWith(
        list: [
          ...state.value!.list,
          ...history.list,
        ]
      )
    );

    if (state.value!.total <= _currentPage * 10) {
      noMoreRecords = true;
    }
  }

  Future<RewardHistory> fetchData() async {
    final api = ref.watch(hoYoLABAPINotifierProvider);

    return api.getRewardHistory(++_currentPage);
  }

  Future<void> refresh() async {
    state = const AsyncValue.loading();
    _currentPage = 0;
    noMoreRecords = false;
    state = await AsyncValue.guard(() async => await fetchData());
  }
}
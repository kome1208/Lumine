import 'package:lumine/core/api/model/month_detail_model.dart';
import 'package:lumine/core/provider/hoyolab_api.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'month_detail_provider.g.dart';

@Riverpod()
class MonthDetailNotifier extends _$MonthDetailNotifier {
  bool noMoreRecords = false;
  int _currentPage = 0;

  @override
  Future<MonthDetail> build(int month, int type) async {
    return fetchData();
  }

  Future<void> fetchMore() async {
    if (state.isLoading || state.isRefreshing || state.isReloading) return;
    if (noMoreRecords) return;

    state = const AsyncLoading();

    final detail = await fetchData();

    state = AsyncData(
      state.value != null ? state.value!.copyWith(
        list: [
          ...state.value!.list,
          ...detail.list,
        ]
      ) : detail,
    );

    if (detail.list.length < 20) {
      noMoreRecords = true;
    }
  }

  Future<MonthDetail> fetchData() async {
    final api = ref.watch(hoYoLABAPINotifierProvider);

    return api.getMonthDetail(month, ++_currentPage, type);
  }
}
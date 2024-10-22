import 'package:lumine/core/api/model/news_list_model.dart';
import 'package:lumine/core/provider/hoyolab_api.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'notice_list_provider.g.dart';

@Riverpod()
class NoticeListNotifier extends _$NoticeListNotifier {
  @override
  Future<NewsList> build(
    int type
  ) async {
    return fetchData();
  }

  Future<void> fetchMore() async {
    if (state.isLoading || state.isRefreshing || state.isReloading || state.value?.isLast == true) return;

    state = const AsyncValue.loading();

    final detail = await fetchData(state.value!.lastId);

    state = AsyncData(
      detail.copyWith(
        list: [
          ...state.value!.list,
          ...detail.list,
        ]
      )
    );
  }

  Future<NewsList> fetchData([int lastId = 0]) async {
    final api = ref.watch(hoYoLABAPINotifierProvider);

    return api.getNewsList(type, 15, lastId);
  }

  Future<void> refresh() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async => await fetchData());
  }
}
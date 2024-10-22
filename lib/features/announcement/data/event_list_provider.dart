import 'package:lumine/core/api/model/event_list_model.dart';
import 'package:lumine/core/provider/hoyolab_api.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'event_list_provider.g.dart';

@Riverpod()
class EventListNotifier extends _$EventListNotifier {
  @override
  Future<EventList> build() async {
    return fetchData();
  }

  Future<void> fetchMore() async {
    if (state.isLoading || state.isRefreshing || state.isReloading || state.value?.isLast == true) return;

    state = const AsyncValue.loading();

    final detail = await fetchData(state.value!.nextOffset);

    state = AsyncData(
      detail.copyWith(
        list: [
          ...state.value!.list,
          ...detail.list,
        ]
      )
    );
  }

  Future<EventList> fetchData([String offset = '0']) async {
    final api = ref.watch(hoYoLABAPINotifierProvider);

    return api.getEventList(15, offset);
  }

  Future<void> refresh() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async => await fetchData());
  }
}
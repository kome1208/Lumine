import 'package:lumine/core/api/model/hover_model.dart';
import 'package:lumine/core/provider/hoyolab_api.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'hover_data_provider.g.dart';

@Riverpod()
class HoverDataNotifier extends _$HoverDataNotifier {
  @override
  Future<Hover> build(
    String pageId,
  ) async {
    return fetchData();
  }

  Future<Hover> fetchData() async {
    final api = ref.watch(hoYoLABAPINotifierProvider);

    return api.getHoverData(pageId);
  }

  Future<void> refresh() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async => await fetchData());
  }
}
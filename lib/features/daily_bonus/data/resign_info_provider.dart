import 'package:lumine/core/api/model/daily_resign_info_model.dart';
import 'package:lumine/core/provider/hoyolab_api.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'resign_info_provider.g.dart';

@Riverpod(keepAlive: true)
class ResignInfoNotifier extends _$ResignInfoNotifier {
  @override
  Future<DailyResignInfo> build() async {
    return getAwardList();
  }

  Future<DailyResignInfo> getAwardList() async {
    final api = ref.watch(hoYoLABAPINotifierProvider);

    return api.getResignInfo();
  }

  Future<void> refresh() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async => await getAwardList());
  }
}
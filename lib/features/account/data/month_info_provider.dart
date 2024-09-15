import 'package:lumine/core/api/model/month_info_model.dart';
import 'package:lumine/core/provider/hoyolab_api.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'month_info_provider.g.dart';

@Riverpod()
class MonthInfoNotifier extends _$MonthInfoNotifier {
  @override
  Future<MonthInfo> build(int month) async {
    return fetchData(month);
  }

  Future<MonthInfo> fetchData(int month) async {
    final api = ref.watch(hoYoLABAPINotifierProvider);

    return api.getMonthInfo(month);
  }

  Future<void> refresh() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async => await fetchData(month));
  }
}
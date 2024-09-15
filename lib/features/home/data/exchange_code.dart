import 'package:lumine/core/api/model/exchange_code.dart';
import 'package:lumine/core/provider/hoyolab_api.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'exchange_code.g.dart';

@Riverpod()
class ExchangeCodeNotifier extends _$ExchangeCodeNotifier {
  @override
  Future<ExchangeGroup?> build() async {
    return fetchData();
  }

  Future<ExchangeGroup?> fetchData() async {
    final api = ref.watch(hoYoLABAPINotifierProvider);

    return api.getExchangeCodes();
  }

  Future<void> refresh() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async => await fetchData());
  }
}
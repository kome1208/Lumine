import 'package:lumine/core/api/model/daily_sign_info_model.dart';
import 'package:lumine/core/provider/hoyolab_api.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'sign_info_notifier_provider.g.dart';

@Riverpod(keepAlive: true)
class SignInfoNotifier extends _$SignInfoNotifier {
  @override
  Future<DailySignInfo> build() async {
    return getSignInfo();
  }

  Future<DailySignInfo> getSignInfo() async {
    final api = ref.watch(hoYoLABAPINotifierProvider);

    return api.getSignInfo();
  }

  Future<void> refresh() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async => await getSignInfo());
  }
}
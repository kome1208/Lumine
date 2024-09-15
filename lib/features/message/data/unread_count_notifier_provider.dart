import 'package:lumine/core/api/model/unread_count_model.dart';
import 'package:lumine/core/provider/hoyolab_api.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'unread_count_notifier_provider.g.dart';

@Riverpod()
class UnreadCountNotifier extends _$UnreadCountNotifier {
  @override
  Future<UnreadCount> build() async {
    return fetchData();
  }

  Future<UnreadCount> fetchData() async {
    final api = ref.watch(hoYoLABAPINotifierProvider);

    return api.getUnreadCount();
  }

  Future<void> refresh() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async => await fetchData());
  }
}
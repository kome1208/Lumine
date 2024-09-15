import 'package:lumine/core/api/model/user_notifications_model.dart';
import 'package:lumine/core/provider/hoyolab_api.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_notifications.g.dart';

@Riverpod()
class UserNotificationsNotifier extends _$UserNotificationsNotifier {
  String? _lastId;
  bool _isLast = false;

  @override
  Future<List<SystemMessage>> build(String category) async {
    return fetchInitial();
  }

  Future<List<SystemMessage>> fetchInitial() async {
    final notifications = await fetchNotifications(category);

    _lastId = notifications.lastId;
    _isLast = notifications.isLast;

    return (notifications.list);
  }

  Future<void> fetchMoreNotifications() async {
    if (state.isLoading || state.isRefreshing || state.isReloading) return;
    if (_isLast) return;

    state = const AsyncLoading();

    final notifications = await fetchNotifications(category, lastId: _lastId);

    state = AsyncData([
        if (state.value != null) ...state.value!,
        ...notifications.list
    ]);
    _lastId = notifications.lastId;
    _isLast = notifications.isLast;
  }

  Future<UserNotifications> fetchNotifications(String category, {String? lastId = '0'}) async {
    final api = ref.watch(hoYoLABAPINotifierProvider);

    return api.getUserNotifications(category, lastId: lastId);
  }
}
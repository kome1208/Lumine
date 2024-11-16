import 'package:lumine/core/api/model/calendar_model.dart';
import 'package:lumine/core/provider/hoyolab_api.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'calendar_provider.g.dart';

@Riverpod()
class CalendarNotifier extends _$CalendarNotifier {
  @override
  Future<Calendar> build() async {
    return fetchData();
  }

  Future<Calendar> fetchData() async {
    final api = ref.watch(hoYoLABAPINotifierProvider);

    return api.getCalendar();
  }

  Future<void> refresh() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async => await fetchData());
  }
}
import 'package:lumine/core/api/model/act_calendar_model.dart';
import 'package:lumine/core/provider/hoyolab_api.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'act_calendar_provider.g.dart';

@Riverpod()
class ActCalendarNotifier extends _$ActCalendarNotifier {
  @override
  Future<ActCalendar> build() async {
    return fetchData();
  }

  Future<ActCalendar> fetchData() async {
    final api = ref.watch(hoYoLABAPINotifierProvider);

    return api.getActCalendar();
  }

  Future<void> refresh() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async => await fetchData());
  }
}
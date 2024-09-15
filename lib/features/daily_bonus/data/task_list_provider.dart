import 'package:lumine/core/api/model/checkin_makeup_task_list_model.dart';
import 'package:lumine/core/provider/hoyolab_api.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'task_list_provider.g.dart';

@Riverpod(keepAlive: true)
class TaskListNotifier extends _$TaskListNotifier {
  @override
  Future<CheckinMakeupTaskList> build() async {
    return getTaskList();
  }

  Future<CheckinMakeupTaskList> getTaskList() async {
    final api = ref.watch(hoYoLABAPINotifierProvider);

    return api.getTaskList();
  }

  Future<void> refresh() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async => await getTaskList());
  }
}
import 'package:lumine/core/api/model/daily_note_model.dart';
import 'package:lumine/core/provider/hoyolab_api.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'daily_note.g.dart';

@Riverpod()
class DailyNoteNotifier extends _$DailyNoteNotifier {
  @override
  Future<DailyNote> build() async {
    return fetchData();
  }

  Future<DailyNote> fetchData() async {
    final api = ref.watch(hoYoLABAPINotifierProvider);

    return api.getDailyNote();
  }

  Future<void> refresh() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async => await fetchData());
  }
}
import 'package:lumine/core/api/model/brief_model.dart';
import 'package:lumine/core/provider/hoyolab_api.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'message_category.g.dart';

@Riverpod(keepAlive: true)
class MessageCategoryNotifier extends _$MessageCategoryNotifier {
  @override
  Future<UserBrief> build() async {
    return fetchData();
  }

  Future<UserBrief> fetchData() async {
    final api = ref.watch(hoYoLABAPINotifierProvider);

    return api.getUserBrief();
  }

  Future<void> refresh() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async => await fetchData());
  }
}
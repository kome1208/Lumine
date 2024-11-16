import 'dart:convert';

import 'package:lumine/core/model/check_update_response.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:http/http.dart' as http;

part 'app_update_provider.g.dart';

@Riverpod(keepAlive: true)
class AppUpdateNotifier extends _$AppUpdateNotifier {
  @override
  Future<UpdateCheckResponse> build() async {
    return checkUpdate();
  }

  Future<UpdateCheckResponse> checkUpdate() async {
    final response = await http.get(Uri.parse('https://raw.githubusercontent.com/kome1208/Lumine-Updates/refs/heads/main/updates.json'));

    if (response.statusCode == 200) {
      return UpdateCheckResponse.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('アップデート確認中にエラーが発生しました');
    }
  }

  Future<void> refresh() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async => checkUpdate());
  }
}
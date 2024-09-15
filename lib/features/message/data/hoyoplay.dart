import 'dart:convert';

import 'package:lumine/models/game_content.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:http/http.dart' as http;

part 'hoyoplay.g.dart';

@Riverpod(keepAlive: true)
class HoyoplayNotifier extends _$HoyoplayNotifier {
  @override
  Future<GameContent> build() async {
    return fetchData();
  }

  Future<GameContent> fetchData() async {
    const String url = 'https://sg-hyp-api.hoyoverse.com/hyp/hyp-connect/api/getGameContent?launcher_id=VYTpXlbWo8&game_id=gopR6Cufr3&language=ja-jp';
    
    final http.Response response = await http.get(Uri.parse(url));

    final data = json.decode(utf8.decode(response.body.runes.toList()));

    if (data['retcode'] == 0) {
      return GameContent.fromJson(data['data']['content']);
    } else {
      throw data['msg'];
    }
  }

  Future<void> refresh() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async => await fetchData());
  }
}
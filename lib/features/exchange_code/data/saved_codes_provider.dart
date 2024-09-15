import 'dart:convert';

import 'package:lumine/core/provider/hoyolab_api.dart';
import 'package:lumine/core/provider/shared_preferences.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'saved_codes_provider.g.dart';

@Riverpod(keepAlive: true)
class SavedCodesNotifier extends _$SavedCodesNotifier {
  @override
  List<String> build() {
    final result = _load();
    if (result != null) {
      return result;
    }
    return [];
  }

  void remove(int index) {
    state = List<String>.from(state)..removeAt(index);
    ref.watch(sharedPreferencesProvider).setStringList(_prefsKey, state);
  }

  Future<String> apply(String code) async {
    final prefs = ref.watch(sharedPreferencesProvider);
    final api = ref.watch(hoYoLABAPINotifierProvider);

    final data = await api.exchangeCdKey(code);

    Map codeInfo = {
      "code": code,
      "isSuccess": data['retcode'] == 0 ? true : false,
      "message": data['retcode'] == 0 ? data['data']['msg'] : data['message'],
      "date": '${DateTime.now().millisecondsSinceEpoch}'
    };

    final String jsonString = json.encode(codeInfo).toString();

    state = List<String>.from(state)..insert(0, jsonString);

    prefs.setStringList(_prefsKey, state);

    if (data['retcode'] == 0) {
      return data['data']['msg'];
    } else {
      return data['message'];
    }
  }

  List<String>? _load() {
    final prefs = ref.read(sharedPreferencesProvider);
    final value = prefs.getStringList(_prefsKey);
    if (value == null) {
      return null;
    }
    return value;
  }

  static const _prefsKey = 'savedCodes';
}
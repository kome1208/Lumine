import 'dart:convert';

import 'package:lumine/core/provider/shared_preferences.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'account_list_provider.g.dart';

@Riverpod(keepAlive: true)
class AccountListNotifier extends _$AccountListNotifier {
  @override
  List<Map<String, dynamic>> build() {
    final result = _load();
    return result;
  }

  void add(Map<String, dynamic> user) {
    final userJson = json.encode(user);
    final prefs = ref.watch(sharedPreferencesProvider);
    final accounts = prefs.getStringList(_accountsKey) ?? [];

    final newList = List<String>.from([...accounts, userJson]);

    state = newList.map((account) => json.decode(account) as Map<String, dynamic>).toList();

    prefs.setStringList(_accountsKey, newList);
  }

  void remove(String uid) {
    final prefs = ref.watch(sharedPreferencesProvider);
    final accounts = prefs.getStringList(_accountsKey) ?? [];

    final newList = List<String>.from(accounts)..removeWhere((account) => json.decode(account)['uid'] == uid);

    state = newList.map((account) => json.decode(account) as Map<String, dynamic>).toList();

    prefs.setStringList(_accountsKey, newList);
  }

  List<Map<String, dynamic>> _load() {
    final prefs = ref.watch(sharedPreferencesProvider);
    final accounts = prefs.getStringList(_accountsKey) ?? [];

    return accounts.map((account) => json.decode(account) as Map<String, dynamic>).toList();
  }

  static const _accountsKey = 'accounts';
}
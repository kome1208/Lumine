import 'package:collection/collection.dart';
import 'package:lumine/core/provider/account_list_provider.dart';
import 'package:lumine/core/provider/shared_preferences.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'account_provider.g.dart';

@Riverpod(keepAlive: true)
class AccountNotifier extends _$AccountNotifier {
  @override
  Map<String, dynamic>? build() {
    final result = _load();
    return result;
  }

  void change(String uid) {
    final prefs = ref.watch(sharedPreferencesProvider);
    final accounts = ref.watch(accountListNotifierProvider);

    state = accounts.firstWhereOrNull((account) => account['uid'] == uid) ?? accounts.first;

    prefs.setString(_currentIdKey, uid);
  }

  Map<String, dynamic>? _load() {
    final prefs = ref.watch(sharedPreferencesProvider);
    final accounts = ref.watch(accountListNotifierProvider);
    final currentId = prefs.getString(_currentIdKey) ?? '1';
    
    if (accounts.isEmpty) {
      return null;
    }

    return accounts.firstWhereOrNull((account) => account['uid'] == currentId) ?? accounts.first;
  }

  static const _currentIdKey = 'current_account_id';
}
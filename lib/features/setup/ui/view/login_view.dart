import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lumine/core/provider/account_list_provider.dart';
import 'package:lumine/features/settings/ui/view/account_settings_view.dart';

class LoginView extends HookConsumerWidget {
  const LoginView({
    super.key,
    required this.onNext
  });

  final void Function() onNext;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final accounts = ref.watch(accountListNotifierProvider);

    return SafeArea(
      child: Column(
        children: [
          const Expanded(
            child: AccountSettingsView()
          ),
          const Divider(height: 1),
          Padding(
            padding: const EdgeInsets.all(16),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: theme.colorScheme.onPrimary,
                backgroundColor: theme.colorScheme.primary
              ),
              onPressed: accounts.isNotEmpty ? onNext : null,
              child: const Text('始めよう！')
            ),
          ),
        ],
      )
    );
  }
}
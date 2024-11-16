import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lumine/core/provider/shared_preferences.dart';
import 'package:lumine/core/router/router.dart';
import 'package:lumine/features/setup/ui/view/introduction_view.dart';
import 'package:lumine/features/setup/ui/view/login_view.dart';

class SetupView extends HookConsumerWidget {
  const SetupView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageController = usePageController(initialPage: 0);

    void nextPage() {
      pageController.nextPage(
        duration: const Duration(milliseconds: 250),
        curve: Curves.ease,
      );
    }

    return Scaffold(
      body: PageView(
        controller: pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          IntroductionView(onNext: nextPage),
          LoginView(
            onNext: () {
              ref.read(sharedPreferencesProvider).setBool('is_initialized', true);
              const HomeRoute().pushReplacement(context);
            }
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lumine/core/provider/shared_preferences.dart';
import 'package:lumine/features/main_view.dart';
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
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const MainView())
              );
            }
          ),
        ],
      ),
    );
  }
}


// GestureDetector(
//   child: Container(
//     padding: const EdgeInsets.all(10),
//     margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
//     decoration: BoxDecoration(
//       borderRadius: BorderRadius.circular(20),
//       color: Theme.of(context).colorScheme.secondaryContainer
//     ),
//     child: const Text('cookiesでログイン', style: TextStyle(fontSize: 16)),
//   ),
//   onTap: () async {
//     FilePickerResult? result = await FilePicker.platform.pickFiles(
//       type: FileType.custom,
//       allowedExtensions: ['text', 'txt'],
//     );

//     if (result != null) {
//       List<String> cookies = [];

//       File file = File(result.files.single.path!);
      
//       String content = await file.readAsString();
      
//       if (content.isNotEmpty) {
//         final splitedContent = content.split('\n');

//         for (var item in splitedContent) {
//           final cookie = item.trim().split('\t');
//           if (cookie.length > 3) {
//             cookies.add('${cookie[5]}=${cookie[6]}');
//           }
//         }

//         loginWithCookie(cookies);
//       }
//     }
//   }
// )
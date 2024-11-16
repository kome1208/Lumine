import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lumine/core/provider/app_update_provider.dart';
import 'package:lumine/core/provider/package_info.dart';
import 'package:lumine/features/account/account_view.dart';
import 'package:lumine/features/home/home_view.dart';
import 'package:lumine/features/menu/menu_view.dart';
import 'package:lumine/features/menu/ui/view/test_view.dart';
import 'package:lumine/features/announcement/announcement_view.dart';

class MainView extends HookConsumerWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedIndex = useState(0);
    final pageController = usePageController();
    final packageInfo = ref.watch(packageInfoProvider);

    const pageList = [
      HomeView(),
      AccountView(),
      AnnouncementView(),
      MenuView(),
      if (kDebugMode) TestView()
    ];

    return Scaffold(
      body: PageView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: pageList.length,
        controller: pageController,
        onPageChanged: (index) {
          selectedIndex.value = index;
        },
        itemBuilder: (context, index) {
          return pageList[index];
        }
      ),
      bottomNavigationBar: NavigationBar(
        height: 70,
        destinations: [
          const NavigationDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(Icons.home),
            label: 'ホーム',
          ),
          const NavigationDestination(
            icon: Icon(Icons.account_circle_outlined),
            selectedIcon: Icon(Icons.account_circle),
            label: 'アカウント',
          ),
          const NavigationDestination(
            icon: Icon(Icons.announcement_outlined),
            selectedIcon: Icon(Icons.announcement),
            label: '公式情報',
          ),
          NavigationDestination(
            icon: Badge(
              isLabelVisible: ref.watch(appUpdateNotifierProvider).when(
                data: (update) => update.buildNumber > int.parse(packageInfo.buildNumber) ? true : false,
                error: (e, s) => false,
                loading: () => false
              ),
              smallSize: 12,
              child: const Icon(Icons.menu)
            ),
            label: 'メニュー',
          ),
          if (kDebugMode) const NavigationDestination(
            icon: Icon(Icons.bug_report),
            label: 'Test'
          )
        ],
        selectedIndex: selectedIndex.value,
        onDestinationSelected: (index) {
          if (pageController.hasClients) {
            selectedIndex.value = index;
            pageController.jumpToPage(index);
          }
        },
      )
    );
  }
}

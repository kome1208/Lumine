import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lumine/features/account/account_view.dart';
import 'package:lumine/features/home/home_view.dart';
import 'package:lumine/features/menu/menu_view.dart';
import 'package:lumine/features/menu/ui/view/test_view.dart';
import 'package:lumine/features/message/data/unread_count_notifier_provider.dart';
import 'package:lumine/features/message/message_list_view.dart';

class MainView extends HookConsumerWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedIndex = useState(0);
    final pageController = usePageController();
    final unreadCount = ref.watch(unreadCountNotifierProvider);

    const pageList = [
      HomeView(),
      AccountView(),
      MessageListView(),
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
            icon: Icon(Icons.home),
            label: 'ホーム',
          ),
          const NavigationDestination(
            icon: Icon(Icons.account_circle),
            label: 'アカウント',
          ),
          NavigationDestination(
            icon: Badge.count(
              isLabelVisible: unreadCount.valueOrNull?.total == 0 ? false : true,
              count: unreadCount.valueOrNull?.total ?? 0,
              child: const Icon(Icons.notifications),
            ),
            label: 'メッセージ',
          ),
          const NavigationDestination(
            icon: Icon(Icons.menu),
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

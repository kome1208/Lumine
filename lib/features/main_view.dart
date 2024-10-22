import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lumine/core/provider/package_info.dart';
import 'package:lumine/features/account/account_view.dart';
import 'package:lumine/features/home/home_view.dart';
import 'package:lumine/features/menu/menu_view.dart';
import 'package:lumine/features/menu/ui/view/test_view.dart';
import 'package:lumine/features/announcement/announcement_view.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher_string.dart';

class MainView extends HookConsumerWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedIndex = useState(0);
    final pageController = usePageController();

    const pageList = [
      HomeView(),
      AccountView(),
      AnnouncementView(),
      MenuView(),
      if (kDebugMode) TestView()
    ];

    Future<void> checkUpdate() async {
      try {
        final packageInfo = ref.watch(packageInfoProvider);

        final response = await http.get(Uri.parse('https://raw.githubusercontent.com/kome1208/Lumine-Updates/main/updates.json'));

        final data = json.decode(response.body);

        if (data['buildNumber'] > int.parse(packageInfo.buildNumber)) {
          if (!context.mounted) return;
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: const Text('アップデートが利用可能'),
                content: SingleChildScrollView(
                  child: Column(
                    children: [
                      ListTile(
                        title: Text('${packageInfo.version} => ${data['version']}'),
                        subtitle: const Text('より良い体験のためにアプリの更新をすることをおすすめします。'),
                      )
                    ],
                  ),
                ),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text('閉じる')
                  ),
                  TextButton(
                    onPressed: () {
                      launchUrlString(
                        data['url'],
                        mode: LaunchMode.externalApplication
                      );
                    },
                    child: const Text('開く')
                  )
                ],
              );
            },
          );
        }
      } catch (error) {
        if (!context.mounted || kDebugMode) return;
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: const Text('アップデートの確認中にエラーが発生しました。'),
            action: SnackBarAction(
              label: '再試行',
              onPressed: () {
                checkUpdate();
              }
            ),
            showCloseIcon: true,
            behavior: SnackBarBehavior.floating,
          )
        );
      }
    }

    useEffect(() {
      checkUpdate();
      return null;
    }, []);

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
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home),
            label: 'ホーム',
          ),
          NavigationDestination(
            icon: Icon(Icons.account_circle),
            label: 'アカウント',
          ),
          NavigationDestination(
            icon: Icon(Icons.announcement),
            label: '公式情報',
          ),
          NavigationDestination(
            icon: Icon(Icons.menu),
            label: 'メニュー',
          ),
          if (kDebugMode) NavigationDestination(
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

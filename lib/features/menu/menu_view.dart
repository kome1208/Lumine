import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lumine/features/exchange_code/exchange_code_view.dart';
import 'package:lumine/features/calendar/calendar_view.dart';
import 'package:lumine/features/daily_bonus/daily_bonus_view.dart';
import 'package:lumine/features/menu/ui/view/license_view.dart';
import 'package:lumine/features/menu/ui/view/test_view.dart';
import 'package:lumine/features/settings/settings_view.dart';
import 'package:lumine/widgets/divider_with_text.dart';
import 'package:url_launcher/url_launcher_string.dart';

class MenuView extends ConsumerWidget {
  const MenuView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('メニュー')
      ),
      body: ListView(
        children: [
          ListTile(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const DailyBonusView()));
            },
            contentPadding: const EdgeInsets.symmetric(horizontal: 16),
            leading: const Icon(Icons.assignment_turned_in),
            title: const Text('デイリーボーナス'),
            trailing: const Icon(Icons.chevron_right),
          ),
          ListTile(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const ExchangeCodeView()));
            },
            contentPadding: const EdgeInsets.symmetric(horizontal: 16),
            leading: const Icon(Icons.card_giftcard_rounded),
            title: const Text('交換コード'),
            trailing: const Icon(Icons.chevron_right),
          ),
          ListTile(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const CalendarView()));
            },
            contentPadding: const EdgeInsets.symmetric(horizontal: 16),
            leading: const Icon(Icons.calendar_month_rounded),
            title: const Text('カレンダー'),
            trailing: const Icon(Icons.chevron_right),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: DividerWithText(label: '外部リンク'),
          ),
          ListTile(
            onTap: () async {
              await launchUrlString('https://act.hoyolab.com/app/community-game-records-sea/m.html');
            },
            contentPadding: const EdgeInsets.symmetric(horizontal: 16),
            leading: const Icon(Icons.account_circle),
            title: const Text('アカウント(HoYoLAB)'),
            trailing: const Icon(Icons.open_in_new),
          ),
          ListTile(
            onTap: () async {
              await launchUrlString('https://act.hoyolab.com/ys/app/interactive-map/index.html');
            },
            contentPadding: const EdgeInsets.symmetric(horizontal: 16),
            leading: const Icon(Icons.explore),
            title: const Text('テイワットマップ'),
            trailing: const Icon(Icons.open_in_new),
          ),
          ListTile(
            onTap: () async {
              await launchUrlString('https://wiki.hoyolab.com/');
            },
            contentPadding: const EdgeInsets.symmetric(horizontal: 16),
            leading: const Icon(Icons.description),
            title: const Text('HoYoWiki'),
            trailing: const Icon(Icons.open_in_new),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: DividerWithText(label: 'Lumine'),
          ),
          ListTile(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const SettingsView()));
            },
            contentPadding: const EdgeInsets.symmetric(horizontal: 16),
            leading: const Icon(Icons.settings),
            title: const Text('設定'),
            trailing: const Icon(Icons.chevron_right),
          ),
          ListTile(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const LicenseView()));
            },
            contentPadding: const EdgeInsets.symmetric(horizontal: 16),
            leading: const Icon(Icons.info_outline),
            title: const Text('ライセンス'),
            trailing: const Icon(Icons.chevron_right),
          ),
          if (kDebugMode)
          ListTile(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const TestView()));
            },
            contentPadding: const EdgeInsets.symmetric(horizontal: 16),
            leading: const Icon(Icons.grass),
            title: const Text('テスト'),
            trailing: const Icon(Icons.chevron_right),
          ),
        ],
      ),
    );
  }
}
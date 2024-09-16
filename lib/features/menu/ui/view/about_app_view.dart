import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lumine/core/provider/package_info.dart';
import 'package:lumine/features/menu/ui/view/license_view.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:http/http.dart' as http;

class AboutAppView extends HookConsumerWidget {
  const AboutAppView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final checkingUpdate = useState(false);

    Future<void> checkUpdate() async {
      checkingUpdate.value = true;
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
        if (!context.mounted) return;
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
      } finally {
        checkingUpdate.value = false;
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('アプリについて'),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.source),
            title: const Text('ソースコード'),
            subtitle: const Text('https://github.com/kome1208/Lumine'),
            trailing: const Icon(Icons.open_in_new),
            onTap: () => launchUrlString('https://github.com/kome1208/Lumine'),
          ),
          ListTile(
            leading: const Icon(Icons.account_circle),
            title: const Text('Twitter(X)'),
            subtitle: const Text('https://twitter.com/ZS590KS'),
            trailing: const Icon(Icons.open_in_new),
            onTap: () => launchUrlString('https://twitter.com/ZS590KS'),
          ),
          ListTile(
            leading: const Icon(Icons.info_outline),
            title: const Text('ライセンス'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const LicenseView())),
          ),
          ListTile(
            leading: const Icon(Icons.system_update),
            title: const Text('アップデートを確認'),
            trailing: checkingUpdate.value ?
            const CircularProgressIndicator() :
            null,
            onTap: () => checkUpdate()
          ),
        ],
      ),
    );
  }
}
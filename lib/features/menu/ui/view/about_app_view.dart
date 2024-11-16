import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lumine/core/provider/app_update_provider.dart';
import 'package:lumine/core/provider/package_info.dart';
import 'package:lumine/features/menu/ui/view/license_view.dart';
import 'package:url_launcher/url_launcher_string.dart';

class AboutAppView extends HookConsumerWidget {
  const AboutAppView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appUpdate = ref.watch(appUpdateNotifierProvider);
    final packageInfo = ref.watch(packageInfoProvider);

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
            contentPadding: const EdgeInsets.symmetric(horizontal: 16),
            leading: const Icon(Icons.system_update),
            title: const Text('アップデートを確認'),
            subtitle: appUpdate.when(
              data: (update) {
                if (update.buildNumber > int.parse(packageInfo.buildNumber)) {
                  return Text('${update.version}が利用可能 (タップでダウンロード)');
                }
                return Text('更新はありません (${packageInfo.version})');
              },
              error: (e, s) => const Text('確認中にエラーが発生しました (タップでリロード)'),
              loading: () => const Text('アップデートを確認中...')
            ),
            trailing: appUpdate.when(
              data: (_) => IconButton(
                onPressed: () {
                  ref.read(appUpdateNotifierProvider.notifier).refresh();
                },
                icon: const Icon(Icons.refresh)
              ),
              error: (e, s) => IconButton(
                onPressed: () {
                  ref.read(appUpdateNotifierProvider.notifier).refresh();
                },
                icon: const Icon(Icons.refresh)
              ),
              loading: () => const CircularProgressIndicator()
            ),
            onTap: appUpdate.when(
              data: (update) => () => launchUrlString(update.url),
              error: (e, s) => () => ref.read(appUpdateNotifierProvider.notifier).refresh(),
              loading: () => null
            )
          ),
        ],
      ),
    );
  }
}
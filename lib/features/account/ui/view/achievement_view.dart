import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lumine/features/account/data/achievement_provider.dart';

class AchievementView extends HookConsumerWidget {
  const AchievementView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final achievement = ref.watch(achievementNotifierProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('アチーブメント'),
      ),
      body: achievement.when(
        data: (achievementData) {
          return RefreshIndicator(
            onRefresh: () async {
              ref.read(achievementNotifierProvider.notifier).refresh();
            },
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text('合計アチーブメント数: ${achievementData.achievementNum}'),
                ),
                ...achievementData.list.map((achieve) =>
                  ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                    leading: SizedBox.square(
                      dimension: 56,
                      child: CachedNetworkImage(
                        imageUrl: achieve.icon
                      ),
                    ),
                    title: Text(achieve.name),
                    subtitle: achieve.showPercent ?
                    LinearProgressIndicator(
                      value: achieve.percentage / 100,
                      backgroundColor: Theme.of(context).colorScheme.onSecondary,
                      borderRadius: BorderRadius.circular(4),
                    ) :
                    null,
                    trailing: Text(
                      achieve.showPercent ? '${achieve.percentage}%' : '${achieve.finishNum}個達成済み',
                      style: const TextStyle(
                        fontSize: 16
                      )
                    )
                  )
                )
              ],
            ),
          );
        },
        error: (error, stackTrace) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/icons/error_icon.png'),
                Text(error.toString()),
                TextButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: const Text('エラー詳細'),
                          content: SingleChildScrollView(child: Text(stackTrace.toString())),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Clipboard.setData(ClipboardData(text: stackTrace.toString()));
                                Navigator.pop(context);
                              },
                              child: const Text('コピー')
                            ),
                            TextButton(
                              onPressed: () => Navigator.pop(context),
                              child: const Text('閉じる')
                            )
                          ],
                        );
                      },
                    );
                  },
                  child: const Text('エラー詳細')
                ),
                TextButton(
                  onPressed: () {
                    ref.read(achievementNotifierProvider.notifier).refresh();
                  },
                  child: const Text('再試行')
                )
              ],
            ),
          );
        },
        loading: () => const Center(child: CircularProgressIndicator())
      )
    );
  }
}
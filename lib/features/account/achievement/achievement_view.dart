import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lumine/features/account/achievement/data/achievement_provider.dart';
import 'package:lumine/widgets/error_view.dart';

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
                ErrorView(
                  error: error,
                  stackTrace: stackTrace,
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
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lumine/features/account/spiral_abyss/data/spiral_abyss_provider.dart';
import 'package:lumine/utils/date_formatter.dart';
import 'package:lumine/widgets/my_card.dart';
import 'package:waterfall_flow/waterfall_flow.dart';

class SpiralAbyssView extends HookConsumerWidget {
  const SpiralAbyssView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('深境螺旋'),
          bottom: const TabBar(
            tabs: <Tab>[
              Tab(text: '今期'),
              Tab(text: '前期')
            ]
          ),
        ),
        body: const TabBarView(
          children: [
            _TabContent(scheduleType: 1),
            _TabContent(scheduleType: 2),
          ],
        )
      ),
    );
  }
}

class _TabContent extends HookConsumerWidget {
  const _TabContent({
    required this.scheduleType
  });

  final int scheduleType;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useAutomaticKeepAlive(wantKeepAlive: true);
    final spiralAbyss = ref.watch(spiralAbyssNotifierProvider(scheduleType));

    return spiralAbyss.when(
      data: (spiralAbyssData) {
        if (spiralAbyssData.totalBattleTimes <= 0) {
          return const Center(child: Text('戦績データがありません'));
        }
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text('統計周期: ${DateFormatter.formatDate(int.parse(spiralAbyssData.startTime) * 1000, 'yyyy.MM.dd')}-${DateFormatter.formatDate(int.parse(spiralAbyssData.endTime) * 1000, 'yyyy.MM.dd')}'),
            ),
            Expanded(
              child: ListView(
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Text('挑戦履歴'),
                  ),
                  MyCard(
                    margin: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      children: [
                        ListTile(
                          contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                          title: const Text('最高記録'),
                          trailing: Text(
                            spiralAbyssData.maxFloor,
                            style: const TextStyle(
                              fontSize: 16
                            )
                          ),
                        ),
                        ListTile(
                          contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                          title: const Text('獲得した星'),
                          trailing: Text(
                            '${spiralAbyssData.totalStar}',
                            style: const TextStyle(
                              fontSize: 16
                            )
                          ),
                        ),
                        ListTile(
                          contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                          title: const Text('挑戦回数'),
                          trailing: Text(
                            '${spiralAbyssData.totalBattleTimes}',
                            style: const TextStyle(
                              fontSize: 16
                            ),
                          ),
                        ),
                        ListTile(
                          contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                          title: const Text('勝利回数'),
                          trailing: Text(
                            '${spiralAbyssData.totalWinTimes}',
                            style: const TextStyle(
                              fontSize: 16
                            )
                          ),
                        ),
                      ]
                    )
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Text('実績一覧'),
                  ),
                  MyCard(
                    margin: const EdgeInsets.symmetric(horizontal: 16),
                    padding: const EdgeInsets.only(bottom: 16),
                    child: Column(
                      children: [
                        ListTile(
                          contentPadding: const EdgeInsets.only(left: 4, right: 16),
                          leading: CachedNetworkImage(
                            imageUrl: spiralAbyssData.defeatRank.first.avatarIcon,
                            width: 56,
                            height: 56,
                          ),
                          title: const Padding(
                            padding: EdgeInsets.only(top: 16),
                            child: Text('最多撃破数'),
                          ),
                          trailing: Padding(
                            padding: const EdgeInsets.only(top: 16),
                            child: Text(
                              '${spiralAbyssData.defeatRank.first.value}',
                              style: const TextStyle(
                                fontSize: 16
                              )
                            ),
                          ),
                        ),
                        ListTile(
                          contentPadding: const EdgeInsets.only(left: 4, right: 16),
                          leading: CachedNetworkImage(
                            imageUrl: spiralAbyssData.damageRank.first.avatarIcon,
                            width: 56,
                            height: 56,
                          ),
                          title: const Padding(
                            padding: EdgeInsets.only(top: 16),
                            child: Text('与えた最大ダメージ'),
                          ),
                          trailing: Padding(
                            padding: const EdgeInsets.only(top: 16),
                            child: Text(
                              '${spiralAbyssData.damageRank.first.value}',
                              style: const TextStyle(
                                fontSize: 16
                              )
                            ),
                          ),
                        ),
                        ListTile(
                          contentPadding: const EdgeInsets.only(left: 4, right: 16),
                          leading: CachedNetworkImage(
                            imageUrl: spiralAbyssData.takeDamageRank.first.avatarIcon,
                            width: 56,
                            height: 56,
                          ),
                          title: const Padding(
                            padding: EdgeInsets.only(top: 16),
                            child: Text('受けた最大ダメージ'),
                          ),
                          trailing: Padding(
                            padding: const EdgeInsets.only(top: 16),
                            child: Text(
                              '${spiralAbyssData.takeDamageRank.first.value}',
                              style: const TextStyle(
                                fontSize: 16
                              )
                            ),
                          ),
                        ),
                        ListTile(
                          contentPadding: const EdgeInsets.only(left: 4, right: 16),
                          leading: CachedNetworkImage(
                            imageUrl: spiralAbyssData.normalSkillRank.first.avatarIcon,
                            width: 56,
                            height: 56,
                          ),
                          title: const Padding(
                            padding: EdgeInsets.only(top: 16),
                            child: Text('元素スキル使用回数'),
                          ),
                          trailing: Padding(
                            padding: const EdgeInsets.only(top: 16),
                            child: Text(
                              '${spiralAbyssData.normalSkillRank.first.value}',
                              style: const TextStyle(
                                fontSize: 16
                              )
                            ),
                          ),
                        ),
                        ListTile(
                          contentPadding: const EdgeInsets.only(left: 4, right: 16),
                          leading: CachedNetworkImage(
                            imageUrl: spiralAbyssData.energySkillRank.first.avatarIcon,
                            width: 56,
                            height: 56,
                          ),
                          title: const Padding(
                            padding: EdgeInsets.only(top: 16),
                            child: Text('元素爆発使用回数'),
                          ),
                          trailing: Padding(
                            padding: const EdgeInsets.only(top: 16),
                            child: Text(
                              '${spiralAbyssData.energySkillRank.first.value}',
                              style: const TextStyle(
                                fontSize: 16
                              )
                            ),
                          ),
                        )
                      ],
                    )
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Text('戦績一覧'),
                  ),
                  MyCard(
                    margin: const EdgeInsets.symmetric(horizontal: 16),
                    clipBehavior: Clip.antiAlias,
                    child: Column(
                      children: spiralAbyssData.floors.map((floor) {
                        return ExpansionTile(
                          tilePadding: const EdgeInsets.symmetric(horizontal: 16),
                          shape: const Border(),
                          title: Text('第${floor.index}層'),
                          children: [
                            ListTile(
                              contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                              leading: Image.asset('assets/tower_star_active.png', width: 32, height: 32),
                              title: const Text('獲得した星'),
                              trailing: Text(
                                '${floor.star}/${floor.maxStar}',
                                style: const TextStyle(
                                  fontSize: 16
                                )
                              ),
                            ),
                            ...floor.levels.map((level) {
                              return Column(
                                children: [
                                  ListTile(
                                    contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                                    title: Text('第${level.index}間'),
                                    subtitle: Text('${DateFormatter.formatDate(int.parse(level.battles.first.timestamp) * 1000, 'yyyy.MM.dd HH:mm:ss')}'),
                                    trailing: Wrap(
                                      direction: Axis.horizontal,
                                      children: List.generate(level.maxStar, (index) =>
                                        Image.asset(
                                          level.star > index ?
                                          'assets/tower_star_active.png' :
                                          'assets/tower_star.png',
                                          width: 24, height: 24
                                        )
                                      )
                                    ),
                                  ),
                                  ...level.battles.map((battle) {
                                    return Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 8, horizontal : 16),
                                      child: Row(
                                        children: [
                                          Text(battle.index == 1 ? '上半' : '下半'),
                                          const SizedBox(width: 8),
                                          Expanded(
                                            child: WaterfallFlow.builder(
                                              shrinkWrap: true,
                                              physics: const NeverScrollableScrollPhysics(),
                                              gridDelegate: const SliverWaterfallFlowDelegateWithFixedCrossAxisCount(
                                                crossAxisCount: 4,
                                                crossAxisSpacing: 8,
                                              ),
                                              itemCount: battle.avatars.length,
                                              itemBuilder: (context, index) {
                                                final avatar = battle.avatars[index];
                                                return Column(
                                                  children: [
                                                    ClipRRect(
                                                      borderRadius: BorderRadius.circular(8),
                                                      child: Stack(
                                                        alignment: Alignment.bottomCenter,
                                                        children: [
                                                          Image.asset('assets/rank_${avatar.rarity}.png'),
                                                          CachedNetworkImage(
                                                            imageUrl: avatar.icon
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Text('Lv.${avatar.level}')
                                                  ],
                                                );
                                              },
                                            )
                                          )
                                        ],
                                      ),
                                    );
                                  })
                                ],
                              );
                            }),
                          ],
                        );
                      }).toList(),
                    ),
                  ),
                ],
              )
            )
          ],
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
            ],
          ),
        );
      },
      loading: () => const Center(child: CircularProgressIndicator())
    );
  }
}
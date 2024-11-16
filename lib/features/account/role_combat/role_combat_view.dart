import 'package:cached_network_image/cached_network_image.dart';
import 'package:collection/collection.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lumine/core/api/model/role_combat_model.dart';
import 'package:lumine/features/account/role_combat/data/char_master_provider.dart';
import 'package:lumine/features/account/role_combat/data/role_combat_provider.dart';
import 'package:lumine/utils/date_formatter.dart';
import 'package:lumine/widgets/my_card.dart';
import 'package:waterfall_flow/waterfall_flow.dart';

final Map<String, dynamic> elementIcons = {
  'Anemo': 'assets/element_icons/anemo.png',
  'Geo': 'assets/element_icons/geo.png',
  'Electro': 'assets/element_icons/electro.png',
  'Dendro': 'assets/element_icons/dendro.png',
  'Hydro': 'assets/element_icons/hydro.png',
  'Pyro': 'assets/element_icons/pyro.png',
  'Cryo': 'assets/element_icons/cryo.png'
};

final Map<String, dynamic> avatarTypes = {
  '2': { 'name': 'お試し', 'color': Colors.red },
  '3': { 'name': 'サポート', 'color': Colors.blue }
};

final Map<String, dynamic> modes = {
  '1': 'イージー',
  '2': 'ノーマル',
  '3': 'ハード',
  '4': 'マスター',
};

final Map<String, dynamic> heraldryIcons = {
  '1': 'assets/role_combat/heraldry_icons/easy.png',
  '2': 'assets/role_combat/heraldry_icons/normal.png',
  '3': 'assets/role_combat/heraldry_icons/hard.png',
  '4': 'assets/role_combat/heraldry_icons/master.png',
};

class RoleCombatView extends HookConsumerWidget {
  const RoleCombatView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('幻想シアター'),
          actions: [
            TextButton(
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  useSafeArea: true,
                  isScrollControlled: true,
                  clipBehavior: Clip.hardEdge,
                  builder: (context) {
                    return SizedBox(
                      height: MediaQuery.of(context).size.height * 0.9,
                      child: _CharMaster()
                    );
                  },
                );
              },
              child: const Text('空想の軌跡'),
            )
          ],
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
    final roleCombat = ref.watch(roleCombatNotifierProvider);

    return roleCombat.when(
      data: (roleCombatData) {
        final data = roleCombatData.data.firstWhereOrNull((data) => data.schedule.scheduleType == scheduleType);

        if (data != null && data.hasData) {
          final stat = data.stat;
          final detail = data.detail;
          final schedule = data.schedule;

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 16),
                child: Text('統計周期: ${DateFormatter.formatDate(int.parse(schedule.startTime) * 1000, 'yyyy.MM.dd')}-${DateFormatter.formatDate(int.parse(schedule.endTime) * 1000, 'yyyy.MM.dd')}'),
              ),
              Expanded(
                child: ListView(
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Text('公演振り返り'),
                    ),
                    MyCard(
                      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                      child: Column(
                        children: [
                          ListTile(
                            contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                            title: const Text('最高記録'),
                            trailing: Wrap(
                              crossAxisAlignment: WrapCrossAlignment.center,
                              children: [
                                Image.asset(heraldryIcons[stat.heraldry.toString()], width: 24),
                                const SizedBox(width: 4),
                                Text('第${stat.maxRoundId}幕(${modes[stat.difficultyId.toString()]})', style: const TextStyle(fontSize: 16, fontWeight: FontWeight.normal))
                              ],
                            ),
                          ),
                          ListTile(
                            contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                            title: const Text('スター挑戦星章'),
                            trailing: Wrap(
                              crossAxisAlignment: WrapCrossAlignment.center,
                              children: stat.getMedalRoundList.map((medal) {
                                return Image.asset(medal == 0 ? 'assets/images/resource/default_medal_icon.png' : 'assets/images/resource/active_medal_icon.png', width: 24);
                              }).toList(),
                            ),
                          ),
                          ListTile(
                            contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                            title: const Text('消費した幻戯の花'),
                            trailing: Wrap(
                              crossAxisAlignment: WrapCrossAlignment.center,
                              children: [
                                Image.asset('assets/images/resource/flower_icon.png', width: 24),
                                const SizedBox(width: 4),
                                Text('${stat.coinNum}', style: const TextStyle(fontSize: 16, fontWeight: FontWeight.normal))
                              ],
                            ),
                          ),
                          ListTile(
                            contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                            title: const Text('観客の応援を引き起こした回数'),
                            trailing: Text('${stat.avatarBonusNum}回', style: const TextStyle(fontSize: 16, fontWeight: FontWeight.normal)),
                          ),
                          ListTile(
                            contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                            title: const Text('サポートキャストが他のプレイヤーを支援した回数'),
                            trailing: Text('${stat.rentCnt}回', style: const TextStyle(fontSize: 16, fontWeight: FontWeight.normal)),
                          ),
                        ],
                      ),
                    ),
                    ListTile(
                      leading: Image.asset(
                        heraldryIcons['${stat.heraldry}'],
                        width: 32,
                      ),
                      title: Text(
                        '${modes['${stat.difficultyId}']}モード',
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      subtitle: Text('公演時間: ${DateFormatter.formatTime(detail.fightStatisic.totalUseTime * 1000)}'),
                    ),
                    if (detail.fightStatisic.maxDamegeAvatar != null || detail.fightStatisic.maxTakeDamageAvatar != null || detail.fightStatisic.maxDefeatAvatar != null || detail.fightStatisic.shortestAvatarList.isNotEmpty) MyCard(
                      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                      child: Column(
                        children: [
                          if (detail.fightStatisic.maxDamegeAvatar != null) ListTile(
                            contentPadding: const EdgeInsets.only(left: 4, right: 16),
                            leading: CachedNetworkImage(
                              imageUrl: detail.fightStatisic.maxDamegeAvatar!.avatarIcon,
                              width: 56,
                              height: 56,
                            ),
                            title: const Padding(
                              padding: EdgeInsets.only(top: 16),
                              child: Text('与えた最大ダメージ'),
                            ),
                            trailing: Padding(
                              padding: const EdgeInsets.only(top: 16),
                              child: Text('${detail.fightStatisic.maxDamegeAvatar?.value}', style: const TextStyle(fontSize: 16, fontWeight: FontWeight.normal)),
                            ),
                          ),
                          if (detail.fightStatisic.maxTakeDamageAvatar != null) ListTile(
                            contentPadding: const EdgeInsets.only(left: 4, right: 16),
                            leading: CachedNetworkImage(
                              imageUrl: detail.fightStatisic.maxTakeDamageAvatar!.avatarIcon,
                              width: 56,
                              height: 56,
                            ),
                            title: const Padding(
                              padding: EdgeInsets.only(top: 16),
                              child: Text('受けた最大ダメージ'),
                            ),
                            trailing: Padding(
                              padding: const EdgeInsets.only(top: 16),
                              child: Text('${detail.fightStatisic.maxTakeDamageAvatar?.value}', style: const TextStyle(fontSize: 16, fontWeight: FontWeight.normal)),
                            ),
                          ),
                          if (detail.fightStatisic.maxDefeatAvatar != null) ListTile(
                            contentPadding: const EdgeInsets.only(left: 4, right: 16),
                            leading: CachedNetworkImage(
                              imageUrl: detail.fightStatisic.maxDefeatAvatar!.avatarIcon,
                              width: 56,
                              height: 56,
                            ),
                            title: const Padding(
                              padding: EdgeInsets.only(top: 16),
                              child: Text('最も多くの敵を倒す'),
                            ),
                            trailing: Padding(
                              padding: const EdgeInsets.only(top: 16),
                              child: Text('${detail.fightStatisic.maxDefeatAvatar?.value}', style: const TextStyle(fontSize: 16, fontWeight: FontWeight.normal)),
                            ),
                          ),
                          if (detail.fightStatisic.shortestAvatarList.isNotEmpty) ListTile(
                            contentPadding: const EdgeInsets.all(16),
                            title: const Text('最も早く公演を完了させたチーム'),
                            subtitle: SizedBox(
                              child: Wrap(
                                children: detail.fightStatisic.shortestAvatarList.map((avatar) =>
                                  Stack(
                                    alignment: Alignment.bottomCenter,
                                    children: [
                                      Container(
                                        width: 40,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          color: Theme.of(context).colorScheme.onSecondary,
                                          borderRadius: BorderRadius.circular(20)
                                        ),
                                      ),
                                      CachedNetworkImage(
                                        imageUrl: avatar.avatarIcon,
                                        width: 56,
                                        height: 56,
                                      )
                                    ],
                                  )
                                ).toList(),
                              )
                            ),
                          )
                        ],
                      )
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Text('出演者リスト'),
                    ),
                    ...detail.roundsData.map((round) {
                      return MyCard(
                        margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            ListTile(
                              contentPadding: EdgeInsets.zero,
                              title: Text('第${round.roundId}幕'),
                              subtitle: Text('${DateFormatter.formatDate(int.parse(round.finishTime) * 1000, 'yyyy.MM.dd HH:mm:ss')}'),
                              trailing: Container(
                                width: 32,
                                padding: const EdgeInsets.all(4),
                                decoration: BoxDecoration(
                                  color: Theme.of(context).colorScheme.onSecondary,
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Image.asset(
                                  round.isGetMedal ?
                                  'assets/images/resource/active_medal_icon.png' :
                                  'assets/images/resource/default_medal_icon.png',
                                ),
                              ),
                            ),
                            WaterfallFlow.builder(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              gridDelegate: const SliverWaterfallFlowDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 4,
                                crossAxisSpacing: 8,
                              ),
                              itemCount: round.avatars.length,
                              itemBuilder: (context, index) {
                                final avatar = round.avatars[index];
                                return Column(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: Stack(
                                        children: [
                                          Image.asset('assets/rank_${avatar.rarity}.png'),
                                          CachedNetworkImage(
                                            imageUrl: avatar.image
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(2),
                                            child: Image.asset(
                                              elementIcons[avatar.element],
                                              width: 18,
                                              height: 18,
                                            )
                                          ),
                                          if (avatar.avatarType != 1) Padding(
                                            padding: const EdgeInsets.all(4),
                                            child: Container(
                                              alignment: Alignment.topRight,
                                              child: Text(
                                                avatarTypes['${avatar.avatarType}']['name'],
                                                style: TextStyle(
                                                  fontSize: 10,
                                                  color: Colors.white,
                                                  backgroundColor: avatarTypes['${avatar.avatarType}']['color'],
                                                ),
                                              )
                                            )
                                          ),
                                        ],
                                      ),
                                    ),
                                    Text('Lv.${avatar.level}')
                                  ],
                                );
                              },
                            ),
                            ListTile(
                              contentPadding: EdgeInsets.zero,
                              title: const Text('敵の詳細'),
                              trailing: const Icon(Icons.chevron_right),
                              onTap: () {
                                showModalBottomSheet(
                                  context: context,
                                  isScrollControlled: true,
                                  useSafeArea: true,
                                  clipBehavior: Clip.hardEdge,
                                  builder: (context) {
                                    return SizedBox(
                                      height: MediaQuery.of(context).size.height * 0.9,
                                      child: _EnemyDetails(roundData: round)
                                    );
                                  }
                                );
                              },
                            ),
                            ListTile(
                              contentPadding: EdgeInsets.zero,
                              title: const Text('公演詳細'),
                              trailing: const Icon(Icons.chevron_right),
                              onTap: () {
                                showModalBottomSheet(
                                  context: context,
                                  isScrollControlled: true,
                                  useSafeArea: true,
                                  clipBehavior: Clip.hardEdge,
                                  builder: (context) {
                                    return SizedBox(
                                      height: MediaQuery.of(context).size.height * 0.9,
                                      child: _PerformanceDetails(roundData: round)
                                    );
                                  }
                                );
                              },
                            ),
                          ]
                        ),
                      );
                    })
                  ],
                ),
              )
            ],
          );
        } else {
          return const Center(child: Text('公演データがありません'));
        }
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
                  ref.read(roleCombatNotifierProvider.notifier).refresh();
                },
                child: const Text('再試行')
              )
            ],
          ),
        );
      },
      loading: () => const Center(child: CircularProgressIndicator())
    );
  }
}

class _CharMaster extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final charMaster = ref.watch(charMasterNotifierProvider);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.close)
        ),
        title: const Text('空想の軌跡'),
      ),
      body: charMaster.when(
        data: (charMasterData) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 16),
                child: Text('クリア: ${charMasterData.list.where((avatar) => avatar.status == 3).length}/${charMasterData.list.length}')
              ),
              Expanded(
                child: WaterfallFlow.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  gridDelegate: const SliverWaterfallFlowDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8
                  ),
                  itemCount: charMasterData.list.length,
                  itemBuilder: (context, index) {
                    final avatar = charMasterData.list[index];

                    return Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Image.asset('assets/char_master/album_bg.png'),
                        Container(
                          clipBehavior: Clip.hardEdge,
                          margin: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(180),
                          ),
                          child: CachedNetworkImage(
                            imageUrl: avatar.icon,
                            color: avatar.status == 1 ? Colors.transparent.withOpacity(0.6) : null,
                            colorBlendMode: BlendMode.dstIn,
                          ),
                        ),
                        Image.asset('assets/char_master/album_front.png'),
                        Positioned(
                          bottom: 28,
                          child: Text(
                            avatar.name,
                            style: const TextStyle(
                              color: Color(0xff997754)
                            ),
                          )
                        ),
                        Positioned(
                          bottom: 48,
                          child: switch (avatar.status) {
                            1 => Image.asset('assets/char_master/lock_icon.png', width: 28),
                            3 => Image.asset('assets/char_master/finish_icon.png', width: 28),
                            _ => Container()
                          }
                        )
                      ],
                    );
                  },
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
                TextButton(
                  onPressed: () {
                    ref.read(charMasterNotifierProvider.notifier).refresh();
                  },
                  child: const Text('再試行')
                )
              ],
            ),
          );
        },
        loading: () => const Center(child: CircularProgressIndicator())
      ),
    );
  }
}

class _EnemyDetails extends HookWidget {
  const _EnemyDetails({
    required this.roundData
  });

  final RoleCombatRoundData roundData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text('敵の詳細')
      ),
      body: ListView.builder(
        itemCount: roundData.enemies.length,
        itemBuilder: (context, index) {
          final enemy = roundData.enemies[index];

          return ListTile(
            leading: SizedBox(
              width: 48,
              height: 48,
              child: CachedNetworkImage(imageUrl: enemy.icon),
            ),
            title: Text(enemy.name),
            subtitle: Text('Lv.${enemy.level}'),
          );
        },
      ),
    );
  }
}

class _PerformanceDetails extends HookWidget {
  const _PerformanceDetails({
    required this.roundData
  });

  final RoleCombatRoundData roundData;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: const Icon(Icons.close),
              onPressed: () => Navigator.pop(context),
            ),
            title: const Text('公演詳細'),
            bottom: const TabBar(
              tabAlignment: TabAlignment.start,
              isScrollable: true,
              dragStartBehavior: DragStartBehavior.start,
              tabs: [
                Tab(
                  text: 'シャイニングブレス',
                ),
                Tab(
                  text: 'ワンダーサポート',
                ),
                Tab(
                  text: 'ミステリーボーナス',
                )
              ]
            ),
          ),
          body: TabBarView(
            children: [
              roundData.splendourBuff.buffs.isNotEmpty ?
              ListView(
                children: [
                  MyCard(
                    margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    padding: const EdgeInsets.all(16),
                    child: HtmlWidget(
                      roundData.splendourBuff.summary.desc.replaceAll(RegExp(r'\\n'), '</br>'),
                      textStyle: const TextStyle(
                        fontSize: 16
                      ),
                    ),
                  ),
                  ...roundData.splendourBuff.buffs
                  .where((buff) => buff.level > 0)
                  .map((buff) =>
                    ExpansionTile(
                      childrenPadding: const EdgeInsets.symmetric(horizontal: 16),
                      shape: const Border.symmetric(horizontal: BorderSide(color: Colors.transparent)),
                      leading: SizedBox(
                        width: 48,
                        height: 48,
                          child: CachedNetworkImage(
                          imageUrl: buff.icon
                        ),
                      ),
                      title: Text(buff.name),
                      subtitle: Text('Lv.${buff.level}'),
                      children: buff.levelEffect.map((effect) =>
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: HtmlWidget('・${effect.desc.replaceAll(RegExp(r'\\n'), '</br>')}'),
                        )
                      ).toList()
                    )
                  )
                ],
              ) :
              const Center(child: Text('シャイニングブレスがありません')),
              roundData.buffs.isNotEmpty ?
              ListView.builder(
                itemCount: roundData.buffs.length,
                itemBuilder: (context, index) {
                  final buff = roundData.buffs[index];

                  return ListTile(
                    shape: const Border.symmetric(horizontal: BorderSide(color: Colors.transparent)),
                    leading: Container(
                      width: 48,
                      height: 48,
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: CachedNetworkImage(imageUrl: buff.icon),
                    ),
                    title: Text(buff.name),
                    subtitle: HtmlWidget(buff.desc.replaceAll(RegExp(r'\\n'), '</br>'))
                  );
                },
              ) :
              const Center(child: Text('ワンダーサポートがありません')),
              roundData.choiceCards.isNotEmpty ?
              ListView.builder(
                itemCount: roundData.choiceCards.length,
                itemBuilder: (context, index) {
                  final card = roundData.choiceCards[index];

                  return ListTile(
                    shape: const Border.symmetric(horizontal: BorderSide(color: Colors.transparent)),
                    leading: Container(
                      width: 48,
                      height: 48,
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: CachedNetworkImage(imageUrl: card.icon),
                    ),
                    title: Text(card.name),
                    subtitle: HtmlWidget(card.desc.replaceAll(RegExp(r'\\n'), '</br>'))
                  );
                },
              ) :
              const Center(child: Text('ミステリーボーナスがありません'))
            ]
          )
        ),
      );
  }
}
import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lumine/core/provider/account_provider.dart';
import 'package:lumine/core/provider/hoyolab_api.dart';
import 'package:lumine/core/router/router.dart';
import 'package:lumine/features/account/character_list/data/game_record_character_list_provider.dart';
import 'package:lumine/features/account/data/game_record.dart';
import 'package:lumine/features/account/character_detail/character_detail_view.dart';
import 'package:lumine/widgets/error_view.dart';
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

class AccountView extends HookConsumerWidget {
  const AccountView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useAutomaticKeepAlive(wantKeepAlive: true);
    
    final account = ref.watch(accountNotifierProvider);
    final gameRecord = ref.watch(gameRecordNotifierProvider);
    final tabController = useTabController(initialLength: 5);

    return Scaffold(
      appBar: AppBar(
        title: const Text('アカウント')
      ),
      body: switch (gameRecord) {
        AsyncData(:final value) =>
        RefreshIndicator(
          notificationPredicate: (notification) {
            if (notification is OverscrollNotification || Platform.isIOS) {
              return notification.depth == 2;
            }
            return notification.depth == 0;
          },
          onRefresh: () async {
            ref.read(gameRecordNotifierProvider.notifier).refresh();
          },
          child: SafeArea(
            top: true,
            child: NestedScrollView(
              headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
                return [
                  SliverToBoxAdapter(
                    child: Column(
                      children: [
                        ListTile(
                          contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                          leading: Container(
                            width: 56,
                            height: 56,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(28),
                              border: Border.all(
                                color: const Color.fromRGBO(236, 229, 216, 1),
                                width: 1
                              ),
                              color: const Color.fromRGBO(189, 152, 125, 1),
                            ),
                            child: CachedNetworkImage(
                              imageUrl: value.role.gameHeadIcon,
                            )
                          ),
                          title: Text('${value.role.nickname} (Lv.${value.role.level})', style: const TextStyle(fontSize: 18)),
                          subtitle: Row(
                            children: [
                              Text('${account!['regionName']} | UID:${account['uid']}'),
                              const SizedBox(width: 4),
                              GestureDetector(
                                onTap: () {
                                  Clipboard.setData(ClipboardData(text: account['uid']));
                                },
                                child: const Icon(Icons.copy, size: 16)
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 16),
                          child: Row(
                            children: [
                              const Text('マイキャラクター'),
                              IconButton(
                                icon: const Icon(Icons.sort),
                                tooltip: '並べ替え',
                                onPressed: () async {
                                  final shouldReload = await showModalBottomSheet(
                                    context: context,
                                    isScrollControlled: true,
                                    useSafeArea: true,
                                    enableDrag: true,
                                    clipBehavior: Clip.hardEdge,
                                    builder: (context) {
                                      return SizedBox(
                                        height: MediaQuery.of(context).size.height * 0.9,
                                        child: const _CharacterSortView()
                                      );
                                    },
                                  );

                                  if (shouldReload == true) {
                                    ref.read(gameRecordNotifierProvider.notifier).refresh();
                                  }
                                },
                              ),
                              const Spacer(),
                              TextButton(
                                child: const Text('全キャラクター'),
                                onPressed: () {
                                  const CharacterListRoute().push(context);
                                }
                              )
                            ]
                          )
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: value.avatars.map((character) {
                              return GestureDetector(
                                child: Container(
                                  margin: const EdgeInsets.only(left: 16),
                                  clipBehavior: Clip.hardEdge,
                                  decoration: BoxDecoration(
                                    color: Theme.of(context).colorScheme.secondaryContainer,
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  width: 100,
                                  child: Column(
                                    children: [
                                      AspectRatio(
                                        aspectRatio: 1,
                                        child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            Image.asset('assets/rank_${character.rarity}.png'),
                                            CachedNetworkImage(
                                              imageUrl: character.image
                                            ),
                                            Positioned(
                                              left: 4,
                                              top: 4,
                                              child: Image.asset(
                                                elementIcons[character.element],
                                                width: 20,
                                                height: 20,
                                              )
                                            ),
                                            if (character.activedConstellationNum != 0) Positioned(
                                              top: 0,
                                              right: 0,
                                              child: Container(
                                                padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 4),
                                                decoration: BoxDecoration(
                                                  borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(12)),
                                                  color: Colors.black.withValues(alpha: 0.5),
                                                ),
                                                child: Text(
                                                  'C${character.activedConstellationNum}',
                                                  style: const TextStyle(color: Colors.white)
                                                )
                                              )
                                            )
                                          ],
                                        ),
                                      ),
                                      Text('Lv.${character.level}')
                                    ],
                                  )
                                ),
                                onTap: () {
                                  showModalBottomSheet(
                                    context: context,
                                    isScrollControlled: true,
                                    useSafeArea: true,
                                    enableDrag: true,
                                    clipBehavior: Clip.hardEdge,
                                    builder: (context) {
                                      return SizedBox(
                                        height: MediaQuery.of(context).size.height * 0.9,
                                        child: CharacterDetailView(id: character.id)
                                      );
                                    },
                                  );
                                },
                              );
                            }).toList(),
                          )
                        ),
                      ],
                    ),
                  ),
                  SliverPersistentHeader(
                    pinned: true,
                    delegate: _StickyTabBarDelegate(
                      TabBar(
                        tabs: const [
                          Tab(text: '一般'),
                          Tab(text: '神の瞳'),
                          Tab(text: '宝箱'),
                          Tab(text: '塵歌壺'),
                          Tab(text: '世界探索')
                        ],
                        labelPadding: const EdgeInsets.symmetric(horizontal: 20),
                        indicatorSize: TabBarIndicatorSize.label,
                        controller: tabController,
                        isScrollable: true,
                        tabAlignment: TabAlignment.center,
                        dragStartBehavior: DragStartBehavior.start,
                      ),
                    )
                  )
                ];
              },
              body: TabBarView(
                controller: tabController,
                children: [
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        ListTile(
                          contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                          title: const Text('活動日数'),
                          trailing: Text(
                            '${value.stats.activeDayNumber}',
                            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.normal)
                          ),
                        ),
                        ListTile(
                          contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                          title: const Text('キャラクター'),
                          trailing: Text(
                            '${value.stats.avatarNumber}',
                            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.normal)
                          ),
                        ),
                        ListTile(
                          contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                          title: const Text('好感度MAXのキャラクター数'),
                          trailing: Text(
                            '${value.stats.fullFetterAvatarNum}',
                            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.normal)
                          ),
                        ),
                        ListTile(
                          contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                          title: const Text('アチーブメント'),
                          trailing: Wrap(
                            alignment: WrapAlignment.end,
                            crossAxisAlignment: WrapCrossAlignment.center,
                            children: [
                              Text(
                                '${value.stats.achievementNumber}',
                                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.normal)
                              ),
                              const Icon(Icons.chevron_right)
                            ],
                          ),
                          onTap: () => const AchievementRoute().push(context),
                        ),
                        ListTile(
                          contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                          title: const Text('ワープポイント'),
                          trailing: Text(
                            '${value.stats.wayPointNumber}',
                            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.normal)
                          ),
                        ),
                        ListTile(
                          contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                          title: const Text('秘境'),
                          trailing: Text(
                            '${value.stats.domainNumber}',
                            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.normal)
                          ),
                        ),
                        ListTile(
                          contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                          title: const Text('深境螺旋'),
                          trailing: Wrap(
                            alignment: WrapAlignment.end,
                            crossAxisAlignment: WrapCrossAlignment.center,
                            children: [
                              Text(
                                value.stats.spiralAbyss,
                                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.normal)
                              ),
                              const Icon(Icons.chevron_right)
                            ],
                          ),
                          onTap: () {
                            const SpiralAbyssRoute().push(context);
                          },
                        ),
                        ListTile(
                          contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                          title: const Text('幻想シアター'),
                          trailing: Wrap(
                            alignment: WrapAlignment.end,
                            crossAxisAlignment: WrapCrossAlignment.center,
                            children: [
                              Text(
                                value.stats.roleCombat.isUnlock ? '第${value.stats.roleCombat.maxRoundId}幕' : '未開放',
                                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.normal)
                              ),
                              value.stats.roleCombat.isUnlock ? const Icon(Icons.chevron_right) : Container()
                            ],
                          ),
                          onTap: value.stats.roleCombat.isUnlock ?
                          () => const RoleCombatRoute().push(context) :
                          null,
                        ),
                        ListTile(
                          contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                          title: const Text('資源データ'),
                          trailing: const Icon(Icons.chevron_right),
                          onTap: () {
                            const ResourceDataRoute().push(context);
                          }
                        ),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        ListTile(
                          contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                          leading: Image.asset(
                            'assets/images/culus/anemo_culus.png',
                            width: 36,
                            height: 36,
                          ),
                          title: const Text('風神の瞳'),
                          trailing: Text(
                            '${value.stats.anemoculusNumber}',
                            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.normal)
                          ),
                        ),
                        ListTile(
                          contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                          leading: Image.asset(
                            'assets/images/culus/geo_culus.png',
                            width: 36,
                            height: 36,
                          ),
                          title: const Text('岩神の瞳'),
                          trailing: Text(
                            '${value.stats.geoculusNumber}',
                            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.normal)
                          ),
                        ),
                        ListTile(
                          contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                          leading: Image.asset(
                            'assets/images/culus/electro_culus.png',
                            width: 36,
                            height: 36,
                          ),
                          title: const Text('雷神の瞳'),
                          trailing: Text(
                            '${value.stats.electroculusNumber}',
                            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.normal)
                          ),
                        ),
                        ListTile(
                          contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                          leading: Image.asset(
                            'assets/images/culus/dendro_culus.png',
                            width: 36,
                            height: 36,
                          ),
                          title: const Text('草神の瞳'),
                          trailing: Text(
                            '${value.stats.dendroculusNumber}',
                            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.normal)
                          ),
                        ),
                        ListTile(
                          contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                          leading: Image.asset(
                            'assets/images/culus/hydro_culus.png',
                            width: 36,
                            height: 36,
                          ),
                          title: const Text('水神の瞳'),
                          trailing: Text(
                            '${value.stats.hydroculusNumber}',
                            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.normal)
                          ),
                        ),
                        ListTile(
                          contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                          leading: Image.asset(
                            'assets/images/culus/pyro_culus.png',
                            width: 36,
                            height: 36,
                          ),
                          title: const Text('炎神の瞳'),
                          trailing: Text(
                            '${value.stats.pyroculusNumber}',
                            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.normal)
                          ),
                        ),
                      ]
                    ),
                  ),
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        ListTile(
                          contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                          leading: Image.asset(
                            'assets/images/chest/luxurious_chest.png',
                            width: 36,
                            height: 36,
                          ),
                          title: const Text('豪華な宝箱'),
                          trailing: Text(
                            '${value.stats.luxuriousChestNumber}',
                            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.normal)
                          ),
                        ),
                        ListTile(
                          contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                          leading: Image.asset(
                            'assets/images/chest/precious_chest.png',
                            width: 36,
                            height: 36,
                          ),
                          title: const Text('貴重な宝箱'),
                          trailing: Text(
                            '${value.stats.preciousChestNumber}',
                            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.normal)
                          ),
                        ),
                        ListTile(
                          contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                          leading: Image.asset(
                            'assets/images/chest/exquisite_chest.png',
                            width: 36,
                            height: 36,
                          ),
                          title: const Text('精巧な宝箱'),
                          trailing: Text(
                            '${value.stats.exquisiteChestNumber}',
                            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.normal)
                          ),
                        ),
                        ListTile(
                          contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                          leading: Image.asset(
                            'assets/images/chest/common_chest.png',
                            width: 36,
                            height: 36,
                          ),
                          title: const Text('普通の宝箱'),
                          trailing: Text(
                            '${value.stats.commonChestNumber}',
                            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.normal)
                          ),
                        ),
                        ListTile(
                          contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                          leading: Image.asset(
                            'assets/images/chest/magic_chest.png',
                            width: 36,
                            height: 36,
                          ),
                          title: const Text('珍奇な宝箱'),
                          trailing: Text(
                            '${value.stats.magicChestNumber}',
                            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.normal)
                          ),
                        ),
                      ]
                    ),
                  ),
                  SingleChildScrollView(
                    child: Column(
                      children: value.homes.map((home) {
                        return ExpansionTile(
                          tilePadding: const EdgeInsets.symmetric(horizontal: 16),
                          shape: const Border(),
                          leading: CachedNetworkImage(
                            imageUrl: home.comfortLevelIcon,
                            width: 36,
                            height: 36
                          ),
                          title: Text(home.comfortLevelName),
                          children: [
                            ListTile(
                              contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                              title: const Text('名前'),
                              trailing: Text(
                                home.name,
                                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.normal)
                              ),
                            ),
                            ListTile(
                              contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                              title: const Text('信頼ランク'),
                              trailing: Text(
                                '${home.level}',
                                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.normal)
                              ),
                            ),
                            ListTile(
                              contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                              title: const Text('最高洞天仙力'),
                              trailing: Text(
                                '${home.comfortNum}',
                                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.normal)
                              ),
                            ),
                            ListTile(
                              contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                              title: const Text('訪問された回数'),
                              trailing: Text(
                                '${home.visitNum}',
                                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.normal)
                              ),
                            ),
                            ListTile(
                              contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                              title: const Text('獲得した調度品'),
                              trailing: Text(
                                '${home.itemNum}',
                                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.normal)
                              ),
                            ),
                          ]
                        );
                      }).toList(),
                    ),
                  ),
                  SingleChildScrollView(
                    child: Column(
                      children: value.worldExploration
                      .where((x) => x.parentId == 0)
                      .map((world) {
                        final parentWorld = value.worldExploration.where((x) => x.parentId == world.id);

                        return ExpansionTile(
                          tilePadding: const EdgeInsets.symmetric(horizontal: 16),
                          shape: const Border(),
                          leading: SizedBox(
                            width: 32,
                            height: 32,
                            child: Stack(
                              children: [
                                CachedNetworkImage(
                                  imageUrl: world.innerIcon,
                                  errorWidget: (context, url, error) => const Icon(Icons.error),
                                ),
                                CachedNetworkImage(
                                  imageUrl: world.icon,
                                  errorWidget: (context, url, error) => const Icon(Icons.error),
                                )
                              ],
                            ),
                          ),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text('探索度:${world.explorationPercentage / 10}%'),
                              LinearProgressIndicator(
                                value: world.explorationPercentage / 1000,
                                backgroundColor: Theme.of(context).colorScheme.onSecondary,
                                borderRadius: BorderRadius.circular(4),
                              )
                            ],
                          ),
                          title: Text(world.name),
                          children: [
                            if (world.sevenStatueLevel > 0)
                            ListTile(
                              contentPadding: const EdgeInsets.only(left: 32, right: 16),
                              leading: SizedBox(
                                width: 32,
                                height: 32,
                                child: Image.asset('assets/icons/world_immortals_level.png')
                              ),
                              title: const Text('七天神像'),
                              subtitle: Text('Lv.${world.sevenStatueLevel}'),
                            ),
                            if (world.level != 0 && world.type == 'Reputation')
                            ListTile(
                            contentPadding: const EdgeInsets.only(left: 32, right: 16),
                              leading: SizedBox(
                                width: 32,
                                height: 32,
                                child: Image.asset('assets/images/icons/world_level.png')
                              ),
                              title: const Text('評判レベル'),
                              subtitle: Text('Lv.${world.level}'),
                            ),
                            ...world.offerings.map((item) {
                              return ListTile(
                                contentPadding: const EdgeInsets.only(left: 32, right: 16),
                                leading: SizedBox(
                                  width: 32,
                                  height: 32,
                                  child: CachedNetworkImage(
                                    imageUrl: item.icon,
                                  )
                                ),
                                title: Text(item.name),
                                subtitle: Text('Lv.${item.level}'),
                              );
                            }),
                            if (world.natanReputaion != null)
                            ListTile(
                              contentPadding: const EdgeInsets.symmetric(horizontal: 32),
                              leading: SizedBox(
                                width: 32,
                                height: 32,
                                child: Image.asset('assets/images/icons/world_level.png')
                              ),
                              title: const Text('部族評判レベル'),
                              onTap: () {
                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      title: const Text('部族評判レベル'),
                                      content: SingleChildScrollView(
                                        child: Column(
                                          children: [
                                            ...world.natanReputaion!.tribalList.map((tribal) =>
                                              ListTile(
                                                contentPadding: EdgeInsets.zero,
                                                leading: SizedBox(
                                                  width: 32,
                                                  height: 32,
                                                  child: CachedNetworkImage(
                                                    imageUrl: tribal.icon,
                                                  ),
                                                ),
                                                title: Text(tribal.name),
                                                subtitle: Text('Lv.${tribal.level}'),
                                                trailing: CachedNetworkImage(
                                                  imageUrl: tribal.image,
                                                  width: 32,
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    );
                                  }
                                );
                              },
                            ),
                            if (world.areaExplorationList.isNotEmpty)
                            ListTile(
                              contentPadding: const EdgeInsets.only(left: 32, right: 16),
                              leading: SizedBox(
                                width: 32,
                                height: 32,
                                child: Image.asset('assets/icons/pin.png')
                              ),
                              title: const Text('地域ごとの探索度'),
                              onTap: () {
                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      title: const Text('探索度'),
                                      content: SingleChildScrollView(
                                        child: Wrap(
                                          children: world.areaExplorationList.map((item) {
                                            return ListTile(
                                              contentPadding: EdgeInsets.zero,
                                              title: Text(item.name),
                                              subtitle: Text('探索度:${item.explorationPercentage / 10}%'),
                                            );
                                          }).toList(),
                                        ),
                                      ),
                                      actions: [
                                        TextButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          child: const Text('閉じる')
                                        )
                                      ],
                                    );
                                  },
                                );
                              }
                            ),
                            if (world.bossList.isNotEmpty)
                            ListTile(
                              contentPadding: const EdgeInsets.only(left: 32, right: 16),
                              leading: SizedBox(
                                width: 32,
                                height: 32,
                                child: Image.asset('assets/icons/monster.png')
                              ),
                              title: const Text('ボス図鑑'),
                              onTap: () {
                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      title: const Text('ボス図鑑'),
                                      content: SingleChildScrollView(
                                        child: Wrap(
                                          children: world.bossList.map((item) {
                                            return ListTile(
                                              contentPadding: EdgeInsets.zero,
                                              title: Text(item.name),
                                              subtitle: Text('討伐回数:${item.killNum}'),
                                            );
                                          }).toList(),
                                        ),
                                      ),
                                      actions: [
                                        TextButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          child: const Text('閉じる')
                                        )
                                      ],
                                    );
                                  },
                                );
                              }
                            ),
                            if (parentWorld.isNotEmpty) ...parentWorld.map((item) {
                              return ListTile(
                                contentPadding: const EdgeInsets.only(left: 32, right: 16),
                                leading: SizedBox(
                                  width: 32,
                                  height: 32,
                                  child: Stack(
                                    children: [
                                      CachedNetworkImage(
                                        imageUrl: world.innerIcon,
                                      ),
                                      CachedNetworkImage(
                                        imageUrl: world.icon
                                      )
                                    ],
                                  ),
                                ),
                                title: Text(item.name),
                                subtitle: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text('探索度:${item.explorationPercentage / 10}%'),
                                    LinearProgressIndicator(
                                      value: item.explorationPercentage / 1000,
                                      backgroundColor: Theme.of(context).colorScheme.onSecondary,
                                      borderRadius: BorderRadius.circular(4),
                                    )
                                  ],
                                ),
                              );
                            }),
                          ],
                        );
                      })
                      .toList()
                      .reversed
                      .toList(),
                    ),
                  )
                ],
              )
            )
          )
        ),
        AsyncError(:final error, :final stackTrace) => Center(
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
                  ref.read(gameRecordNotifierProvider.notifier).refresh();
                },
                child: const Text('再試行')
              )
            ],
          ),
        ),
        _ => const Center(child: CircularProgressIndicator())
      }
    );
  }
}

class _StickyTabBarDelegate extends SliverPersistentHeaderDelegate {
  const _StickyTabBarDelegate(this.tabBar);

  final TabBar tabBar;

  @override
  double get minExtent => tabBar.preferredSize.height;

  @override
  double get maxExtent => tabBar.preferredSize.height;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return ColoredBox(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: tabBar,
    );
  }

  @override
  bool shouldRebuild(_StickyTabBarDelegate oldDelegate) {
    return tabBar != oldDelegate.tabBar;
  }
}

class _CharacterSortView extends HookConsumerWidget {
  const _CharacterSortView();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final addedCharacters = useState<List<int>>([]);
    final api = ref.watch(hoYoLABAPINotifierProvider);
    final characterList = ref.watch(gameRecordCharacterListNotifierProvider(1, null, null));
    final characterListNotifier = ref.read(gameRecordCharacterListNotifierProvider(1, null, null).notifier);
    final theme = Theme.of(context);

    useEffect(() {
      if (characterList is AsyncData) {
        addedCharacters.value = characterList.value!.list
        .where((character) => character.isChosen)
        .map((character) => character.id)
        .toList();
      }
      return null;
    }, [characterList]);

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text('キャラクター管理'),
        actions: [
          TextButton(
            child: const Text('クリア'),
            onPressed: () {
              addedCharacters.value = [];
            },
          ),
          TextButton(
            child: const Text('完了'),
            onPressed: () {
              api.setTopCharacters(addedCharacters.value);
              Navigator.pop(context, true);
            },
          )
        ],
      ),
      body: characterList.when(
        data: (characterListData) {
          return WaterfallFlow.builder(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            shrinkWrap: true,
            itemCount: characterListData.list.length,
            gridDelegate: const SliverWaterfallFlowDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
            ),
            itemBuilder: (context, index) {
              final character = characterListData.list[index];
              return GestureDetector(
                onTap: () {
                  if (!addedCharacters.value.contains(character.id) && addedCharacters.value.length < 12) {
                    addedCharacters.value = List.from(addedCharacters.value)..add(character.id);
                  } else {
                    addedCharacters.value = List.from(addedCharacters.value)..remove(character.id);
                  }
                },
                child: Opacity(
                  opacity: addedCharacters.value.length >= 12 && !addedCharacters.value.contains(character.id) ? 0.5 : 1,
                  child: GridTile(
                    child: Column(
                      children: [
                        Container(
                          clipBehavior: Clip.hardEdge,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: theme.colorScheme.secondaryContainer,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Stack(
                                children: [
                                  Image.asset('assets/rank_${character.rarity}.png'),
                                  CachedNetworkImage(
                                    imageUrl: character.icon
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(4),
                                    child: Image.asset(
                                      elementIcons[character.element],
                                      width: 20,
                                      height: 20,
                                    )
                                  ),
                                  Positioned(
                                    top: 0,
                                    right: 0,
                                    child: Container(
                                      margin: const EdgeInsets.all(4),
                                      width: 20,
                                      height: 20,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(color: Colors.grey, width: 1),
                                        color: addedCharacters.value.contains(character.id) ? Colors.black : Colors.black.withValues(alpha: 0.5),
                                      ),
                                      alignment: Alignment.center,
                                      child: addedCharacters.value.contains(character.id) ? Text('${addedCharacters.value.indexOf(character.id) + 1}') : null
                                    )
                                  )
                                ],
                              ),
                              Text('Lv.${character.level}')
                            ],
                          ),
                        ),
                        Text(character.name, maxLines: 1, overflow: TextOverflow.ellipsis)
                      ],
                    ),
                  )
                ),
              );
            },
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
                    characterListNotifier.refresh();
                  },
                  child: const Text('再試行')
                )
              ],
            ),
          );
        },
        loading: () {
          return const Center(child: CircularProgressIndicator());
        }
      ),
    );
  }
}
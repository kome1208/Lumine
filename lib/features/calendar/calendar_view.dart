import 'dart:convert';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lumine/core/api/model/act_calendar_model.dart';
import 'package:lumine/core/api/model/calendar_model.dart';
import 'package:lumine/features/calendar/data/act_calendar_provider.dart';
import 'package:lumine/features/calendar/data/calendar_provider.dart';
import 'package:lumine/features/calendar/data/hover_data_provider.dart';
import 'package:lumine/utils/date_formatter.dart';
import 'package:lumine/widgets/my_card.dart';
import 'package:html/parser.dart' as html_parser;
import 'package:url_launcher/url_launcher_string.dart';
import 'package:waterfall_flow/waterfall_flow.dart';

final Map gradientColors = {
  '1': const [
    Color(0xff6a6d74),
    Color(0xff868586),
  ],
  '2': const [
    Color(0xff4b6c67),
    Color(0xff519072),
  ],
  '3': const [
    Color(0xff567496),
    Color(0xff5392b8),
  ],
  '4': const [
    Color(0xff5e5789),
    Color(0xff9c75b7),
  ],
  '5': const [
    Color(0xff945c2c),
    Color(0xffb27330),
  ],
};

final Map<String, dynamic> elementIcons = {
  'Anemo': 'assets/element_icons/anemo.png',
  'Geo': 'assets/element_icons/geo.png',
  'Electro': 'assets/element_icons/electro.png',
  'Dendro': 'assets/element_icons/dendro.png',
  'Hydro': 'assets/element_icons/hydro.png',
  'Pyro': 'assets/element_icons/pyro.png',
  'Cryo': 'assets/element_icons/cryo.png'
};

class CalendarView extends HookConsumerWidget {
  const CalendarView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('カレンダー'),
          bottom: const TabBar(
            tabs: [
              Tab(
                text: 'イベント',
              ),
              Tab(
                text: '天賦育成',
              ),
              Tab(
                text: '武器突破',
              ),
            ],
          ),
        ),
        body: TabBarView(
          physics: const NeverScrollableScrollPhysics(),
          children: [
            const _EventTabView(),
            _MaterialTabView(
              breakType: BreakType.talentLevelUp,
              initialIndex: DateTime.now().weekday - 1,
            ),
            _MaterialTabView(
              breakType: BreakType.weaponAscension,
              initialIndex: DateTime.now().weekday - 1,
            ),
          ],
        ),
      )
    );
  }
}

class _EventTabView extends HookConsumerWidget {
  const _EventTabView();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useAutomaticKeepAlive(wantKeepAlive: true);
    final actCalendar = ref.watch(actCalendarNotifierProvider);
    final actCalendarNotifier = ref.read(actCalendarNotifierProvider.notifier);

    return actCalendar.when(
      data: (actCalendarData) {
        return RefreshIndicator(
          onRefresh: () async {
            actCalendarNotifier.refresh();
          },
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(
                    top: 8,
                    left: 16,
                    right: 16,
                  ),
                  child: Text('イベント祈願')
                ),
                ...actCalendarData.avatarCardPoolList.map((avatarCard) =>
                  MyCard(
                    margin: const EdgeInsets.symmetric(
                      vertical: 8,
                      horizontal: 16
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListTile(
                          contentPadding: EdgeInsets.zero,
                          title: Text(avatarCard.poolName),
                          subtitle: Text('残り時間: ${DateFormatter.formatTime(avatarCard.countdownSeconds * 1000, showSeconds: false)}'),
                          trailing: RawChip(label: Text(avatarCard.versionName)),
                        ),
                        GridView.builder(
                          padding: const EdgeInsets.only(bottom: 16),
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 5,
                            childAspectRatio: 1,
                            crossAxisSpacing: 8,
                            mainAxisSpacing: 8
                          ),
                          itemCount: avatarCard.avatars.length,
                          itemBuilder: (context, index) {
                            final avatar = avatarCard.avatars[index];
                            return Tooltip(
                              message: avatar.name,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Stack(
                                  children: [
                                    Image.asset('assets/rank_${avatar.rarity}.png'),
                                    CachedNetworkImage(
                                      imageUrl: avatar.icon
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4),
                                      child: Image.asset(
                                        elementIcons[avatar.element],
                                        width: 14,
                                        height: 14,
                                      )
                                    ),
                                  ]
                                )
                              )
                            );
                          },
                        )
                      ]
                    )
                  )
                ),
                ...actCalendarData.weaponCardPoolList.map((weaponCard) =>
                  MyCard(
                    margin: const EdgeInsets.symmetric(
                      vertical: 8,
                      horizontal: 16
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListTile(
                          contentPadding: EdgeInsets.zero,
                          title: Text(weaponCard.poolName),
                          subtitle: Text('残り時間: ${DateFormatter.formatTime(weaponCard.countdownSeconds * 1000, showSeconds: false)}'),
                          trailing: RawChip(label: Text(weaponCard.versionName)),
                        ),
                        GridView.builder(
                          padding: const EdgeInsets.only(bottom: 16),
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 5,
                            childAspectRatio: 1,
                            crossAxisSpacing: 8,
                            mainAxisSpacing: 8
                          ),
                          itemCount: weaponCard.weapon.length,
                          itemBuilder: (context, index) {
                            final weapon = weaponCard.weapon[index];
                            return Tooltip(
                              message: weapon.name,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Stack(
                                  children: [
                                    Image.asset('assets/rank_${weapon.rarity}.png'),
                                    CachedNetworkImage(
                                      imageUrl: weapon.icon
                                    ),
                                  ]
                                )
                              )
                            );
                          },
                        )
                      ]
                    )
                  )
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text('イベント一覧')
                ),
                ...actCalendarData.actList.map((act) =>
                  MyCard(
                    margin: const EdgeInsets.symmetric(
                      vertical: 8,
                      horizontal: 16
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: AspectRatio(
                        aspectRatio: 1,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.onSecondary,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              CachedNetworkImage(imageUrl: act.rewardList.firstWhere((reward) => reward.homepageShow).icon),
                              Text(
                                'x${act.rewardList.firstWhere((reward) => reward.homepageShow).num}',
                                style: TextStyle(
                                  backgroundColor: Colors.black.withOpacity(0.8)
                                )
                              ),
                            ]
                          )
                        )
                      ),
                      title: Text(act.name),
                      subtitle: Text('残り時間: ${DateFormatter.formatTime(act.countdownSeconds * 1000, showSeconds: false)}'),
                      trailing: Wrap(
                        children: [
                          Text(
                            switch (act.status) {
                              PoolStatus.onGoing => switch (act.type) {
                                ActType.explore => '${act.exploreDetail!.explorePercent}%',
                                ActType.liBen => '${act.libenDetail!.progress}/${act.libenDetail!.total}',
                                _ => '進行中'
                              },
                              PoolStatus.ended => '終了',
                              PoolStatus.beforeStart => '未開放',
                            },
                            style: const TextStyle(
                              fontSize: 16
                            )
                          ),
                          const Icon(Icons.chevron_right)
                        ]
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
                              child: _EventDetail(actItem: act)
                            );
                          },
                        );
                      }
                    )
                  )
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text('常設イベント一覧')
                ),
                ...actCalendarData.fixedActList.map((act) =>
                  MyCard(
                    margin: const EdgeInsets.symmetric(
                      vertical: 8,
                      horizontal: 16
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: AspectRatio(
                        aspectRatio: 1,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.onSecondary,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              CachedNetworkImage(imageUrl: act.rewardList.firstWhere((reward) => reward.homepageShow).icon),
                              Text(
                                'x${act.rewardList.firstWhere((reward) => reward.homepageShow).num}',
                                style: TextStyle(
                                  backgroundColor: Colors.black.withOpacity(0.8)
                                )
                              ),
                            ]
                          )
                        )
                      ),
                      title: Text(act.name),
                      subtitle: Text('残り時間: ${DateFormatter.formatTime(act.countdownSeconds * 1000, showSeconds: false)}'),
                      trailing: Wrap(
                        children: [
                          Text(
                            switch (act.status) {
                              PoolStatus.onGoing => switch (act.type) {
                                ActType.tower => act.towerDetail!.isUnlock ? '${act.towerDetail!.maxStar}/${act.towerDetail!.totalStar}' : '未開放',
                                ActType.roleCombat => act.roleCombatDetail!.isUnlock ? '第${act.roleCombatDetail!.maxRoundId}幕' : '未開放',
                                _ => '進行中'
                              },
                              PoolStatus.ended => '終了',
                              PoolStatus.beforeStart => '未開放',
                            },
                            style: const TextStyle(
                              fontSize: 16
                            )
                          ),
                          const Icon(Icons.chevron_right)
                        ]
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
                              child: _EventDetail(actItem: act)
                            );
                          },
                        );
                      }
                    )
                  )
                ),
              ],
            ),
          )
        );
      },
      error: (error, stackTrace) {
        return Column(
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
                actCalendarNotifier.refresh();
              },
              child: const Text('再試行')
            )
          ],
        );
      },
      loading: () => const Center(child: CircularProgressIndicator())
    );
  }
}

final Map filterValues = {
  '1': [
    'character_vision',
    'character_weapon',
    'character_property',
    'character_region',
    'character_rarity'
  ],
  '2': [
    'weapon_type',
    'weapon_property',
    'weapon_rarity'
  ]
};

class _MaterialTabView extends HookConsumerWidget {
  const _MaterialTabView({
    required this.initialIndex,
    required this.breakType,
  });

  final int initialIndex;
  final BreakType breakType;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useAutomaticKeepAlive(wantKeepAlive: true);
    final tabController = useTabController(initialLength: 7, initialIndex: initialIndex);
    final calendar = ref.watch(calendarNotifierProvider);
    final calendarNotifier = ref.read(calendarNotifierProvider.notifier);

    return calendar.when(
      data: (calendarData) {
        final material = calendarData.calendar.where((item) => item.breakType == breakType).toList();

        return Column(
          children: [
            TabBar.secondary(
              controller: tabController,
              tabs: const [
                Tab(text: '月'),
                Tab(text: '火'),
                Tab(text: '水'),
                Tab(text: '木'),
                Tab(text: '金'),
                Tab(text: '土'),
                Tab(text: '日'),
              ]
            ),
            Expanded(
              child: TabBarView(
                controller: tabController,
                physics: const NeverScrollableScrollPhysics(),
                children: List.generate(7, (index) =>
                  SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ...material
                        .where((item) => item.dropDay.contains(index))
                        .map((item) =>
                          MyCard(
                            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                            padding: const EdgeInsets.all(16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 4),
                                  child: Text(
                                    item.obtainMethod,
                                    style: const TextStyle(
                                      fontSize: 16
                                    ),
                                  ),
                                ),
                                GridView(
                                  shrinkWrap: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 5,
                                    childAspectRatio: 1,
                                    crossAxisSpacing: 8,
                                    mainAxisSpacing: 8
                                  ),
                                  children: item.materialAbstracts.map((material) =>
                                    Tooltip(
                                      message: material.name,
                                      child: Container(
                                        clipBehavior: Clip.hardEdge,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(8),
                                        ),
                                        child: CachedNetworkImage(
                                          imageUrl: material.iconUrl
                                        ),
                                      )
                                    )
                                  ).toList(),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 4),
                                  child: Text(
                                    '該当${breakType == BreakType.talentLevelUp ? 'キャラクター' : '武器'}',
                                    style: const TextStyle(
                                      fontSize: 16
                                    ),
                                  ),
                                ),
                                GridView(
                                  shrinkWrap: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 5,
                                    childAspectRatio: 1,
                                    crossAxisSpacing: 8,
                                    mainAxisSpacing: 8
                                  ),
                                  children: item.characterAbstracts.map((character) =>
                                    GestureDetector(
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
                                              child: _CharacterDetail(
                                                pageId: character.entryPageId,
                                                breakType: breakType
                                              )
                                            );
                                          },
                                        );
                                      },
                                      child: Container(
                                        clipBehavior: Clip.hardEdge,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(8),
                                        ),
                                        child: Stack(
                                          children: [
                                            Image.asset(
                                              'assets/rank_bg/${switch (breakType) {
                                                BreakType.talentLevelUp => character.filterValues.characterRarity!.valueTypes[0].enumString,
                                                BreakType.weaponAscension => character.filterValues.weaponRarity!.valueTypes[0].enumString
                                              }}.png'
                                            ),
                                            CachedNetworkImage(
                                              imageUrl: character.iconUrl
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ).toList(),
                                ),
                              ],
                            ),
                          )
                        )
                      ],
                    )
                  )
                ),
              )
            )
          ]
        );
      },
      error: (error, stackTrace) => Column(
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
              calendarNotifier.refresh();
            },
            child: const Text('再試行')
          )
        ],
      ),
      loading: () => const Center(child: CircularProgressIndicator())
    );
  }
}

class _CharacterDetail extends HookConsumerWidget {
  const _CharacterDetail({
    required this.pageId,
    required this.breakType,
  });

  final String pageId;
  final BreakType breakType;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final hover = ref.watch(hoverDataNotifierProvider(pageId));
    final hoverNotifier = ref.read(hoverDataNotifierProvider(pageId).notifier);

    return hover.when(
      data: (hoverData) {
        final epSummary = hoverData.epSummary;
        final extendsData = hoverData.extendsData;
        final rarity = breakType == BreakType.talentLevelUp ? epSummary.filterValues.characterRarity : epSummary.filterValues.weaponRarity;

        return SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(top: 8, right: 16, left: 16),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: gradientColors[rarity!.valueTypes[0].enumString],
                    tileMode: TileMode.clamp,
                  ),
                ),
                child: Column(
                  children: [
                    Text(
                      epSummary.name,
                      style: const TextStyle(
                        fontSize: 20,
                      )
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                html_parser.parse(epSummary.desc).body!.text,
                                maxLines: 4,
                                overflow: TextOverflow.ellipsis,
                              ),
                              const SizedBox(height: 4),
                              Row(
                                children: List.generate(int.parse(rarity.valueTypes[0].enumString), (i) =>  Image.asset('assets/star.png', width: 20, height: 20))
                              )
                            ],
                          )
                        ),
                        CachedNetworkImage(
                          imageUrl: epSummary.iconUrl,
                          width: 120,
                          height: 120
                        ),
                      ],
                    )
                  ],
                )
              ),
              const SizedBox(height: 8),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                child: Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: [
                    for (var filter in filterValues[breakType.breakType.toString()])
                    ...epSummary.filterValues.toJson()[filter].values.map((vision) =>
                      RawChip(
                        label: Text(vision),
                      )
                    )
                  ]
                ),
              ),
              for (var item in extendsData)
              ...[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Text(item.title),
                ),
                if (item.text.ascensionWeaponAttrData != null && item.text.ascensionWeaponAttrHeader != null)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Table(
                    border: TableBorder.all(color: Theme.of(context).colorScheme.outline),
                    children: [
                      TableRow(
                        children: [
                          const TableCell(
                            child: SizedBox()
                          ),
                          ...jsonDecode(item.text.ascensionWeaponAttrHeader!).map((header) =>
                            TableCell(
                              verticalAlignment: TableCellVerticalAlignment.middle,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(vertical: 8),
                                child: Center(
                                  child: Text(
                                    header,
                                    style: const TextStyle(
                                      fontSize: 16,
                                    ),
                                    textAlign: TextAlign.center,
                                  )
                                )
                              )
                            )
                          )
                        ]
                      ),
                      ...(jsonDecode(item.text.ascensionWeaponAttrData!) as List).map((data) =>
                        TableRow(
                          children: [
                            TableCell(
                              verticalAlignment: TableCellVerticalAlignment.middle,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(vertical: 8),
                                child: Center(
                                  child: Text(
                                    data['level'],
                                    style: const TextStyle(
                                      fontSize: 16
                                    ),
                                    textAlign: TextAlign.center,
                                  )
                                )
                              )
                            ),
                            TableCell(
                              verticalAlignment: TableCellVerticalAlignment.middle,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(vertical: 8),
                                child: Center(
                                  child: Text(
                                    data['atk'],
                                    style: const TextStyle(
                                      fontSize: 16
                                    ),
                                    textAlign: TextAlign.center,
                                  )
                                )
                              )
                            ),
                            TableCell(
                              verticalAlignment: TableCellVerticalAlignment.middle,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(vertical: 8),
                                child: Center(
                                  child: Text(
                                    data['elemental_mystery'],
                                    style: const TextStyle(
                                      fontSize: 16
                                    ),
                                    textAlign: TextAlign.center,
                                  )
                                )
                              )
                            )
                          ]
                        )
                      ),
                    ],
                  )
                )
                else
                GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 5,
                    childAspectRatio: 1,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16
                  ),
                  itemCount: item.epAbstracts.length,
                  itemBuilder: (context, index) {
                    final abstract = item.epAbstracts[index];

                    return Tooltip(
                      message: abstract.name,
                      child: Container(
                        padding: const EdgeInsets.all(2),
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Theme.of(context).colorScheme.secondaryContainer,
                        ),
                        child: CachedNetworkImage(
                          imageUrl: abstract.iconUrl
                        ),
                      )
                    );
                  },
                )
              ],
              TextButton(
                onPressed: () {
                  launchUrlString('https://wiki.hoyolab.com/m/genshin/entry/${epSummary.entryPageId}');
                },
                child: const Text('HoYoWikiで見る')
              )
            ],
          ),
        );
      },
      error: (error, stackTrace) => Column(
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
              hoverNotifier.refresh();
            },
            child: const Text('再試行')
          )
        ],
      ),
      loading: () => const Center(child: CircularProgressIndicator())
    );
  }
}

class _EventDetail extends StatelessWidget {
  final ActItem actItem;

  const _EventDetail({required this.actItem});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.close)
        ),
        title: const Text('イベント詳細')
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              title: Text(actItem.name),
              subtitle: Text('残り時間: ${DateFormatter.formatTime(actItem.countdownSeconds * 1000, showSeconds: false)}'),
            ),
            if (actItem.desc.isNotEmpty) Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(actItem.desc)
            ),
            const ListTile(
              title: Text('報酬一覧'),
            ),
            WaterfallFlow.builder(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverWaterfallFlowDelegateWithFixedCrossAxisCount(
                crossAxisCount: 5,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8
              ),
              itemCount: actItem.rewardList.length,
              itemBuilder: (context, index) {
                final reward = actItem.rewardList[index];

                return GridTile(
                  child: Column(
                    children: [
                      Tooltip(
                        message: reward.name,
                        child: Container(
                          clipBehavior: Clip.hardEdge,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12)
                          ),
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              Image.asset('assets/rank_bg/${reward.rarity}.png'),
                              CachedNetworkImage(imageUrl: reward.icon)
                            ],
                          )
                        ),
                      ),
                      Text(
                        'x${reward.num}',
                        style: const TextStyle(
                          fontSize: 14
                        )
                      )
                    ]
                  )
                );
              },
            )
          ]
        )
      )
    );
  }
}
import 'package:cached_network_image/cached_network_image.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lumine/core/api/model/game_record_character_detail_model.dart';
import 'package:lumine/features/account/data/game_record_character_detail_provider.dart';
import 'package:lumine/features/account/data/game_record_character_list_provider.dart';
import 'package:lumine/widgets/divider_with_text.dart';
import 'package:waterfall_flow/waterfall_flow.dart';

const Map<String, dynamic> elementIcons = {
  'Anemo': 'assets/element_icons/anemo.png',
  'Geo': 'assets/element_icons/geo.png',
  'Electro': 'assets/element_icons/electro.png',
  'Dendro': 'assets/element_icons/dendro.png',
  'Hydro': 'assets/element_icons/hydro.png',
  'Pyro': 'assets/element_icons/pyro.png',
  'Cryo': 'assets/element_icons/cryo.png'
};

final characterSortTypeProvider = StateProvider<int>((ref) => CharacterSortType.def.type);
final characterListElementFilterProvider = StateProvider<List<String>>((ref) => []);
final characterListWeaponFilterProvider = StateProvider<List<int>>((ref) => []);

class CharacterListView extends HookConsumerWidget {
  final int? roleId;

  const CharacterListView({super.key, this.roleId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final characterSortType = ref.watch(characterSortTypeProvider);
    final characterSortTypeNotifier = ref.read(characterSortTypeProvider.notifier);
    final characterListElementFilter = ref.watch(characterListElementFilterProvider);
    final characterListWeaponFilter = ref.watch(characterListWeaponFilterProvider);

    final characterList = ref.watch(gameRecordCharacterListProvider(
      characterSortType,
      characterListElementFilter,
      characterListWeaponFilter,
    ));

    Future<void> showCharacterSheet(int id) {
      return showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        useSafeArea: true,
        enableDrag: true,
        clipBehavior: Clip.hardEdge,
        builder: (context) {
          return _CharacterDetail(id);
        },
      );
    }

    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (roleId != null) showCharacterSheet(roleId!);
      });
      return null;
    }, []);

    return Scaffold(
      appBar: AppBar(
        title: const Text('キャラクター'),
        actions: [
          IconButton(
            tooltip: 'フィルター',
            onPressed: () {
              showModalBottomSheet(
                context: context,
                useSafeArea: true,
                enableDrag: true,
                showDragHandle: true,
                builder: (context) {
                  return const _FilterView();
                },
              );
            },
            icon: const Icon(Icons.filter_alt)
          ),
          PopupMenuButton(
            tooltip: '並べ替え',
            icon: const Icon(Icons.sort),
            onSelected: (value) {
              characterSortTypeNotifier.state = value;
            },
            itemBuilder: (context) {
              return CharacterSortType.values.map((value) =>
                PopupMenuItem(
                  value: value.type,
                  child: Text(value.title),
                )
              ).toList();
            },
          ),
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
                  showCharacterSheet(character.id);
                },
                child: GridTile(
                  child: Column(
                    children: [
                      Container(
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: theme.colorScheme.secondaryContainer
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
                                if (character.activedConstellationNum != 0) Padding(
                                  padding: const EdgeInsets.all(4),
                                  child: Container(
                                    alignment: Alignment.topRight,
                                    child: Text(
                                      'C${character.activedConstellationNum}',
                                      style: TextStyle(
                                        color: Colors.white,
                                        backgroundColor: Colors.black.withOpacity(0.5),
                                      )
                                    )
                                  )
                                ),
                              ],
                            ),
                            Text('Lv.${character.level}')
                          ],
                        ),
                      ),
                      Text(character.name, maxLines: 1, overflow: TextOverflow.ellipsis)
                    ],
                  ),
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
                    ref.invalidate(gameRecordCharacterListProvider);
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

class _CharacterDetail extends HookConsumerWidget {
  const _CharacterDetail(this.id);

  final int id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabController = useTabController(initialLength: 4);
    final characterDetail = ref.watch(gameRecordCharacterDetailNotifierProvider(id));
    final showAltValue = useState(false);
    final buildType = useState(1);
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text('キャラクター詳細'),
      ),
      body: characterDetail.when(
        data: (characterDetailData) {
          final character = characterDetailData.list.first.base;
          final weapon = characterDetailData.list.first.weapon;
          final relics = characterDetailData.list.first.relics;
          final skills = characterDetailData.list.first.skills;
          final constellations = characterDetailData.list.first.constellations;
          final selectedProps = characterDetailData.list.first.selectedProperties;
          final recommendProps = characterDetailData.list.first.recommendRelicProperty;

          return Column(
            children: [
              ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                leading: Image.asset(
                  elementIcons[character.element],
                  width: 38,
                  height: 38,
                ),
                title: Row(
                  children: [
                    Text(character.name),
                    Container(
                      padding: const EdgeInsets.all(2),
                      margin: const EdgeInsets.symmetric(horizontal: 4),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: theme.colorScheme.secondaryContainer
                      ),
                      child: Text(
                        'Lv.${character.level}',
                        style: const TextStyle(
                          fontSize: 12
                        ),
                      ),
                    )
                  ],
                ),
                subtitle: Row(
                  children: List.generate(character.rarity, (index) => Image.asset('assets/star.png', width: 16, height: 16))
                ),
                trailing: Wrap(
                  direction: Axis.horizontal,
                  alignment: WrapAlignment.center,
                  children: [
                    Image.asset('assets/icons/favor.png', height: 20),
                    Text(
                      '好感度: ${character.fetter}',
                      style: const TextStyle(
                        fontSize: 12
                      ),
                    ),
                  ],
                )
              ),
              TabBar(
                controller: tabController,
                tabs: const [
                  Tab(
                    text: '基本情報',
                  ),
                  Tab(
                    text: '聖遺物',
                  ),
                  Tab(
                    text: '天賦',
                  ),
                  Tab(
                    text: '命ノ星座',
                  ),
                ],
              ),
              Expanded(
                child: Stack(
                  children: [
                    Center(
                      child: Container(
                        constraints: const BoxConstraints.expand(),
                        child: CachedNetworkImage(
                          imageUrl: character.image,
                          fit: BoxFit.fitHeight,
                          alignment: Alignment.bottomCenter,
                          color: Colors.transparent.withOpacity(0.4),
                          colorBlendMode: BlendMode.dstIn,
                        ),
                      ),
                    ),
                    TabBarView(
                      controller: tabController,
                      children: [
                        ListView(
                          children: [
                            ListTile(
                              contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                              leading: SizedBox(
                                width: 56,
                                height: 56,
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    CachedNetworkImage(
                                      imageUrl: weapon.icon
                                    ),
                                    Positioned(
                                      top: 0,
                                      left: 0,
                                      child: Text('R${weapon.affixLevel}'),
                                    ),
                                    Positioned(
                                      bottom: 0,
                                      right: 0,
                                      child: Row(
                                        children: [
                                          Image.asset('assets/star.png', width: 16, height: 16),
                                          Text('${weapon.rarity}')
                                        ],
                                      )
                                    )
                                  ],
                                ),
                              ),
                              title: Text('${weapon.name} Lv.${weapon.level}'),
                              subtitle: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('${characterDetailData.propertyMap['${weapon.mainProperty.propertyType}']?.filterName} ${weapon.mainProperty.value} '),
                                  if (weapon.subProperty != null) Text('${characterDetailData.propertyMap['${weapon.subProperty!.propertyType}']?.filterName} ${weapon.subProperty!.value}')
                                ]
                              ),
                            ),
                            const Divider(height: 1),
                            WaterfallFlow.builder(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              gridDelegate: const SliverWaterfallFlowDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                              ),
                              itemCount: selectedProps.length,
                              itemBuilder: (context, index) {
                                final prop = selectedProps[index];
                                final propMap = characterDetailData.propertyMap['${prop.propertyType}']!;

                                return ListTile(
                                  contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                                  leading: SizedBox(
                                    width: 32,
                                    height: 32,
                                    child: propMap.icon.isNotEmpty ?
                                    CachedNetworkImage(
                                      imageUrl: propMap.icon
                                    ) :
                                    null,
                                  ),
                                  title: Text(propMap.filterName, maxLines: 1),
                                  subtitle: (showAltValue.value && prop.add.isNotEmpty) ?
                                  Row(
                                    children: [
                                      Text(prop.base),
                                      Text(
                                        '+${prop.add}',
                                        style: const TextStyle(
                                          color: Color(0xff4dffff)
                                        )
                                      )
                                    ],
                                  ) :
                                  Text(
                                    prop.value,
                                    style: const TextStyle(
                                      overflow: TextOverflow.ellipsis
                                    ),
                                    maxLines: 1,
                                  ),
                                  onTap: prop.add.isNotEmpty ? () {
                                    showAltValue.value = !showAltValue.value;
                                  } : null,
                                  onLongPress: () {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text('${propMap.filterName}: ${prop.value}'),
                                        showCloseIcon: true,
                                        behavior: SnackBarBehavior.floating,
                                      )
                                    );
                                  },
                                );
                              },
                            ),
                          ],
                        ),
                        ListView(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text('推奨メインステータス'),
                                  Wrap(
                                    spacing: 8,
                                    children: [
                                      RawChip(
                                        label: Text(characterDetailData.propertyMap['${recommendProps.recommendProperties.sandMainPropertyList.first}']?.name ?? '不明なプロパティ'),
                                        avatar: SvgPicture.asset(
                                          'assets/svg/hourglass.svg',
                                          colorFilter: ColorFilter.mode(theme.colorScheme.primary, BlendMode.srcIn),
                                        ),
                                      ),
                                      RawChip(
                                        label: Text(characterDetailData.propertyMap['${recommendProps.recommendProperties.gobletMainPropertyList.first}']?.name ?? '不明なプロパティ'),
                                        avatar: SvgPicture.asset(
                                          'assets/svg/cup.svg',
                                          colorFilter: ColorFilter.mode(theme.colorScheme.primary, BlendMode.srcIn),
                                        ),
                                      ),
                                      RawChip(
                                        label: Text(characterDetailData.propertyMap['${recommendProps.recommendProperties.circletMainPropertyList.first}']?.name ?? '不明なプロパティ'),
                                        avatar: SvgPicture.asset(
                                          'assets/svg/pileum.svg',
                                          colorFilter: ColorFilter.mode(theme.colorScheme.primary, BlendMode.srcIn),
                                        ),
                                      ),
                                    ]
                                  ),
                                  const Text('推奨サブステータス'),
                                  Wrap(
                                    spacing: 8,
                                    children: [
                                      ...recommendProps.recommendProperties.subPropertyList.map((prop) =>
                                        RawChip(
                                          label: Text(characterDetailData.propertyMap['$prop']?.name ?? '不明なプロパティ'),
                                        ),
                                      )
                                    ]
                                  ),
                                ],
                              ),
                            ),
                            if (relics.isNotEmpty) ...[
                              ListTile(
                                title: Text(
                                  'スコア合計: ${relics.map((relic) => calculateRelicScore(relic.subPropertyList, buildType.value)).sum.toStringAsFixed(1)}',
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20
                                  ),
                                ),
                                trailing: DropdownButton(
                                  items: const [
                                    DropdownMenuItem(
                                      value: 1,
                                      child: Text('攻撃力基準'),
                                    ),
                                    DropdownMenuItem(
                                      value: 2,
                                      child: Text('防御力基準'),
                                    ),
                                    DropdownMenuItem(
                                      value: 3,
                                      child: Text('元チャ効率基準'),
                                    ),
                                    DropdownMenuItem(
                                      value: 4,
                                      child: Text('HP基準'),
                                    ),
                                    DropdownMenuItem(
                                      value: 5,
                                      child: Text('元素熟知基準'),
                                    ),
                                  ],
                                  value: buildType.value,
                                  onChanged: (value) {
                                    if (value != null) {
                                      buildType.value = value;
                                    }
                                  },
                                ),
                              ),
                              ...relics.map((relic) => 
                                ExpansionTile(
                                  tilePadding: const EdgeInsets.symmetric(horizontal: 16),
                                  shape: const Border.symmetric(horizontal: BorderSide(color: Colors.transparent)),
                                  leading: SizedBox(
                                    width: 56,
                                    height: 56,
                                    child: Stack(
                                      alignment: Alignment.bottomRight,
                                      children: [
                                        CachedNetworkImage(
                                          imageUrl: relic.icon
                                        ),
                                        Wrap(
                                          direction: Axis.horizontal,
                                          children: [
                                            Image.asset('assets/star.png', width: 16, height: 16,),
                                            Text('${relic.rarity}')
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  title: Text(relic.name),
                                  subtitle: Text('Lv.${relic.level}'),
                                  children: [
                                    ListTile(
                                      contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                                      title: const Text(
                                        'スコア',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20
                                        ),
                                      ),
                                      trailing: Text(
                                        calculateRelicScore(relic.subPropertyList, buildType.value).toStringAsFixed(1),
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18
                                        ),
                                      ),
                                    ),
                                    ListTile(
                                      contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                                      title: Text(
                                        characterDetailData.propertyMap['${relic.mainProperty.propertyType}']!.filterName,
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20
                                        ),
                                      ),
                                      trailing: Text(
                                        relic.mainProperty.value,
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18
                                        ),
                                      ),
                                    ),
                                    WaterfallFlow.builder(
                                      shrinkWrap: true,
                                      physics: const NeverScrollableScrollPhysics(),
                                      gridDelegate: const SliverWaterfallFlowDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 2,
                                      ),
                                      itemCount: relic.subPropertyList.length,
                                      itemBuilder: (context, index) {
                                        final subProp = relic.subPropertyList[index];
                                        final propInfo = characterDetailData.propertyMap['${subProp.propertyType}']!;

                                        return ListTile(
                                          contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                                          title: Text(
                                            propInfo.filterName.replaceAll(RegExp(r'パーセンテージ'), '%'),
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                          subtitle: Text(
                                            subProp.value,
                                            style: const TextStyle(
                                              fontWeight: FontWeight.normal,
                                              fontSize: 16
                                            ),
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                          trailing: subProp.times > 0 ?
                                          RawChip(
                                            padding: EdgeInsets.zero,
                                            label: Text('${subProp.times}'),
                                          ) :
                                          null,
                                        );
                                      },
                                    ),
                                  ],
                                )
                              )
                            ]
                            else const Center(child: Text('聖遺物を装備していません')),
                          ],
                        ),
                        ListView(
                          children: [
                            ...skills.map((skill) =>
                              ExpansionTile(
                                shape: const Border.symmetric(horizontal: BorderSide(color: Colors.transparent)),
                                tilePadding: const EdgeInsets.symmetric(horizontal: 16),
                                leading: Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.2),
                                    border: Border.all(color: Colors.grey.shade700),
                                    borderRadius: BorderRadius.circular(28),
                                  ),
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      CachedNetworkImage(
                                        imageUrl: skill.icon
                                      ),
                                      if (!skill.isUnlock) Container(
                                        padding: const EdgeInsets.all(12),
                                        decoration: BoxDecoration(
                                          color: Colors.black.withOpacity(0.5),
                                          borderRadius: BorderRadius.circular(28)
                                        ),
                                        child: Image.asset(
                                          'assets/lock.png',
                                          alignment: Alignment.center,
                                        )
                                      ),
                                    ],
                                  ),
                                ),
                                title: Text(skill.name),
                                subtitle: Text(skill.isUnlock ? 'Lv.${skill.level}' : '未開放'),
                                children: [
                                  ExpansionTile(
                                    shape: const Border.symmetric(horizontal: BorderSide(color: Colors.transparent)),
                                    tilePadding: const EdgeInsets.symmetric(horizontal: 16),
                                    childrenPadding: const EdgeInsets.symmetric(horizontal: 16),
                                    title: const Text('天賦紹介'),
                                    children: [
                                      HtmlWidget(
                                        skill.desc.replaceAll(RegExp(r'\\n'), '</br>'),
                                      )
                                    ],
                                  ),
                                  if (skill.skillAffixList.isNotEmpty) ExpansionTile(
                                    shape: const Border.symmetric(horizontal: BorderSide(color: Colors.transparent)),
                                    tilePadding: const EdgeInsets.symmetric(horizontal: 16),
                                    childrenPadding: const EdgeInsets.symmetric(horizontal: 16),
                                    title: const Text('ステータス詳細'),
                                    children: skill.skillAffixList.map((affix) {
                                      return ListTile(
                                        contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                                        title: Text(affix.name),
                                        trailing: Text(
                                          affix.value,
                                          style: const TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal
                                          ),
                                        ),
                                      );
                                    }).toList()
                                  )
                                ],
                              )
                            )
                          ],
                        ),
                        ListView(
                          children: [
                            ...constellations.map((constellation) => 
                              ExpansionTile(
                                shape: const Border.symmetric(horizontal: BorderSide(color: Colors.transparent)),
                                tilePadding: const EdgeInsets.symmetric(horizontal: 16),
                                childrenPadding: const EdgeInsets.symmetric(horizontal: 16),
                                leading: SizedBox(
                                  width: 56,
                                  height: 56,
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      if (constellation.isActived) Image.asset('assets/element_icons/${character.element.toLowerCase()}_unlock_rank.png'),
                                      Padding(
                                        padding: const EdgeInsets.all(8),
                                        child: CachedNetworkImage(
                                          imageUrl: constellation.icon
                                        ),
                                      ),
                                      if (!constellation.isActived) ...[
                                        Padding(
                                          padding: const EdgeInsets.all(8),
                                          child: Image.asset('assets/element_icons/${character.element.toLowerCase()}_lock_rank.png'),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(16),
                                          child: Image.asset(
                                            'assets/lock.png',
                                            alignment: Alignment.center,
                                          )
                                        )
                                      ]
                                    ],
                                  ),
                                ),
                                title: Text(constellation.name),
                                subtitle: Text('命ノ星座 第${constellation.pos}重'),
                                expandedAlignment: Alignment.centerLeft,
                                expandedCrossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  HtmlWidget(
                                    constellation.effect.replaceAll(RegExp(r'\\n'), '</br>'),
                                  )
                                ]
                              )
                            )
                          ],
                        ),
                      ]
                    )
                  ]
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
                    ref.read(GameRecordCharacterDetailNotifierProvider(id).notifier).refresh();
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

class _FilterView extends HookConsumerWidget {
  const _FilterView();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final elementFilters = useState<List<String>>([
      ...ref.watch(characterListElementFilterProvider)
    ]);
    final weaponFilters = useState<List<int>>([
      ...ref.watch(characterListWeaponFilterProvider)
    ]);

    return Column(
      children: [
        Expanded(
          child: ListView(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: DividerWithText(label: '元素')
              ),
              ...CharacterListElementFilter.values.map((element) =>
                CheckboxListTile(
                  title: Text(element.title),
                  value: elementFilters.value.contains(element.value),
                  onChanged: (value) {
                    final List<String> list = List.from(elementFilters.value);

                    switch (value) {
                      case true:
                        list.add(element.value);
                        break;
                      case false:
                        list.remove(element.value);
                        break;
                      default:
                    }

                    elementFilters.value = list;
                  }
                )
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: DividerWithText(label: '武器')
              ),
              ...CharacterListWeaponFilter.values.map((weapon) =>
                CheckboxListTile(
                  title: Text(weapon.title),
                  value: weaponFilters.value.contains(weapon.value),
                  onChanged: (value) {
                    final List<int> list = List.from(weaponFilters.value);

                    switch (value) {
                      case true:
                        list.add(weapon.value);
                        break;
                      case false:
                        list.remove(weapon.value);
                        break;
                      default:
                    }

                    weaponFilters.value = list;
                  }
                )
              ),
            ]
          )
        ),
        const Divider(height: 1),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              onPressed: () {
                elementFilters.value = [];
                weaponFilters.value = [];
              },
              child: const Text('リセット')
            ),
            TextButton(
              onPressed: () {
                ref.read(characterListElementFilterProvider.notifier).state = elementFilters.value;
                ref.read(characterListWeaponFilterProvider.notifier).state = weaponFilters.value;
                Navigator.pop(context);
              },
              child: const Text('決定')
            )
          ]
        )
      ]
    );
  }
}

double getValue(List<CharacterDetailRelicProperty> subProps, type) {
  final value = subProps.firstWhereOrNull((prop) => prop.propertyType == type)?.value ?? '0';
  return double.parse(value.replaceAll(RegExp(r'[^0-9\-.]'), ""));
}

double calculateRelicScore(List<CharacterDetailRelicProperty>property, int buildType) {
  final [dmg, hp, def, recharge, mastery, critR, critD] = [
    6, 3, 9, 23, 28, 20, 22
  ].map((type) => getValue(property, type)).toList();

  final critBonus = (critR * 2) + critD;

  double score = 0;

  switch (buildType) {
    case 1:
      score = dmg + critBonus;
      break;
    case 2:
      score = def + critBonus;
      break;
    case 3:
      score = recharge + critBonus;
      break;
    case 4:
      score = hp + critBonus;
      break;
    case 5:
      score = (mastery + critBonus) / 2;
      break;
    default:
  }

  return score;
}

enum CharacterSortType { 
  def(
    title: 'デフォルト',
    type: 1
  ),
  highToLowQuality(
    title: 'レア度が高い順',
    type: 2
  ),
  lowToHighQuality(
    title: 'レア度が低い順',
    type: 3
  ),
  highToLowLevel(
    title: 'レベルが高い順',
    type: 4
  ),
  lowToHighLevel(
    title: 'レベルが低い順',
    type: 5
  );

  const CharacterSortType({
    required this.title,
    required this.type
  });

  final String title;
  final int type;
}

enum CharacterListElementFilter {
  pyro(
    title: '炎元素',
    value: 'Pyro',
  ),
  hydro(
    title: '水元素',
    value: 'Hydro',
  ),
  dendro(
    title: '草元素',
    value: 'Dendro',
  ),
  electro(
    title: '雷元素',
    value: 'Electro',
  ),
  anemo(
    title: '風元素',
    value: 'Anemo',
  ),
  cryo(
    title: '氷元素',
    value: 'Cryo',
  ),
  geo(
    title: '岩元素',
    value: 'Geo',
  );
  
  const CharacterListElementFilter({
    required this.title,
    required this.value
  });

  final String title;
  final String value;
}


enum CharacterListWeaponFilter {
  sword(
    title: '片手剣',
    value: 1,
  ),
  claymore(
    title: '両手剣',
    value: 11,
  ),
  bow(
    title: '弓',
    value: 12,
  ),
  polearm(
    title: '長柄武器',
    value: 13,
  ),
  catalyst(
    title: '法器',
    value: 10
  );

  const CharacterListWeaponFilter({
    required this.title,
    required this.value
  });

  final String title;
  final int value;
}
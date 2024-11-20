import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lumine/features/account/character_list/data/game_record_character_list_provider.dart';
import 'package:lumine/features/account/character_detail/character_detail_view.dart';
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
  const CharacterListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final characterSortType = ref.watch(characterSortTypeProvider);
    final characterSortTypeNotifier = ref.read(characterSortTypeProvider.notifier);
    final characterListElementFilter = ref.watch(characterListElementFilterProvider);
    final characterListWeaponFilter = ref.watch(characterListWeaponFilterProvider);

    final characterList = ref.watch(gameRecordCharacterListNotifierProvider(
      characterSortType,
      characterListElementFilter,
      characterListWeaponFilter,
    ));

    final characterListNotifier = ref.read(gameRecordCharacterListNotifierProvider(
      characterSortType,
      characterListElementFilter,
      characterListWeaponFilter,
    ).notifier);

    Future<void> showCharacterSheet(int id) {
      return showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        useSafeArea: true,
        enableDrag: true,
        clipBehavior: Clip.hardEdge,
        builder: (context) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.9,
            child: CharacterDetailView(id: id)
          );
        },
      );
    }

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
                    characterListNotifier.refresh();
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
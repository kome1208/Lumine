import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lumine/features/calendar/data/calendar.dart';
import 'package:lumine/features/calendar/data/hoyowiki.dart';
import 'package:lumine/models/calendar_model.dart';
import 'package:lumine/widgets/my_card.dart';
import 'package:html/parser.dart' as html_parser;
import 'package:url_launcher/url_launcher_string.dart';

class CalendarView extends ConsumerStatefulWidget {
  const CalendarView({super.key});

  @override
  ConsumerState<CalendarView> createState() => _CalendarViewState();
}

class _CalendarViewState extends ConsumerState<CalendarView> {
  List<CalendarModel> _materials = [];

  @override
  void initState() {
    _fetchData();
    super.initState();
  }

  Future<void>_fetchData() async {
    final response = await Calendar.get();
    List<CalendarModel> materials = [];

    if (response['retcode'] == 0) {
      for (var item in (response['data']['calendar'] as List<dynamic>)) {
        materials.add(CalendarModel.fromJson(item));
      }

      setState(() {
        _materials = materials;        
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('カレンダー'),
          bottom: const TabBar(
            tabs: [
              Tab(
                text: '天賦育成素材',
                icon: Icon(Icons.person_add)
              ),
              Tab(
                text: '武器突破素材',
                icon: Icon(Icons.handyman)
              ),
            ],
          ),
        ),
        body: _materials.isEmpty ?
        const Center(child: CircularProgressIndicator()) :
        TabBarView(
          physics: const NeverScrollableScrollPhysics(),
          children: [
            NestedTabBar(_materials, 1),
            NestedTabBar(_materials, 2),
          ],
        ),
      )
    );
  }
}

class NestedTabBar extends StatefulWidget {
  const NestedTabBar(this.data, this.type, {super.key});

  final List<CalendarModel> data;
  final int type;

  @override
  State<NestedTabBar> createState() => _NestedTabBarState();
}

class _NestedTabBarState extends State<NestedTabBar>
    with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 7, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

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

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar.secondary(
          controller: _tabController,
          tabs: const [
            Tab(text: '月'),
            Tab(text: '火'),
            Tab(text: '水'),
            Tab(text: '木'),
            Tab(text: '金'),
            Tab(text: '土'),
            Tab(text: '日'),
          ],
        ),
        Expanded(
          child: TabBarView(
            physics: const NeverScrollableScrollPhysics(),
            controller: _tabController,
            children: [for (int i = 0; i < 7; i++)
              ListView.builder(
                shrinkWrap: true,
                itemCount: widget.data.where((item) => (item.dropDay.any((day) => day == i && item.breakType == widget.type))).length,
                itemBuilder: (context, index) {
                  final item = widget.data.where((item) => (item.dropDay.any((day) => day == i && item.breakType == widget.type))).toList()[index];

                  return MyCard(
                    margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 4),
                          child: Text(item.obtainMethod),
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
                            Container(
                              clipBehavior: Clip.hardEdge,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: CachedNetworkImage(
                                imageUrl: material['icon_url']
                              ),
                            )
                          ).toList(),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4),
                          child: Text('該当${widget.type == 1 ? 'キャラクター' : '武器'}'),
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
                                  builder: (context) {
                                    return Container(
                                      clipBehavior: Clip.hardEdge,
                                      height: MediaQuery.of(context).size.height * 0.8,
                                      width: MediaQuery.of(context).size.width,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(26)
                                      ),
                                      child: FutureBuilder(
                                        future: HoYoWiki.getHoverData(character['entry_page_id']),
                                        builder: (context, snapshot) {
                                          if (snapshot.hasData) {
                                            final data = snapshot.data['data']['hover']['ep_summary'];
                                            final extendsData = snapshot.data['data']['hover']['extends'];

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
                                                        colors: gradientColors[data['filter_values'][widget.type == 1 ? 'character_rarity' : 'weapon_rarity']['value_types'][0]['enum_string']], // Gradient from https://learnui.design/tools/gradient-generator.html
                                                        tileMode: TileMode.clamp,
                                                      ),
                                                    ),
                                                    child: Column(
                                                      children: [
                                                        Text(data['name'], style: const TextStyle(fontSize: 20, fontWeight: FontWeight.normal)),
                                                        Row(
                                                          children: [
                                                            Expanded(
                                                              child: Column(
                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                mainAxisAlignment: MainAxisAlignment.start,
                                                                children: [
                                                                  Text(
                                                                    html_parser.parse(data['desc']).body!.text,
                                                                    maxLines: 4,
                                                                    overflow: TextOverflow.ellipsis,
                                                                  ),
                                                                  const SizedBox(height: 4),
                                                                  Row(
                                                                    children: [for (int i = 0; i < int.parse(data['filter_values'][widget.type == 1 ? 'character_rarity' : 'weapon_rarity']['value_types'][0]['enum_string']); i++) Image.asset('assets/star.png', width: 20, height: 20)],
                                                                  )
                                                                ],
                                                              )
                                                            ),
                                                            CachedNetworkImage(
                                                              imageUrl: data['icon_url'],
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
                                                        for (var filter in filterValues[widget.type.toString()]) 
                                                        ...data['filter_values'][filter]['values'].map((vision) =>
                                                          RawChip(
                                                            label: Text(vision),
                                                          )
                                                          // Container(
                                                          //   padding: const EdgeInsets.all(8),
                                                          //   decoration: BoxDecoration(
                                                          //     borderRadius: BorderRadius.circular(8),
                                                          //     color: Theme.of(context).colorScheme.secondaryContainer
                                                          //   ),
                                                          //   child: Text(vision, style: const TextStyle(fontSize: 16)),
                                                          // )
                                                        )
                                                      ]
                                                    ),
                                                  ),
                                                  for (var item in extendsData)
                                                  ...[
                                                    Padding(
                                                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                                      child: Text(item['title'], style: const TextStyle(fontSize: 16)),
                                                    ),
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
                                                      itemCount: item['ep_abstracts'].length,
                                                      itemBuilder: (context, index) {
                                                        final abstract = item['ep_abstracts'][index];

                                                        return Container(
                                                          clipBehavior: Clip.hardEdge,
                                                          decoration: BoxDecoration(
                                                            borderRadius: BorderRadius.circular(100),
                                                            color: Theme.of(context).colorScheme.secondaryContainer,
                                                          ),
                                                          child: CachedNetworkImage(
                                                            imageUrl: abstract['icon_url']
                                                          ),
                                                        );
                                                      },
                                                    )
                                                  ],
                                                  TextButton(
                                                    onPressed: () {
                                                      launchUrlString('https://wiki.hoyolab.com/m/genshin/entry/${character['entry_page_id']}');
                                                    },
                                                    child: const Text('HoYoWikiで見る')
                                                  )
                                                ],
                                              ),
                                            );
                                          } else {
                                            return const Center(child: CircularProgressIndicator());
                                          }
                                        },
                                      ),
                                    );
                                  },
                                );
                              },
                              child: Container(
                                clipBehavior: Clip.hardEdge,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: gradientColors[character['filter_values'][widget.type == 1 ? 'character_rarity' : 'weapon_rarity']['value_types'][0]['enum_string']], // Gradient from https://learnui.design/tools/gradient-generator.html
                                    tileMode: TileMode.clamp,
                                  ),
                                ),
                                child: Stack(
                                  children: [
                                    Image.asset('assets/avatar_bg.png'),
                                    CachedNetworkImage(
                                      imageUrl: character['icon_url']
                                    )
                                  ],
                                ),
                              ),
                            )
                          ).toList(),
                        ),
                      ],
                    ),
                  );
                },
              )
            ]
          ),
        ),
      ],
    );
  }
}
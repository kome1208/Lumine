import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:lumine/features/account/resouce_data/data/month_detail_provider.dart';
import 'package:lumine/features/account/resouce_data/data/month_info_provider.dart';
import 'package:lumine/widgets/error_view.dart';

final currentMonthProvider = AutoDisposeStateProvider<int>((ref) => DateTime.now().month);

class ResourceDataView extends HookConsumerWidget {
  const ResourceDataView({super.key});
  
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentMonth = ref.watch(currentMonthProvider);
    final currentMonthNotifier = ref.read(currentMonthProvider.notifier);
    final monthInfo = ref.watch(monthInfoNotifierProvider(currentMonth));
    final monthInfoNotifier = ref.read(monthInfoNotifierProvider(currentMonth).notifier);

    final cardColor = ElevationOverlay.applySurfaceTint(Theme.of(context).colorScheme.surface, Theme.of(context).colorScheme.primary, 3);
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('資源データ'),
        actions: [
          if (monthInfo.value != null) ...[
            IconButton(
              tooltip: '詳細を確認',
              icon: const Icon(Icons.history),
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  clipBehavior: Clip.hardEdge,
                  isScrollControlled: true,
                  useSafeArea: true,
                  enableDrag: true,
                  builder: (context) => SizedBox(
                    height: MediaQuery.of(context).size.height * 0.9,
                    child: const _MonthDetail()
                  )
                );
              },
            ),
            PopupMenuButton(
              tooltip: '他の期間',
              icon: const Icon(Icons.calendar_month),
              onSelected: (value) {
                currentMonthNotifier.state = value;
              },
              itemBuilder: (context) {
                return monthInfo.value!.optionalMonth.map((value) =>
                  PopupMenuItem(
                    value: value,
                    child: Text('$value月'),
                  )
                ).toList();
              },
            ),
          ]
        ],
      ),
      body: monthInfo.when(
        data: (monthInfoData) {
          return RefreshIndicator(
            onRefresh: () async {
              monthInfoNotifier.refresh();
            },
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      '今日の利益',
                      style: TextStyle(
                        fontSize: 18
                      )
                    ),
                  ),
                  Card.filled(
                    color: cardColor,
                    margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    clipBehavior: Clip.antiAlias,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ListTile(
                          contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                          leading: Image.asset(
                            'assets/images/resource/mora.png',
                            width: 32,
                            height: 32,
                          ),
                          title: const Text('モラ'),
                          trailing: Text(
                            '${monthInfoData.dayData.currentMora}',
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal
                            )
                          ),
                        ),
                        ListTile(
                          contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                          leading: Image.asset(
                            'assets/images/resource/primogems.png',
                            width: 32,
                            height: 32,
                          ),
                          title: const Text('原石'),
                          trailing: Text(
                            '${monthInfoData.dayData.currentPrimogems}',
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal
                            )
                          ),
                        ),
                      ]
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      '今月の利益(${monthInfoData.dataMonth}月)',
                      style: TextStyle(
                        fontSize: 18
                      )
                    ),
                  ),
                  Card.filled(
                    color: cardColor,
                    margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    clipBehavior: Clip.antiAlias,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ListTile(
                          contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                          leading: Image.asset(
                            'assets/images/resource/mora.png',
                            width: 32,
                            height: 32,
                          ),
                          title: const Text('モラ'),
                          subtitle: Text('前月比: ${(monthInfoData.monthData.lastMora * monthInfoData.monthData.moraRate / 100).floor()}'),
                          trailing: Text(
                            '${monthInfoData.monthData.currentMora}',
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal
                            )
                          ),
                        ),
                        ListTile(
                          contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                          leading: Image.asset(
                            'assets/images/resource/primogems.png',
                            width: 32,
                            height: 32,
                          ),
                          title: const Text('原石'),
                          subtitle: Text('前月比: ${(monthInfoData.monthData.lastPrimogems * monthInfoData.monthData.primogemRate / 100).floor()}'),
                          trailing: Text(
                            '${monthInfoData.monthData.currentPrimogems}',
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal
                            )
                          ),
                        ),
                      ]
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      '原石の入手経路',
                      style: TextStyle(
                        fontSize: 18
                      )
                    ),
                  ),
                  Card.filled(
                    color: cardColor,
                    margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Column(
                      children: monthInfoData.monthData.groupBy.map((group) =>
                        ListTile(
                          contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                          title: Text(group.action),
                          subtitle: Text('${group.percent}%'),
                          trailing: Text(
                            '${group.num}',
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal
                            )
                          ),
                        )
                      ).toList()
                    )
                  ),
                ],
              )
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
                    monthInfoNotifier.refresh();
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

class _MonthDetail extends HookConsumerWidget {
  const _MonthDetail();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.close)
          ),
          title: const Text('獲得記録'),
          bottom: const TabBar(
            tabs: [
              Tab(text: '原石'),
              Tab(text: 'モラ')
            ]
          ),
        ),
        body: const TabBarView(
          children: [
            _RecordTable(1),
            _RecordTable(2),
          ]
        )
      )
    );
  }
}

class _RecordTable extends HookConsumerWidget {
  final int type;
  const _RecordTable(this.type);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useAutomaticKeepAlive(wantKeepAlive: true);
    final currentMonth = ref.watch(currentMonthProvider);
    final monthDetail = ref.read(monthDetailNotifierProvider(currentMonth, type).notifier);
    final monthDetailNotifier = ref.watch(monthDetailNotifierProvider(currentMonth, type));

    return Column(
      children: [
        Table(
          columnWidths: const {
            0: IntrinsicColumnWidth(flex: 1),
            1: IntrinsicColumnWidth(flex: 2),
            2: IntrinsicColumnWidth(flex: 1),
          },
          border: TableBorder.all(color: Theme.of(context).colorScheme.outline),
          children: const [
            TableRow(
              children: [
                TableCell(
                  child: SizedBox(
                    height: 30,
                    child: Center(
                      child: Text('時間')
                    ),
                  )
                ),
                TableCell(
                  child: SizedBox(
                    height: 30,
                    child: Center(
                      child: Text('入手方法')
                    ),
                  )
                ),
                TableCell(
                  child: SizedBox(
                    height: 30,
                    child: Center(
                      child: Text('数量')
                    ),
                  )
                ),
              ]
            ),
          ],
        ),
        Expanded(
          child: monthDetailNotifier.maybeWhen(
            skipLoadingOnRefresh: true,
            skipLoadingOnReload: true,
            data: (monthDetailData) {
              return NotificationListener<ScrollNotification>(
                onNotification: (ScrollNotification scrollInfo) {
                  if (scrollInfo.metrics.pixels == scrollInfo.metrics.maxScrollExtent) {
                    monthDetail.fetchMore();
                  }
                  return false;
                },
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Table(
                        border: TableBorder.all(color: Theme.of(context).colorScheme.outline),
                        columnWidths: const {
                          0: IntrinsicColumnWidth(flex: 1),
                          1: IntrinsicColumnWidth(flex: 2),
                          2: IntrinsicColumnWidth(flex: 1),
                        },
                        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                        children: [
                          ...monthDetailData.list.map((action) =>
                            TableRow(
                              children: [
                                TableCell(
                                  child: SizedBox(
                                    height: 50,
                                    child: Center(
                                      child: Text(DateFormat('MM/dd HH:mm').format(DateTime.parse(action.time).add(const Duration(hours: 1))))
                                    ),
                                  )
                                ),
                                TableCell(
                                  child: SizedBox(
                                    height: 50,
                                    child: Center(
                                      child: Text(action.action)
                                    ),
                                  )
                                ),
                                TableCell(
                                  child: SizedBox(
                                    height: 50,
                                    child: Center(
                                      child: Text('${action.num}')
                                    ),
                                  )
                                ),
                              ]
                            ),
                          )
                        ]
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: monthDetail.noMoreRecords ?
                        const Text('これ以上の記録はありません') :
                        const CircularProgressIndicator(),
                      )
                    ],
                  ),
                )
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
                  ],
                ),
              );
            },
            orElse: () => const Center(child: CircularProgressIndicator()),
          )
        )
      ],
    );
  }
}
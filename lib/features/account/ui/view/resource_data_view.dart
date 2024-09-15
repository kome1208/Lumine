import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lumine/features/account/data/month_info_provider.dart';
import 'package:lumine/widgets/my_card.dart';

Map coinChartInfo = {
  '0': Colors.grey,
  '1': Colors.purple,
  '2': Colors.pink,
  '3': Colors.yellow,
  '4': Colors.lightGreen,
  '5': Colors.blue,
  '6': Colors.red,
  '7': Colors.teal
};

class ResourceDataView extends HookConsumerWidget {
  const ResourceDataView({super.key});
  
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentMonth = useState(DateTime.now().month);
    final monthInfo = ref.watch(monthInfoNotifierProvider(currentMonth.value));
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('資源データ'),
        actions: [
          if (monthInfo.value != null) PopupMenuButton(
            tooltip: '他の期間',
            icon: const Icon(Icons.calendar_month),
            onSelected: (value) {
              currentMonth.value = value;
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
        ],
      ),
      body: monthInfo.when(
        data: (monthInfoData) {
          return ListView(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text('今日の利益'),
              ),
              MyCard(
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
                child: Text('今月の利益(${monthInfoData.dataMonth}月)'),
              ),
              MyCard(
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
                child: Text('原石の入手経路'),
              ),
              ...monthInfoData.monthData.groupBy.map((group) =>
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
              ),
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
                    ref.read(monthInfoNotifierProvider(DateTime.now().month).notifier).refresh();
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
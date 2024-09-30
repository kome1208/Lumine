import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lumine/core/provider/hoyolab_api.dart';
import 'package:lumine/features/daily_bonus/data/award_list_notifier_provider.dart';
import 'package:lumine/features/daily_bonus/data/extra_award_provider.dart';
import 'package:lumine/features/daily_bonus/data/resign_info_provider.dart';
import 'package:lumine/features/daily_bonus/data/sign_info_notifier_provider.dart';
import 'package:lumine/features/daily_bonus/data/task_list_provider.dart';
import 'package:lumine/utils/date_formatter.dart';
import 'package:lumine/widgets/my_card.dart';
import 'package:waterfall_flow/waterfall_flow.dart';

class DailyBonusView extends HookConsumerWidget {
  const DailyBonusView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final awardList = ref.watch(awardListNotifierProvider);
    final signInfo = ref.watch(signInfoNotifierProvider);
    final resignInfo = ref.watch(resignInfoProvider);
    final extraAward = ref.watch(extraAwardNotifierProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('デイリーボーナス'),
        actions: [
          TextButton(
            onPressed: (awardList.value != null && signInfo.value != null && resignInfo.value != null) ?
            () {
              final resignInfoData = resignInfo.value!;

              if (signInfo.value!.isSign == false) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('本日分のログインを完了させてから埋め合わせログインをしてください'),
                    showCloseIcon: true,
                    behavior: SnackBarBehavior.floating,
                  )
                );
                return;
              }
              if (resignInfoData.signCntMissed <= 0) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('埋め合わせログインをする必要はありません'),
                    showCloseIcon: true,
                    behavior: SnackBarBehavior.floating,
                  )
                );
                return;
              }

              showModalBottomSheet(
                context: context,
                useSafeArea: true,
                isScrollControlled: true,
                clipBehavior: Clip.hardEdge,
                builder: (context) {
                  return const _CheckinMakeupView();
                },
              );
            } :
            null,
            child: const Text('埋め合わせ')
          )
        ],
      ),
      body: awardList.when(
        data: (awardListData) {
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ...extraAward.when(
                  data: (value) {
                    if (int.parse(value.endTimestamp) * 1000 <= DateTime.now().millisecondsSinceEpoch) return [];
                    return [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 16),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('追加ボーナス'),
                            Text('${DateFormatter.formatDate(int.parse(value.startTimestamp) * 1000, 'yyyy.MM.dd')} - ${DateFormatter.formatDate(int.parse(value.endTimestamp) * 1000, 'yyyy.MM.dd')}'),
                          ],
                        ),
                      ),
                      MyCard(
                        margin: const EdgeInsets.symmetric(horizontal: 16),
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          children: [
                            const Text('本日のログインボーナスを受け取ると、追加のボーナスも獲得できます'),
                            const SizedBox(height: 4),
                            WaterfallFlow.builder(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              gridDelegate: const SliverWaterfallFlowDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 7,
                                crossAxisSpacing: 4
                              ),
                              itemCount: value.awards.length,
                              itemBuilder: (context, index) {
                                final award = value.awards[index];

                                return GridTile(
                                  child: Column(
                                    children: [
                                      AspectRatio(
                                        aspectRatio: 1,
                                        child: Stack(
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                color: const Color.fromRGBO(235, 232, 213, 1),
                                                borderRadius: BorderRadius.circular(100)
                                              ),
                                              child: CachedNetworkImage(
                                                imageUrl: award.icon
                                              ),
                                            ),
                                            if (value.totalCnt > index)
                                            Center(
                                              child: Container(
                                                padding: const EdgeInsets.all(8),
                                                constraints: const BoxConstraints.expand(),
                                                decoration: BoxDecoration(
                                                  color: Colors.white.withOpacity(0.5),
                                                  borderRadius: BorderRadius.circular(100)
                                                ),
                                                child: Image.asset('assets/check.png'),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Text(
                                        'x${award.cnt}',
                                        style: const TextStyle(
                                          fontSize: 12
                                        ),
                                      )
                                    ],
                                  )
                                );
                              },
                            ),
                          ],
                        )
                      )
                    ];
                  },
                  error: (error, stackTrace) => [],
                  loading: () => []
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 16),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('ログイン日数: ${signInfo.value?.totalSignDay ?? 0}日'),
                      Text('未ログイン: ${resignInfo.value?.signCntMissed ?? 0}日'),
                    ],
                  ),
                ),
                WaterfallFlow.builder(
                  itemCount: awardListData.awards.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  gridDelegate: const SliverWaterfallFlowDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8
                  ),
                  itemBuilder: (context, index) {
                    final award = awardListData.awards[index];
                    final signInfoData = signInfo.value;

                    final isReceivable = index == signInfoData?.totalSignDay && signInfoData?.isSign == false;
                    
                    return GestureDetector(
                      onTap: isReceivable ?
                      () async {
                        ref.watch(hoYoLABAPINotifierProvider).dailyCheckIn().then((message) {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: const Text('メッセージ'),
                                content: Text(
                                  message == 'OK' ? '${award.name} x${award.cnt}を受け取りました' : message
                                ),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: const Text('閉じる')
                                  )
                                ],
                              );
                            },
                          );

                          ref.invalidate(awardListNotifierProvider);
                          ref.invalidate(signInfoNotifierProvider);
                          ref.invalidate(resignInfoProvider);
                          ref.invalidate(extraAwardNotifierProvider);
                        });
                      } :
                      null,
                      child: Column(
                        children: [
                          AspectRatio(
                            aspectRatio: 3 / 4,
                            child: Container(
                              clipBehavior: Clip.hardEdge,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: isReceivable ? const Color.fromRGBO(211, 125, 67, 1) : const Color.fromRGBO(175, 153, 121, 1),
                              ),
                              child: Stack(
                                children: [
                                  Column(
                                    children: [
                                      AspectRatio(
                                        aspectRatio: 1,
                                        child: Container(
                                          margin: const EdgeInsets.all(8),
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(40),
                                            color: Colors.white
                                          ),
                                          child: CachedNetworkImage(
                                            imageUrl: award.icon,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        'x${award.cnt}',
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.normal
                                        ),
                                      )
                                    ],
                                  ),
                                  if (
                                    signInfoData?.totalSignDay != null &&
                                    signInfoData!.totalSignDay >= index + 1
                                  )
                                  Center(
                                    child: Container(
                                      padding: const EdgeInsets.all(16),
                                      constraints: const BoxConstraints.expand(),
                                      decoration: BoxDecoration(
                                        color: Colors.white.withOpacity(0.5)
                                      ),
                                      child: Image.asset('assets/check.png'),
                                    ),
                                  )
                                ],
                              )
                            ),
                          ),
                          Text('${index + 1}日目')
                        ],
                      )
                    );
                  },
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
                Image.asset('assets/images/icons/error_icon.png'),
                Text(error.toString()),
                TextButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: const Text('エラー詳細'),
                          content: Text(stackTrace.toString()),
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
                    ref.invalidate(awardListNotifierProvider);
                    ref.invalidate(signInfoNotifierProvider);
                    ref.invalidate(resignInfoProvider);
                    ref.invalidate(extraAwardNotifierProvider);
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

class _CheckinMakeupView extends ConsumerWidget {
  const _CheckinMakeupView();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final awardList = ref.watch(awardListNotifierProvider);
    final resignInfo = ref.watch(resignInfoProvider);
    final taskList = ref.watch(taskListNotifierProvider);
    final api = ref.watch(hoYoLABAPINotifierProvider);
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text('埋め合わせログイン'),
      ),
      body: resignInfo.when(
        data: (resignInfoData) {
          final award = awardList.value?.awards[resignInfo.value?.signCnt ?? 0];

          String buttonText = '埋め合わせログイン';
          if (resignInfoData.resignCntDaily >= resignInfoData.resignLimitDaily) {
            buttonText = '本日埋め合わせログイン済み';
          } else if (resignInfoData.resignCntMonthly >= resignInfoData.resignLimitMonthly) {
            buttonText = '今月埋め合わせログイン上限';
          } else if (resignInfoData.qualityCnt < resignInfoData.cost) {
            buttonText = 'ログインカードが不足しています';
          }

          return ListView(
            padding: const EdgeInsets.all(16),
            children: [
              ListTile(
                contentPadding: EdgeInsets.zero,
                title: const Text('今月の埋め合せログイン完了回数'),
                trailing: Text(
                  '${resignInfoData.resignCntMonthly}/${resignInfoData.resignLimitMonthly}',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal
                  ),
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                title: const Text('ログインカード'),
                trailing: Text(
                  '${resignInfoData.qualityCnt}/${resignInfoData.monthQualityCnt}枚',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal
                  ),
                ),
              ),
              const Text('受取可能'),
              Column(
                children: [
                  SizedBox(
                    width: 100,
                    height: 100,
                    child: CachedNetworkImage(
                      imageUrl: award!.icon
                    ),
                  ),
                  Text(award.name),
                  Text('x${award.cnt}')
                ],
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: theme.colorScheme.primary,
                  foregroundColor: theme.colorScheme.onPrimary
                ),
                onPressed: !(
                  resignInfoData.resignCntDaily >= resignInfoData.resignLimitDaily ||
                  resignInfoData.resignCntMonthly >= resignInfoData.resignLimitMonthly ||
                  resignInfoData.qualityCnt < resignInfoData.cost
                ) ?
                () async {
                  api.dailyCheckIn(resign: true).then((message) {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: const Text('メッセージ'),
                          content: Text(
                            message == 'OK' ? '${award.name} x${award.cnt}を受け取りました' : message
                          ),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text('閉じる')
                            )
                          ],
                        );
                      },
                    );

                    ref.invalidate(awardListNotifierProvider);
                    ref.invalidate(signInfoNotifierProvider);
                    ref.invalidate(resignInfoProvider);
                  });
                } : 
                null,
                child: Text(buttonText)
              ),
              if (taskList.valueOrNull != null) ...[
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  child: Text('埋め合わせログイン任務'),
                ),
                ...taskList.value!.list.map((task) {
                  return ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text(task.name),
                    trailing: switch (task.status) {
                      'TT_Award' => const Icon(Icons.check),
                      'TT_Done' => ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: theme.colorScheme.primary,
                          foregroundColor: theme.colorScheme.onPrimary
                        ),
                        onPressed: () async {
                          await api.taskAward(task.id);
                          ref.read(taskListNotifierProvider.notifier).refresh();
                          ref.invalidate(resignInfoProvider);
                        },
                        child: const Text('受取'),
                      ),
                      'TT_Ready' => ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: theme.colorScheme.primary,
                          foregroundColor: theme.colorScheme.onPrimary
                        ),
                        onPressed: () async {
                          await api.completeTask(task.id);
                          ref.read(taskListNotifierProvider.notifier).refresh();
                        },
                        child: const Text('完了'),
                      ),
                      _ => Text(task.status.toString())
                    },
                  );
                })
              ]
            ],
          );
        },
        error: (error, stackTrace) => const Text('aaa'),
        loading: () => const Center(child: CircularProgressIndicator())
      )
    );
  }
}
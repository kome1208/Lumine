import 'dart:convert';
import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:lumine/core/api/model/hoyolab_api_error.dart';
import 'package:lumine/core/preference/notification/app_notification_provider.dart';
import 'package:lumine/core/provider/hoyolab_api.dart';
import 'package:lumine/core/router/router.dart';
import 'package:lumine/features/daily_bonus/data/sign_info_notifier_provider.dart';
import 'package:lumine/features/home/data/daily_note.dart';
import 'package:lumine/features/home/data/exchange_code.dart';
import 'package:flutter/material.dart';
import 'package:lumine/utils/date_formatter.dart';
import 'package:lumine/features/exchange_code/data/saved_codes_provider.dart';
import 'package:lumine/widgets/error_view.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:waterfall_flow/waterfall_flow.dart';

class HomeView extends HookConsumerWidget  {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useAutomaticKeepAlive(wantKeepAlive: true);
    final dailyNote = ref.watch(dailyNoteNotifierProvider);
    final exchangeCode = ref.watch(exchangeCodeNotifierProvider);
    final savedCodes = ref.watch(savedCodesNotifierProvider);

    final api = ref.watch(hoYoLABAPINotifierProvider);

    final notificationSettings = ref.watch(appNotificationNotifierProvider);

    ref.listen(
      signInfoNotifierProvider,
      (previous, next) {
        if (next.isLoading || next.isRefreshing || next.isReloading) return;
        if (next.valueOrNull?.isSign == false) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text('受け取り可能なデイリーボーナスがあります'),
            behavior: SnackBarBehavior.floating,
            showCloseIcon: true,
            action: SnackBarAction(
              label: '開く',
              onPressed: () {
                ScaffoldMessenger.of(context).hideCurrentSnackBar();
                DailyBonusRoute().push(context);
              },
            ),
          ));
        }
      }
    );

    ref.listen(
      exchangeCodeNotifierProvider,
      (previous, next) {
        if (next.isLoading || next.isRefreshing || next.isReloading) return;
        if (next.hasError) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text('交換コードの取得に失敗しました'),
            behavior: SnackBarBehavior.floating,
            showCloseIcon: true,
            action: SnackBarAction(
              label: '再試行',
              onPressed: () {
                ref.read(exchangeCodeNotifierProvider.notifier).refresh();
              },
            ),
          ));
        }
      },
    );

    final showResinRemainingTime = useState(false);

    final theme = Theme.of(context);

    final cardColor = ElevationOverlay.applySurfaceTint(theme.colorScheme.surface, theme.colorScheme.primary, 3);

    Duration calcResinDiscountResetDays() {
      DateTime now = DateTime.now();

      int todayWeekday = now.weekday;

      int daysToNextMonday = 8 - todayWeekday;
      DateTime nextMonday = now.add(Duration(days: daysToNextMonday));

      DateTime nextMondayMorning = DateTime(
        nextMonday.year,
        nextMonday.month,
        nextMonday.day,
        5,
        0,
        0,
      );

      Duration difference = nextMondayMorning.difference(now);

      return difference;
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('ホーム'),
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          ref.read(dailyNoteNotifierProvider.notifier).refresh();
          ref.read(exchangeCodeNotifierProvider.notifier).refresh();
          ref.read(signInfoNotifierProvider.notifier).refresh();
        },
        child: dailyNote.when(
          data: (value) {
            final resinDiscountResetDays = calcResinDiscountResetDays();

            return SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Text('天然樹脂'),
                  ),
                  Card.filled(
                    margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    color: cardColor,
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/resin.png',
                            width: 100,
                            height: 100,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '${value.currentResin}/${value.maxResin}',
                                style: const TextStyle(
                                  fontSize: 36,
                                  fontWeight: FontWeight.w500
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  showResinRemainingTime.value = !showResinRemainingTime.value;
                                },
                                child: Text(
                                  value.resinRecoveryTime == '0' ?
                                  '上限に達しました' :
                                  '全回復予定: ${
                                    showResinRemainingTime.value ?
                                    DateFormatter.formatTime(int.parse(value.resinRecoveryTime) * 1000, showSeconds: false) :
                                    DateFormatter.formatDate(DateTime.now().millisecondsSinceEpoch + int.parse(value.resinRecoveryTime) * 1000, 'M/d H:mm')
                                  }',
                                  style: const TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      )
                    )
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Text('一般'),
                  ),
                  Card.filled(
                    margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    clipBehavior: Clip.hardEdge,
                    color: cardColor,
                    child: Column(
                      children: [
                        ListTile(
                          contentPadding: EdgeInsets.symmetric(horizontal: 16),
                          leading: Image.asset(
                            'assets/icons/daily_task.png',
                            width: 32,
                            height: 32,
                          ),
                          title: const Text('依頼任務', style: TextStyle(fontSize: 18)),
                          subtitle: Text(
                            value.isExtraTaskRewardReceived ? '追加報酬受領済み' : '追加報酬未受領',
                            style: const TextStyle(fontSize: 16)
                          ),
                          trailing: Text(
                            '${value.finishedTaskNum}/${value.totalTaskNum}',
                            style: const TextStyle(fontSize: 16),
                            overflow: TextOverflow.ellipsis,
                          ),
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title: const Text('依頼任務'),
                                  content: Wrap(
                                    children: [
                                      ListTile(
                                        contentPadding: EdgeInsets.zero,
                                        title: const Text('デイリー依頼'),
                                        subtitle: Wrap(
                                          direction: Axis.horizontal,
                                          children: value.dailyTask.taskRewards.map((reward) =>
                                            Container(
                                              width: 32,
                                              height: 32,
                                              margin: const EdgeInsets.only(right: 8),
                                              decoration: BoxDecoration(
                                                color: Theme.of(context).colorScheme.secondaryContainer,
                                                borderRadius: BorderRadius.circular(16)
                                              ),
                                              child: Image.asset(
                                                reward.status == 'TaskRewardStatusTakenAward' ? 'assets/icons/daily_task_finished.png' : 'assets/icons/daily_task_unfinished.png',
                                                color: reward.status == 'TaskRewardStatusTakenAward' ? Colors.lightGreen : Theme.of(context).colorScheme.onSecondaryContainer
                                              ),
                                            )
                                          ).toList(),
                                        ),
                                      ),
                                      ListTile(
                                        contentPadding: EdgeInsets.zero,
                                        title: const Text('修練ポイント'),
                                        subtitle: Wrap(
                                          direction: Axis.horizontal,
                                          children: value.dailyTask.attendanceRewards.map((reward) =>
                                            Stack(
                                              children: [
                                                Container(
                                                  width: 32,
                                                  height: 32,
                                                  margin: const EdgeInsets.only(right: 8),
                                                  decoration: BoxDecoration(
                                                    color: Theme.of(context).colorScheme.secondaryContainer,
                                                    borderRadius: BorderRadius.circular(16)
                                                  ),
                                                  child: Image.asset(
                                                    reward.status == 'AttendanceRewardStatusTakenAward' ? 'assets/icons/daily_task_finished.png' : 'assets/icons/explore_not_complete.png',
                                                    color: reward.status == 'AttendanceRewardStatusWaitTaken' ?
                                                    Colors.orange :
                                                    reward.status == 'AttendanceRewardStatusTakenAward' ? Colors.lightGreen :  Theme.of(context).colorScheme.onSecondaryContainer,
                                                  )
                                                ),
                                                Container(
                                                  padding: const EdgeInsets.all(1),
                                                  width: 32,
                                                  height: 32,
                                                  child: CircularProgressIndicator(
                                                    color: Colors.purple.shade300,
                                                    backgroundColor: Theme.of(context).colorScheme.onSecondary,
                                                    value: reward.progress / 2 * 01,
                                                    strokeWidth: 2,
                                                  ),
                                                ),
                                              ],
                                            )
                                          ).toList(),
                                        ),
                                      ),
                                      ListTile(
                                        contentPadding: EdgeInsets.zero,
                                        title: const Text('長期修練ポイント'),
                                        subtitle: Text('リセットまで${(value.dailyTask.storedAttendanceRefreshCountdown / 86400).truncate()}日'),
                                        trailing: Wrap(
                                          direction: Axis.horizontal,
                                          children: [
                                            Image.asset('assets/icons/stored_attendance_icon.png', width: 24, height: 24),
                                            Text('x${value.dailyTask.storedAttendance}', style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xffa67fff)))
                                          ],
                                        ),
                                      )
                                    ]
                                  ),
                                  actions: [
                                    TextButton(
                                      child: const Text('閉じる'),
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                    )
                                  ],
                                );
                              },
                            );
                          },
                        ),
                        ListTile(
                          contentPadding: EdgeInsets.symmetric(horizontal: 16),
                          leading: Image.asset(
                            'assets/icons/discount.png',
                            width: 32,
                            height: 32,
                          ),
                          title: const Text('週ボス樹脂半減回数', style: TextStyle(fontSize: 18)),
                          subtitle: Text(
                            'リセットまで: ${resinDiscountResetDays.inDays > 0 ? '${resinDiscountResetDays.inDays}日' : ''}${resinDiscountResetDays.inHours % 24}時間',
                            style: const TextStyle(fontSize: 16)
                          ),
                          trailing: Text(
                            '${value.resinDiscountNumLimit - value.remainResinDiscountNum}/${value.resinDiscountNumLimit}',
                            style: const TextStyle(fontSize: 16),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        ListTile(
                          contentPadding: EdgeInsets.symmetric(horizontal: 16),
                          leading: Image.asset(
                            'assets/icons/home_coin.png',
                            width: 32,
                            height: 32,
                          ),
                          title: const Text('洞天宝銭', style: TextStyle(fontSize: 18)),
                          subtitle: Text(value.homeCoinRecoveryTime == '0' ?
                            '上限に達しました' :
                            '全回復予定: ${DateFormatter.formatDate(DateTime.now().millisecondsSinceEpoch + int.parse(value.homeCoinRecoveryTime) * 1000, 'M/d H:mm')}',
                            style: const TextStyle(fontSize: 16)
                          ),
                          trailing: Text(
                            '${value.currentHomeCoin}/${value.maxHomeCoin}',
                            style: const TextStyle(fontSize: 16),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        ListTile(
                          contentPadding: EdgeInsets.symmetric(horizontal: 16),
                          leading: Image.asset(
                            'assets/icons/transformer.png',
                            width: 32,
                            height: 32,
                          ),
                          title: const Text('参量物質変化器', style: TextStyle(fontSize: 18)),
                          subtitle: Text(
                            value.transformer.recoveryTime['reached'] ? '準備完了' : '準備中',
                            style: const TextStyle(fontSize: 16),
                            overflow: TextOverflow.ellipsis,
                          ),
                          trailing: value.transformer.recoveryTime['reached'] ? null : Text(
                            '${value.transformer.recoveryTime['Day'] > 0 ? '${value.transformer.recoveryTime["Day"]}日' : ''}${value.transformer.recoveryTime['Hour'] > 0 ? '${value.transformer.recoveryTime["Hour"]}時間' : ''}${value.transformer.recoveryTime['Minute'] > 0 ? '${value.transformer.recoveryTime["Minute"]}分' : ''}${value.transformer.recoveryTime['Second'] > 0 ? '1分未満' : ''}',
                            style: TextStyle(
                              fontSize: 16,
                              overflow: TextOverflow.ellipsis,
                            )
                          ),
                        ),
                        ListTile(
                          leading: Image.asset(
                            'assets/icons/archon_quest.png',
                            width: 32,
                            height: 32,
                          ),
                          title: const Text('魔神任務', style: TextStyle(fontSize: 18)),
                          subtitle: Text(
                            value.archonQuestProgress.list.isNotEmpty ?
                            value.archonQuestProgress.list.first!.chapterNum :
                            '完了',
                            style: const TextStyle(fontSize: 16),
                            overflow: TextOverflow.ellipsis,
                          ),
                          trailing: value.archonQuestProgress.list.isNotEmpty ? Text(
                          switch (value.archonQuestProgress.list.first?.status) {
                              'StatusNotOpen' => '未開放',
                              'StatusOngoing' => '進行中',
                              'StatusOpen' => '解放済み',
                              _ => '${value.archonQuestProgress.list.first?.status}'
                            },
                            style: const TextStyle(fontSize: 16),
                            overflow: TextOverflow.ellipsis,
                          ) : null,
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title: const Text('魔神任務'),
                                  content: Wrap(
                                    children: value.archonQuestProgress.list.map((quest) {
                                      return ListTile(
                                        contentPadding: const EdgeInsets.all(0),
                                        title: Text(quest?.chapterTitle ?? '?', style: const TextStyle(fontSize: 20)),
                                        subtitle: Text(quest?.chapterNum ?? '?', style: const TextStyle(fontSize: 16)),
                                        trailing: Text(
                                          switch (quest?.status) {
                                            'StatusNotOpen' => '未開放',
                                            'StatusOngoing' => '進行中',
                                            'StatusOpen' => '解放済み',
                                            _ => '${quest?.status}'
                                          },
                                          style: const TextStyle(fontSize: 16)
                                        ),
                                      );
                                    }).toList()
                                  ),
                                  actions: [
                                    TextButton(
                                      child: const Text('閉じる'),
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                    )
                                  ],
                                );
                              },
                            );
                          }
                        ),
                      ],
                    )
                  ),
                  if (value.expeditions.isNotEmpty) ...[
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Text('探索派遣'),
                    ),
                    Card.filled(
                      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      color: cardColor,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 16, right: 16, left: 10),
                        child: Column(
                          children: value.expeditions.map((expedition) {
                            return ListTile(
                              contentPadding: EdgeInsets.zero,
                              leading: Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  Container(
                                    width: 40,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: expedition.status == 'Ongoing' ? Colors.amber.shade200 : Colors.lightGreen,
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(20)
                                    ),
                                  ),
                                  CachedNetworkImage(
                                    imageUrl: expedition.avatarSideIcon,
                                    width: 56,
                                    height: 56,
                                  )
                                ],
                              ),
                              title: Padding(
                                padding: const EdgeInsets.only(top: 16),
                                child: Text(
                                  expedition.status == 'Ongoing' ? '探索中' : '終了',
                                  style: const TextStyle(
                                    fontSize: 18
                                  )
                                )
                              ),
                              trailing: Padding(
                                padding: const EdgeInsets.only(top: 16),
                                child: Text(
                                  expedition.status == 'Ongoing'
                                    ? formatRemainingTime(int.parse(expedition.remainedTime) * 1000)
                                    : '',
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal
                                  ),
                                ),
                              )
                            );
                          }).toList(),
                        )
                      ),
                    )
                  ],
                  exchangeCode.when(
                    skipLoadingOnReload: true,
                    skipError: true,
                    data: (exchangeCodeData) {
                      if (exchangeCodeData != null) {
                        return Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16),
                              child: Row(
                                children: [
                                  Text('交換コード'),
                                  SizedBox(width: 4),
                                  Text(
                                    exchangeCodeData.bonuses.isEmpty ?
                                    '(まもなく公開...)' :
                                    '(${DateFormatter.formatDate(exchangeCodeData.offlineAt * 1000, 'M/d H:mm')}まで)'
                                  ),
                                  const Spacer(),
                                  (exchangeCode.isLoading || exchangeCode.isRefreshing || exchangeCode.isReloading) ?
                                  const SizedBox(
                                    width: 16,
                                    height: 16,
                                    child: CircularProgressIndicator(strokeWidth: 2),
                                  ) :
                                  GestureDetector(
                                    onTap: () {
                                      ref.read(exchangeCodeNotifierProvider.notifier).refresh();
                                    },
                                    child: const Icon(Icons.refresh, size: 20)
                                  )
                                ]
                              ),
                            ),
                            if (exchangeCodeData.bonuses.isNotEmpty) Card.filled(
                              color: cardColor,
                              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                              child: Column(
                                children: [
                                  if (exchangeCodeData.bonuses.where((item) => (item.codeStatus == 'ON' && !savedCodes.any((codeInfo) => jsonDecode(codeInfo)['code'] == item.exchangeCode))).isEmpty)
                                  ListTile(
                                    contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                    title: const Text('全て交換済みです'),
                                    trailing: TextButton(
                                      style: TextButton.styleFrom(
                                        foregroundColor: theme.colorScheme.onPrimary,
                                        backgroundColor: theme.colorScheme.primary
                                      ),
                                      child: const Text('表示'),
                                      onPressed: () {
                                        ExchangeCodeRoute().push(context);
                                      },
                                    ),
                                  )
                                  else ...exchangeCodeData.bonuses.where((item) => (item.codeStatus == 'ON' && !savedCodes.any((codeInfo) => jsonDecode(codeInfo)['code'] == item.exchangeCode))).map((bonus) {
                                    final exchangeCode = bonus.exchangeCode;
                                    final iconBonuses = bonus.iconBonuses;

                                    return ListTile(
                                      contentPadding: EdgeInsets.symmetric(horizontal: 16),
                                      title: Text(
                                        exchangeCode,
                                        style: const TextStyle(fontSize: 18),
                                      ),
                                      subtitle: Row(
                                        children: iconBonuses.map((iconBonus) {
                                          return Row(
                                            children: [
                                              CachedNetworkImage(
                                                imageUrl: iconBonus.iconUrl,
                                                width: 24,
                                                height: 24
                                              ),
                                              Text(
                                                'x${iconBonus.bonusNum.toString()}',
                                                style: const TextStyle(
                                                  fontSize: 16
                                                ),
                                              ),
                                              const SizedBox(width: 6)
                                            ],
                                          );
                                        }).toList(),
                                      ),
                                      trailing: TextButton(
                                        style: TextButton.styleFrom(
                                          foregroundColor: theme.colorScheme.onPrimary,
                                          backgroundColor: theme.colorScheme.primary
                                        ),
                                        child: const Text('交換'),
                                        onPressed: () {
                                          ref.read(savedCodesNotifierProvider.notifier).apply(exchangeCode).then((message) {
                                            if (!context.mounted) return;
                                            showDialog(
                                              context: context,
                                              barrierDismissible: false,
                                              builder: (context) {
                                                return AlertDialog(
                                                  title: const Text('交換結果'),
                                                  content: Text(message),
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
                                          });
                                        },
                                      ),
                                    );
                                  }),
                                ]
                              )
                            ) else WaterfallFlow.builder(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              gridDelegate: const SliverWaterfallFlowDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 5,
                                crossAxisSpacing: 8,
                                mainAxisSpacing: 8,
                              ),
                              itemCount: exchangeCodeData.bonusesSummary.iconBonuses.length,
                              itemBuilder: (context, index) {
                                final iconBonus = exchangeCodeData.bonusesSummary.iconBonuses[index];

                                return GridTile(
                                  child: Column(
                                    children: [
                                      AspectRatio(
                                        aspectRatio: 1,
                                        child: CachedNetworkImage(
                                          imageUrl: iconBonus.iconUrl
                                        ),
                                      ),
                                      Text('x${iconBonus.bonusNum}')
                                    ],
                                  )
                                );
                              },
                            ),
                          ]
                        );
                      }

                      return SizedBox();
                    },
                    error: (e, s) => SizedBox(),
                    loading: () => const SizedBox(),
                  ),
                ],
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
                  TextButton(
                    onPressed: () {
                      ref.read(dailyNoteNotifierProvider.notifier).refresh();
                      ref.read(exchangeCodeNotifierProvider.notifier).refresh();
                    },
                    child: const Text('再試行')
                  ),
                  if (error is HoYoLABAPIError && error.code == 10102) 
                  TextButton(
                    onPressed: () async {
                      await api.changeDataSwitch(3, true);
                      ref.read(dailyNoteNotifierProvider.notifier).refresh();
                    },
                    child: const Text('公開設定を変更して再試行')
                  )
                ],
              ),
            );
          },
          loading: () {
            return const Center(child: CircularProgressIndicator());
          }
        )
      ),
      floatingActionButton: (!notificationSettings.enabled && Platform.isAndroid) ?
      FloatingActionButton(
        child: Icon(Icons.notifications_outlined),
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text('通知が利用可能'),
                content: Text('アプリの通知を有効にすると、天然樹脂回復や洞天宝銭、参量物質変化器の利用可能になった時に通知を受け取ることができます'),
                actions: [
                  TextButton(
                    child: Text('閉じる'),
                    onPressed: () {
                      Navigator.pop(context);
                    }
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      foregroundColor: theme.colorScheme.onPrimary,
                      backgroundColor: theme.colorScheme.primary
                    ),
                    child: Text('設定へ'),
                    onPressed: () {
                      Navigator.pop(context);
                      NotificationSettingsRoute().push(context);
                    }
                  )
                ]
              );
            }
          );
        }
      ) : null,
    );
  }
}

String formatRemainingTime(int timestamp) {
  DateTime now = DateTime.now();
  DateTime date = DateTime.fromMillisecondsSinceEpoch(now.millisecondsSinceEpoch + timestamp);

  Duration difference = date.difference(now);

  if (difference.inMinutes < 60) {
    return '残り:${difference.inMinutes}分';
  } else {
    final remainingMinutes = difference.inMinutes % 60;
    return '残り:${difference.inHours}時間$remainingMinutes分';
  }
}
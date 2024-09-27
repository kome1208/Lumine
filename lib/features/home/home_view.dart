import 'package:cached_network_image/cached_network_image.dart';
import 'package:collection/collection.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:lumine/core/api/model/hoyolab_api_error.dart';
import 'package:lumine/core/preference/appearance/appearance_provider.dart';
import 'package:lumine/core/preference/notification/app_notification_provider.dart';
import 'package:lumine/core/provider/hoyolab_api.dart';
import 'package:lumine/features/daily_bonus/data/award_list_notifier_provider.dart';
import 'package:lumine/features/daily_bonus/data/sign_info_notifier_provider.dart';
import 'package:lumine/features/home/data/daily_note.dart';
import 'package:lumine/features/home/data/exchange_code.dart';
import 'package:flutter/material.dart';
import 'package:lumine/utils/date_formatter.dart';
import 'package:lumine/features/exchange_code/data/saved_codes_provider.dart';
import 'package:lumine/widgets/my_card.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:waterfall_flow/waterfall_flow.dart';
import 'package:timezone/timezone.dart' as tz;

class HomeView extends HookConsumerWidget  {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useAutomaticKeepAlive(wantKeepAlive: true);
    final dailyNote = ref.watch(dailyNoteNotifierProvider);
    final exchangeCode = ref.watch(exchangeCodeNotifierProvider);

    final dailyAwardSignInfo = ref.watch(signInfoNotifierProvider);
    final dailyAwardList = ref.watch(awardListNotifierProvider);

    final api = ref.watch(hoYoLABAPINotifierProvider);

    final notificationSettings = ref.watch(appNotificationNotifierProvider);

    final showResinRemainingTime = useState(false);

    return Scaffold(
      appBar: AppBar(
        title: const Text('ホーム'),
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          ref.read(dailyNoteNotifierProvider.notifier).refresh();
          ref.read(exchangeCodeNotifierProvider.notifier).refresh();
        },
        child: dailyNote.when(
          data: (value) {
            if (notificationSettings.enabled) {
              if (notificationSettings.resinRemindEnabled) {
                final resinReminderOffset = notificationSettings.resinRemindOffset.truncate();
                final time = (int.parse(value.resinRecoveryTime)) - (96000 - (60 * 8 * resinReminderOffset)) ;
                setReminder(
                  '天然樹脂回復通知',
                  '天然樹脂が$resinReminderOffsetに達しました',
                  time,
                  0
                );
              }

              if (notificationSettings.expeditionFinishRemindEnabled && value.expeditions.isNotEmpty) {
                switch (notificationSettings.expeditionFinishRemindMode) {
                  case 'zenninndone':
                    setReminder(
                      '探索派遣完了通知',
                      '全員探索が完了しました',
                      int.parse(value.expeditions.reduce((a, b) => int.parse(a.remainedTime) > int.parse(b.remainedTime) ? a : b).remainedTime),
                      1
                    );
                    break;
                  case 'hitorizutsu':
                    value.expeditions.forEachIndexed((i, expedition) {
                      setReminder(
                        '探索派遣完了通知',
                        '一件の探索派遣が完了しました',
                        int.parse(expedition.remainedTime),
                        i + 1,
                      );
                    });
                    break;
                }
              }

              if (notificationSettings.transformerRemindEnabled && !value.transformer.recoveryTime['reached']) {
                final recoveryTime = value.transformer.recoveryTime;

                setReminder(
                  '参量物質変化器の準備完了',
                  '参量物質変化器が再び使用可能になりました',
                  Duration(
                    days: recoveryTime['Day'],
                    hours: recoveryTime['Hour'],
                    minutes: recoveryTime['Minute'],
                    seconds: recoveryTime['Second'],
                  ).inSeconds,
                  6
                );
              }

              if (notificationSettings.homeCoinRemindEnabled && value.homeCoinRecoveryTime != '0') {
                setReminder(
                  '洞天宝銭が上限に達しました',
                  '現在の洞天宝銭は${value.currentHomeCoin}/${value.maxHomeCoin}です',
                  int.parse(value.homeCoinRecoveryTime),
                  7
                );
              }
            }

            return SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                    child: Text('天然樹脂'),
                  ),
                  MyCard(
                    margin: const EdgeInsets.symmetric(horizontal: 16),
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
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8
                    ),
                    child: Text('一般'),
                  ),
                  MyCard(
                    margin: const EdgeInsets.symmetric(horizontal: 16),
                    child: Center(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: ListTile(
                                  leading: Image.asset(
                                    'assets/icons/daily_task.png',
                                    width: 32,
                                    height: 32,
                                  ),
                                  title: const Text('依頼任務', style: TextStyle(fontSize: 18)),
                                  subtitle: Text(
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
                                )
                              ),
                              Expanded(
                                child: ListTile(
                                  leading: Image.asset(
                                    'assets/icons/discount.png',
                                    width: 32,
                                    height: 32,
                                  ),
                                  title: const Text('週ボス', style: TextStyle(fontSize: 18)),
                                  subtitle: Text(
                                    '${value.resinDiscountNumLimit - value.remainResinDiscountNum}/${value.resinDiscountNumLimit}',
                                    style: const TextStyle(fontSize: 16),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                )
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: ListTile(
                                  leading: Image.asset(
                                    'assets/icons/home_coin.png',
                                    width: 32,
                                    height: 32,
                                  ),
                                  title: const Text('洞天宝銭', style: TextStyle(fontSize: 18)),
                                  subtitle: Text(
                                    '${value.currentHomeCoin}/${value.maxHomeCoin}',
                                    style: const TextStyle(fontSize: 16),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  onTap: () {
                                    showDialog(
                                      context: context,
                                      builder: (context) {
                                        return AlertDialog(
                                          title: const Text('洞天宝銭'),
                                          content: ListTile(
                                            contentPadding: const EdgeInsets.all(0),
                                            title: Text('${value.currentHomeCoin}/${value.maxHomeCoin}', style: const TextStyle(fontSize: 20)),
                                            subtitle: Text(value.homeCoinRecoveryTime == '0' ?
                                              '上限に達しました' :
                                              '全回復予定: ${DateFormatter.formatDate(DateTime.now().millisecondsSinceEpoch + int.parse(value.homeCoinRecoveryTime) * 1000, 'M/d H:mm')}',
                                              style: const TextStyle(fontSize: 16)
                                            ),
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
                                )
                              ),
                              if (ref.watch(appearanceNotifierProvider.select((settings) => settings.replaceArchonQuest)) && value.transformer.obtained)
                              Expanded(
                                child: ListTile(
                                  leading: Image.asset(
                                    'assets/icons/transformer.png',
                                    width: 32,
                                    height: 32,
                                  ),
                                  title: const Text('変化器', style: TextStyle(fontSize: 18)),
                                  subtitle: Text(
                                    value.transformer.recoveryTime['reached'] ? '準備完了' : '準備中',
                                    style: const TextStyle(fontSize: 16),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  onTap: () {
                                    showDialog(
                                      context: context,
                                      builder: (context) {
                                        final tRecoveryTime = value.transformer.recoveryTime;
                                        return AlertDialog(
                                          title: const Text('参量物質変化器'),
                                          content: ListTile(
                                            contentPadding: const EdgeInsets.all(0),
                                            title: const Text('クールタイム', style: TextStyle(fontSize: 18)),
                                            subtitle: Text(
                                              tRecoveryTime['reached'] ? '準備完了': '${tRecoveryTime['Day']}日${tRecoveryTime['Hour']}時間${tRecoveryTime['Minute']}分',
                                              style: const TextStyle(fontSize: 16)
                                            ),
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
                                )
                              )
                              else Expanded(
                                child: ListTile(
                                  leading: Image.asset(
                                    'assets/icons/archon_quest.png',
                                    width: 32,
                                    height: 32,
                                  ),
                                  title: const Text('魔神任務', style: TextStyle(fontSize: 18)),
                                  subtitle: Text(
                                    value.archonQuestProgress.list.isNotEmpty ? value.archonQuestProgress.list.first!.chapterNum : '完了',
                                    style: const TextStyle(fontSize: 16),
                                    overflow: TextOverflow.ellipsis,
                                  ),
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
                                                trailing: Text(quest?.status == 'StatusNotOpen' ? '未開放' : '解放済み', style: const TextStyle(fontSize: 16)),
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
                                )
                              ),
                            ],
                          )
                        ],
                      )
                    ),
                  ),
                  if (value.expeditions.isNotEmpty) ...[
                    const Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8
                      ),
                      child: Text('探索派遣'),
                    ),
                    MyCard(
                      margin: const EdgeInsets.symmetric(horizontal: 16),
                      padding: const EdgeInsets.only(left: 8, right: 8, bottom: 16),
                      child: Column(
                        children: value.expeditions.map((expedition) {
                          // return Row(
                          //   children: [
                          //     Stack(
                          //       alignment: Alignment.bottomCenter,
                          //       children: [
                          //         Container(
                          //           width: 40,
                          //           height: 40,
                          //           decoration: BoxDecoration(
                          //             border: Border.all(
                          //               color: expedition.status == 'Ongoing' ? Colors.amber.shade200 : Colors.lightGreen,
                          //               width: 2,
                          //             ),
                          //             borderRadius: BorderRadius.circular(20)
                          //           ),
                          //         ),
                          //         Image.network(
                          //           expedition.avatarSideIcon,
                          //           width: 56,
                          //           height: 56,
                          //         )
                          //       ],
                          //     ),
                          //     const SizedBox(width: 8),
                          //     Expanded(
                          //       child: Padding(
                          //         padding: const EdgeInsets.only(top: 16),
                          //         child: Text(
                          //           expedition.status == 'Ongoing' ? '探索中' : '探索完了',
                          //           style: const TextStyle(
                          //             fontSize: 18,
                          //           ),
                          //         ),
                          //       ),
                          //     ),
                          //     Padding(
                          //       padding: const EdgeInsets.only(top: 16),
                          //       child: Text(
                          //         expedition.status == 'Ongoing'
                          //             ? formatRemainingTime(int.parse(expedition.remainedTime) * 1000)
                          //             : '',
                          //         style: const TextStyle(
                          //           fontSize: 16,
                          //         ),
                          //       ),
                          //     ),
                          //   ],
                          // );
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
                      ),
                    )
                  ],
                  if (dailyAwardList.value != null && dailyAwardSignInfo.value != null && dailyAwardSignInfo.value!.isSign == false) ...[
                    const Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8
                      ),
                      child: Text('デイリーボーナス'),
                    ),
                    MyCard(
                      margin: const EdgeInsets.symmetric(horizontal: 16),
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      child: ListTile(
                        contentPadding: EdgeInsets.zero,
                        leading: SizedBox(
                          width: 56,
                          height: 56,
                          child: CachedNetworkImage(
                            imageUrl: dailyAwardList.value!.awards[dailyAwardSignInfo.value!.totalSignDay].icon
                          ),
                        ),
                        title: Text(
                          dailyAwardList.value!.awards[dailyAwardSignInfo.value!.totalSignDay].name,
                          style: const TextStyle(
                            fontSize: 18,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        subtitle: Text(
                          'x${dailyAwardList.value!.awards[dailyAwardSignInfo.value!.totalSignDay].cnt}',
                          style: const TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        trailing: ElevatedButton(
                          child: const Text('受け取る'),
                          onPressed: () {
                            final award = dailyAwardList.value!.awards[dailyAwardSignInfo.value!.totalSignDay];
                            ref.watch(hoYoLABAPINotifierProvider).dailyCheckIn().then((message) {
                              if (!context.mounted) return;
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

                              ref.read(awardListNotifierProvider.notifier).refresh();
                              ref.read(signInfoNotifierProvider.notifier).refresh();
                            });
                          },
                        ),
                      )
                    )
                  ],
                  if (exchangeCode.valueOrNull != null) ...[
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('交換コード'),
                          const SizedBox(width: 4),
                          Text(exchangeCode.value!.bonuses.isEmpty ? '(まもなく公開...)' : '(${DateFormatter.formatDate(exchangeCode.value!.offlineAt * 1000, 'M/d H:mm')}まで)'),
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
                        ],
                      )
                    ),
                    MyCard(
                      margin: const EdgeInsets.symmetric(horizontal: 16),
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      child: Column(
                        children: [
                          if (exchangeCode.value!.bonuses.isEmpty) WaterfallFlow.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            gridDelegate: const SliverWaterfallFlowDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 5,
                              crossAxisSpacing: 8,
                              mainAxisSpacing: 8,
                            ),
                            itemCount: exchangeCode.value!.bonusesSummary.iconBonuses.length,
                            itemBuilder: (context, index) {
                              final iconBonus = exchangeCode.value!.bonusesSummary.iconBonuses[index];

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
                          ...exchangeCode.value!.bonuses.where((item) => item.codeStatus == 'ON').map((bonus) {
                            final exchangeCode = bonus.exchangeCode;
                            final iconBonuses = bonus.iconBonuses;

                            return ListTile(
                              contentPadding: EdgeInsets.zero,
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
                              trailing: ElevatedButton(
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
                          })
                        ]
                      )
                    ),
                  ]
                ],
              )
            );
          },
          error: (error, stackTrace) {
            return Padding(
              padding: const EdgeInsets.all(16),
              child: Center(
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
                              content: SingleChildScrollView(
                                child: Text(stackTrace.toString())
                              ),
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
                        ref.read(dailyNoteNotifierProvider.notifier).refresh();
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
              ),
            );
          },
          loading: () {
            return const Center(child: CircularProgressIndicator());
          }
        )
      ),
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

Future<void> setReminder(String title, String message, int time, int id) async {
  if (time <= 0) return;
  final flnp = FlutterLocalNotificationsPlugin();

  const AndroidNotificationDetails androidPlatformChannelSpecifics =
  AndroidNotificationDetails(
    'com.kome1.lumine.notification',
    'reminder',
    importance: Importance.defaultImportance,
    priority: Priority.defaultPriority,
    showWhen: true,
  );

  const NotificationDetails platformChannelSpecifics = NotificationDetails(android: androidPlatformChannelSpecifics);

  final scheduledTime = tz.TZDateTime.now(tz.UTC).add(Duration(seconds: time));
  // final scheduledTime = tz.TZDateTime.now(tz.UTC).add(const Duration(seconds: 5));

  await flnp.zonedSchedule(
    id,
    title,
    message,
    scheduledTime,
    platformChannelSpecifics,
    uiLocalNotificationDateInterpretation: UILocalNotificationDateInterpretation.absoluteTime
  );
}
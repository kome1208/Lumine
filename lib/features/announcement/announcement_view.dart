import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lumine/features/announcement/data/event_list_provider.dart';
import 'package:flutter/material.dart';
import 'package:lumine/features/announcement/data/notice_list_provider.dart';
import 'package:lumine/utils/date_formatter.dart';
import 'package:lumine/widgets/my_card.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class AnnouncementView extends HookConsumerWidget{
  const AnnouncementView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useAutomaticKeepAlive(wantKeepAlive: true);

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('公式情報'),
          bottom: const TabBar(
            tabs: [
              Tab(
                text: 'イベント'
              ),
              Tab(
                text: 'お知らせ'
              ),
              Tab(
                text: 'ニュース'
              )
            ]
          ),
        ),
        body: const TabBarView(
          children: [
            _EventListView(),
            _NoticeListView(1),
            _NoticeListView(3)
          ]
        )
      ),
    );
  }
}

class _EventListView extends HookConsumerWidget {
  const _EventListView();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useAutomaticKeepAlive(wantKeepAlive: true);
    final eventList = ref.watch(eventListNotifierProvider);
    final eventListProvider = ref.read(eventListNotifierProvider.notifier);

    return eventList.when(
      skipLoadingOnReload: true,
      data: (eventListData) {
        return NotificationListener<ScrollNotification>(
          onNotification: (ScrollNotification scrollInfo) {
            if (scrollInfo.metrics.pixels == scrollInfo.metrics.maxScrollExtent) {
              eventListProvider.fetchMore();
            }
            return false;
          },
          child: RefreshIndicator(
            onRefresh: () async {
              await eventListProvider.refresh();
            },
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ...eventListData.list.map((event) {
                    Color statusColor = Colors.black;
                    String statusMessage = 'データなし';

                    if (event.status == 3) {
                      statusColor = Colors.lightGreen;
                      statusMessage = '${DateFormatter.formatDate(int.parse(event.end) * 1000, 'M/dd')}に終了';
                    } else if (event.status == 4) {
                      statusColor = Colors.grey;
                      statusMessage = '終了';
                    }

                    if (event.statusIng == 5) {
                      statusColor = Colors.red;
                      statusMessage = '審査中';
                    }

                    return MyCard(
                      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                      clipBehavior: Clip.hardEdge,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          AspectRatio(
                            aspectRatio: 16 / 9,
                            child: Stack(
                              children: [
                                CachedNetworkImage(
                                  imageUrl: event.bannerUrl,
                                  fit: BoxFit.cover,
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 8),
                                  decoration: BoxDecoration(
                                    color: statusColor.withOpacity(0.8),
                                    borderRadius: const BorderRadius.only(bottomRight: Radius.circular(16))
                                  ),
                                  child: Text(
                                    statusMessage,
                                    style: const TextStyle(
                                      color: Colors.white,
                                    )
                                  ),
                                )
                              ]
                            )
                          ),
                          ListTile(
                            title: Text(
                              event.name,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis
                            ),
                            subtitle: Text(
                              event.desc,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis
                            )
                          ),
                          TextButton(
                            onPressed: () {
                              launchUrl(
                                Uri.parse('https://hoyolab.com')
                                .replace(
                                  path: event.webPath
                                )
                              );
                            },
                            child: const Text('詳細を見る')
                          )
                        ],
                      ),
                    );
                  }),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: eventListData.isLast ?
                    const Text('リストの最後') :
                    const CircularProgressIndicator()
                  )
                ],
              ),
            ),
          )
        );
      },
      error: (error, stackTrace) {
        return Text(error.toString());
      },
      loading: () => const Center(child: CircularProgressIndicator())
    );
  }
}

class _NoticeListView extends HookConsumerWidget {
  final int type;
  const _NoticeListView(this.type);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useAutomaticKeepAlive(wantKeepAlive: true);
    final noticeList = ref.watch(noticeListNotifierProvider(type));
    final noticeListProvider = ref.read(noticeListNotifierProvider(type).notifier);

    return noticeList.when(
      skipLoadingOnReload: true,
      data: (noticeListData) {
        return NotificationListener<ScrollNotification>(
          onNotification: (ScrollNotification scrollInfo) {
            if (scrollInfo.metrics.pixels == scrollInfo.metrics.maxScrollExtent) {
              noticeListProvider.fetchMore();
            }
            return false;
          },
          child: RefreshIndicator(
            onRefresh: () async {
              noticeListProvider.refresh();
            },
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ...noticeListData.list.map((notice) {
                    return ListTile(
                      title: Text(notice.post.subject),
                      subtitle: Text(formatTimeAgo(notice.post.createdAt)),
                      trailing: notice.imageList.firstOrNull?.url != null ?
                      AspectRatio(
                        aspectRatio: 16 / 9,
                        child: CachedNetworkImage(
                          imageUrl: notice.imageList.first.url,
                          width: 100,
                          fit: BoxFit.cover
                        )
                      ) :
                      null,
                      onTap: () {
                        launchUrlString('https://www.hoyolab.com/article/${notice.post.postId}');
                      },
                    );
                  }),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: noticeListData.isLast ?
                    const Text('リストの最後') :
                    const CircularProgressIndicator()
                  )
                ],
              ),
            ),
          )
        );
      },
      error: (error, stackTrace) {
        return Center(child: Text(error.toString()));
      },
      loading: () => const Center(child: CircularProgressIndicator())
    );
  }
}

String formatTimeAgo(int timestamp) {
  DateTime now = DateTime.now();
  DateTime date = DateTime.fromMillisecondsSinceEpoch(timestamp * 1000);

  Duration difference = now.difference(date);

  if (difference.inSeconds < 60) {
    return '${difference.inSeconds}秒前';
  } else if (difference.inMinutes < 60) {
    return '${difference.inMinutes}分前';
  } else if (difference.inHours < 24) {
    return '${difference.inHours}時間前';
  } else {
    int diffInDays = difference.inDays;
    if (diffInDays <= 3) {
      return '$diffInDays日前';
    } else {
      return DateFormatter.formatDate(date.millisecondsSinceEpoch, 'MM/dd');
    }
  }
}
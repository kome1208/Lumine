import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lumine/features/announcement/data/event_list_provider.dart';
import 'package:flutter/material.dart';
import 'package:lumine/features/announcement/data/notice_list_provider.dart';
import 'package:lumine/utils/date_formatter.dart';
import 'package:lumine/widgets/error_view.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:http/http.dart' as http;

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

    final cardColor = ElevationOverlay.applySurfaceTint(Theme.of(context).colorScheme.surface, Theme.of(context).colorScheme.primary, 3);

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
                      statusMessage = '${DateFormatter.formatDate(int.parse(event.end) * 1000, 'M/d')}に終了';
                    } else if (event.status == 4) {
                      statusColor = Colors.grey;
                      statusMessage = '終了';
                    }

                    if (event.statusIng == 5) {
                      statusColor = Colors.red;
                      statusMessage = '審査中';
                    }

                    return Card.filled(
                      color: cardColor,
                      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                      clipBehavior: Clip.hardEdge,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          GestureDetector(
                            child: AspectRatio(
                              aspectRatio: 16 / 9,
                              child: Stack(
                                children: [
                                  Hero(
                                    tag: event.id,
                                    child: CachedNetworkImage(
                                      imageUrl: event.bannerUrl,
                                      fit: BoxFit.cover,
                                    )
                                  ),
                                  Container(
                                    padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 8),
                                    decoration: BoxDecoration(
                                      color: statusColor.withOpacity(0.8),
                                      borderRadius: const BorderRadius.only(bottomRight: Radius.circular(12))
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
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => Scaffold(
                                    appBar: AppBar(
                                      actions: [
                                        IconButton(
                                          icon: const Icon(Icons.more_horiz),
                                          onPressed: () {
                                            showModalBottomSheet(
                                              context: context,
                                              showDragHandle: true,
                                              enableDrag: true,
                                              builder: (context) {
                                                return _ImageActionSheet(imageUrl: event.bannerUrl);
                                              },
                                            );
                                          }
                                        )
                                      ],
                                    ),
                                    body: Container(
                                      constraints: const BoxConstraints.expand(),
                                      child: InteractiveViewer(
                                        child: Hero(
                                          tag: event.id,
                                          child: CachedNetworkImage(
                                            imageUrl: event.bannerUrl,
                                            fit: BoxFit.contain
                                          )
                                        ),
                                      )
                                    )
                                  )
                                )
                              );
                            },
                            onLongPress: () {
                              showModalBottomSheet(
                                context: context,
                                showDragHandle: true,
                                enableDrag: true,
                                builder: (context) {
                                  return _ImageActionSheet(imageUrl: event.bannerUrl);
                                },
                              );
                            },
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
      error: (error, stackTrace) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ErrorView(
            error: error,
            stackTrace: stackTrace,
          ),
          TextButton(
            onPressed: () {
              eventListProvider.refresh();
            },
            child: const Text('再試行')
          )
        ],
      ),
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
      error: (error, stackTrace) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ErrorView(
            error: error,
            stackTrace: stackTrace,
          ),
          TextButton(
            onPressed: () {
              noticeListProvider.refresh();
            },
            child: const Text('再試行')
          )
        ],
      ),
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

class _ImageActionSheet extends StatelessWidget {
  const _ImageActionSheet({
    required this.imageUrl,
  });

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ListTile(
          leading: const Icon(Icons.open_in_browser),
          title: const Text('画像をブラウザで開く'),
          onTap: () {
            launchUrlString(
              imageUrl,
              mode: LaunchMode.externalApplication
            );
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: const Icon(Icons.link),
          title: const Text('画像リンクをコピー'),
          onTap: () {
            Clipboard.setData(ClipboardData(text: imageUrl));
            Navigator.pop(context);
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('画像リンクをコピーしました'),
                showCloseIcon: true,
                behavior: SnackBarBehavior.floating,
              )
            );
          },
        ),
        ListTile(
          leading: const Icon(Icons.share),
          title: const Text('画像を共有'),
          onTap: () async {
            Navigator.pop(context);
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('画像をダウンロード中'),
                showCloseIcon: true,
                behavior: SnackBarBehavior.floating,
              )
            );
            try {
              final imageBytes = await http.readBytes(Uri.parse(imageUrl));

              await Share.shareXFiles([XFile.fromData(imageBytes, mimeType: 'image/png')]);
            } catch (e) {
              if (!context.mounted) return;
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('ダウンロードに失敗しました'),
                  showCloseIcon: true,
                  behavior: SnackBarBehavior.floating,
                )
              );
            }
          },
        ),
      ]
    );
  }
}
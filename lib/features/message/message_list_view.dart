import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lumine/core/provider/hoyolab_api.dart';
import 'package:lumine/features/message/data/hoyoplay.dart';
import 'package:lumine/features/message/data/message_category.dart';
import 'package:flutter/material.dart';
import 'package:lumine/features/message/data/unread_count_notifier_provider.dart';
import 'package:lumine/utils/date_formatter.dart';
import 'package:lumine/features/message/ui/view/message_view.dart';
import 'package:lumine/widgets/divider_with_text.dart';
import 'package:url_launcher/url_launcher_string.dart';

class MessageListView extends HookConsumerWidget{
  const MessageListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useAutomaticKeepAlive(wantKeepAlive: true);
    final brief = ref.watch(messageCategoryNotifierProvider);
    final launcherBanners = ref.watch(hoyoplayNotifierProvider);
    final pageController = usePageController();
    final currentPage = useState(0);

    return Scaffold(
      appBar: AppBar(
        title: const Text('メッセージ'),
        actions: [
          IconButton(
            onPressed: () async {
              ref.read(hoYoLABAPINotifierProvider).clearUserUnread().then((message) {
                ref.invalidate(messageCategoryNotifierProvider);
                ref.invalidate(unreadCountNotifierProvider);
                
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('全ての通知を消去しました'),
                    showCloseIcon: true,
                    behavior: SnackBarBehavior.floating,
                  )
                );
              });
            },
            tooltip: '通知を消去',
            icon: const Icon(Icons.cleaning_services)
          )
        ],
      ),
      body: switch (brief) {
        AsyncData(:final value) =>
        RefreshIndicator(
          onRefresh: () async {
            ref.read(messageCategoryNotifierProvider.notifier).refresh();
            ref.read(hoyoplayNotifierProvider.notifier).refresh();
          },
          child: ListView(
            children: [
              SizedBox(
                height: (MediaQuery.of(context).size.width - 32) / (69 / 32),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    PageView.builder(
                      controller: pageController,
                      itemCount: launcherBanners.value?.banners.length ?? 0,
                      itemBuilder: (context, index) {
                        final banner = launcherBanners.value!.banners[index];
                        return AspectRatio(
                          aspectRatio: 69 / 32,
                          child: Container(
                            clipBehavior: Clip.hardEdge,
                            margin: const EdgeInsets.symmetric(horizontal: 16),
                            decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.secondaryContainer,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: GestureDetector(
                              child: CachedNetworkImage(
                                imageUrl: banner.image.url,
                                fit: BoxFit.cover,
                              ),
                              onTap: () {
                                launchUrlString(banner.image.link);
                              },
                              onLongPress: () {
                                showModalBottomSheet(
                                  showDragHandle: true,
                                  context: context,
                                  builder: (context) {
                                    return Wrap(
                                      children: [
                                        ListTile(
                                          leading: const Icon(Icons.open_in_new),
                                          title: const Text('リンクを開く'),
                                          onTap: () {
                                            launchUrlString(banner.image.link);
                                            Navigator.pop(context);
                                          }
                                        ),
                                        ListTile(
                                          leading: const Icon(Icons.copy_outlined),
                                          title: const Text('リンクをコピー'),
                                          onTap: () {
                                            Clipboard.setData(ClipboardData(text: banner.image.url));
                                            Navigator.pop(context);
                                          }
                                        ),
                                        ListTile(
                                          leading: const Icon(Icons.image),
                                          title: const Text('画像を開く'),
                                          onTap: () {
                                            launchUrlString(banner.image.url);
                                            Navigator.pop(context);
                                          }
                                        ),
                                      ],
                                    );
                                  },
                                );
                              },
                            )
                          ),
                        );
                      },
                      onPageChanged: (index) {
                        currentPage.value = index;
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black.withOpacity(0.8),
                              foregroundColor: Colors.white
                            ),
                            onPressed: () {
                              if (pageController.hasClients) {
                                pageController.previousPage(
                                  duration: const Duration(milliseconds: 250),
                                  curve: Curves.fastOutSlowIn
                                );
                              }
                            },
                            icon: const Icon(Icons.chevron_left)
                          ),
                          IconButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black.withOpacity(0.8),
                              foregroundColor: Colors.white
                            ),
                            onPressed: () {
                              if (pageController.hasClients) {
                                pageController.nextPage(
                                  duration: const Duration(milliseconds: 250),
                                  curve: Curves.fastOutSlowIn
                                );
                              }
                            },
                            icon: const Icon(Icons.chevron_right)
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ...List.generate(
                    launcherBanners.value?.banners.length ?? 0,
                    (index) => GestureDetector(
                      onTap: () {
                        if (pageController.hasClients) {
                          pageController.animateToPage(
                            index,
                            duration: const Duration(milliseconds: 250),
                            curve: Curves.fastOutSlowIn
                          );
                        }
                      },
                      child: Container(
                        width: 12,
                        height: 12,
                        margin: const EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          color: index == currentPage.value ? Colors.white : null,
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(width: 1, color: Colors.white),
                        ),
                      ),
                    )
                  )
                ],
              ),
              ...value.systemBrief.map((brief) {
                return ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                  title: Text(titles[brief.category]),
                  subtitle: Text(
                    brief.message.isEmpty ?
                    '通知がありません' :
                    '${formatTimeAgo(int.parse(brief.sendTs))}・${brief.message}',
                    overflow: TextOverflow.ellipsis,
                  ),
                  trailing: int.parse(brief.unreadCount) > 0 ?
                  Container(
                    width: 18,
                    height: 18,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9),
                      color: Colors.red,
                    ),
                    child: Text(
                      brief.unreadCount,
                      style: const TextStyle(
                        color: Colors.white,
                      )
                    ),
                  ) : null,
                  onTap: () async {
                    await Navigator.push(context, MaterialPageRoute(builder: (context) => MessageView(category: brief.category, title: titles[brief.category])));
                    ref.invalidate(messageCategoryNotifierProvider);
                    ref.invalidate(unreadCountNotifierProvider);
                  },
                );
              }),
              
              if (launcherBanners.valueOrNull != null)
              for (var type in postTypes) ...[
                if (launcherBanners.valueOrNull!.posts.any((post) => post.type == type['type']))
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: DividerWithText(label: type['name'], style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                ),
                ...launcherBanners.valueOrNull!.posts.where((post) => post.type == type['type']).map((post) => 
                  ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                    title: Text(post.title),
                    subtitle: Text(post.date),
                    trailing: const Icon(Icons.open_in_new),
                    onTap: () async {
                      launchUrlString(post.link);
                    },
                  )
                )
              ]
            ],
          )
        ),
        AsyncError(:final error, :final stackTrace) => Center(
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
                  ref.read(messageCategoryNotifierProvider.notifier).refresh();
                },
                child: const Text('再試行')
              )
            ],
          ),
        ),
        _ => const Center(child: CircularProgressIndicator())
      }
    );
  }
}

final Map titles = {
  'system_v2': 'システム通知',
  'hoyolab_news': 'HoYoLABマスター',
  'activity': 'イベント通知',
  'creator': 'クリエイターアシスタント',
  'award': '報酬通知',
  'admin': 'コミュニティ管理員',
};

final List postTypes = [
  { 'type': 'POST_TYPE_ANNOUNCE', 'name': 'イベント' },
  { 'type': 'POST_TYPE_ACTIVITY', 'name': 'お知らせ' },
  { 'type': 'POST_TYPE_INFO', 'name': 'ニュース' }
];

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
    if (diffInDays < 3) {
      return '$diffInDays日前';
    } else {
      return DateFormatter.formatDate(date.millisecondsSinceEpoch, 'MM/dd');
    }
  }
}
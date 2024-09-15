import 'package:cached_network_image/cached_network_image.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lumine/features/message/data/user_notifications.dart';
import 'package:flutter/material.dart';
import 'package:lumine/utils/date_formatter.dart';
import 'package:lumine/widgets/my_card.dart';
import 'package:url_launcher/url_launcher.dart';

class MessageView extends HookConsumerWidget {
  const MessageView({super.key, required this.category, required this.title});

  final String category;
  final String title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifications = ref.watch(userNotificationsNotifierProvider(category));

    return Scaffold(
      appBar: AppBar(
        title: Text(title)
      ),
      body: NotificationListener<ScrollNotification>(
        onNotification: (ScrollNotification scrollInfo) {
          if (scrollInfo.metrics.pixels == scrollInfo.metrics.maxScrollExtent) {
            ref.read(userNotificationsNotifierProvider(category).notifier).fetchMoreNotifications();
          }
          return false;
        },
        child: notifications.value?.isEmpty == true ?
        const Center(child: Text('メッセージがありません')) :
        ListView.builder(
          itemCount: notifications.value?.length ?? 0,
          itemBuilder: (context, index) {
            final notification = notifications.value![index];
            return MyCard(
              clipBehavior: Clip.hardEdge,
              margin: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  if (notification.image != null) AspectRatio(
                    aspectRatio: 16 / 9,
                    child: CachedNetworkImage(
                      imageUrl: notification.image!.imageUrl
                    ),
                  ),
                  ListTile(
                    title: Text(notification.title, style: const TextStyle(fontSize: 18)),
                    subtitle: Text(notification.contentText, style: const TextStyle(fontSize: 16)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Text(formatTimeAgo(int.parse(notification.createdAt))),
                      ),
                      if (notification.jump?.webPath != null) TextButton(
                        onPressed: () async {
                          await launchUrl(
                            Uri.parse('https://www.hoyolab.com')
                            .replace(path: notification.jump!.webPath)
                          );
                        },
                        child: const Text('移動する'),
                      ),
                    ],
                  )
                ],
              ),
            );
          },
        ),
      )
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
    if (diffInDays < 3) {
      return '$diffInDays日前';
    } else {
      return DateFormatter.formatDate(date.millisecondsSinceEpoch, 'MM/dd');
    }
  }
}
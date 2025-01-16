import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:home_widget/home_widget.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lumine/features/home/data/daily_note.dart';
import 'package:lumine/main.dart';
import 'package:lumine/utils/date_formatter.dart';
import 'package:workmanager/workmanager.dart';

class TestView extends HookConsumerWidget {
  const TestView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useAutomaticKeepAlive(wantKeepAlive: true);

    final dailyNoteProvider = ref.watch(dailyNoteNotifierProvider);

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text('TestView'),
          ),
          SliverFillRemaining(
            child: Column(
              children: [
                Card.outlined(
                  child: ListTile(
                    leading: Icon(Icons.info_outline),
                    title: Text('Test Card'),
                    subtitle: Text('Test Card Subtitle')
                  )
                ),
                Wrap(
                  children: [
                    ElevatedButton(
                      child: Text('Register task'),
                      onPressed: () {
                        Workmanager().registerPeriodicTask(
                          dailyNoteTask,
                          dailyNoteTask,
                          frequency: Duration(days: 1),
                        );
                      }
                    ),
                    ElevatedButton(
                      child: Text('Cancel task'),
                      onPressed: () {
                        Workmanager().cancelByUniqueName(dailyNoteTask);
                      }
                    ),
                    ElevatedButton(
                      child: Text('Erase widget data'),
                      onPressed: () async {
                        await HomeWidget.saveWidgetData('daily_note_data', null);
                        await HomeWidget.saveWidgetData('last_update', null);
                        await HomeWidget.updateWidget(
                          qualifiedAndroidName: 'com.kome1.lumine.glance.HomeWidgetReceiver',
                        );
                      }
                    ),
                    ElevatedButton(
                      child: Text('Update widget data'),
                      onPressed: () async {
                        await HomeWidget.saveWidgetData('daily_note_data', jsonEncode(dailyNoteProvider.value!.toJson()));
                        await HomeWidget.saveWidgetData('last_update', DateFormatter.formatDate(DateTime.now().millisecondsSinceEpoch, 'M/d H:mm'));
                        await HomeWidget.updateWidget(
                          qualifiedAndroidName: 'com.kome1.lumine.glance.HomeWidgetReceiver',
                        );
                      }
                    ),
                  ]
                )
              ]
            ),
          ),
        ],
      )
    );
  }
}
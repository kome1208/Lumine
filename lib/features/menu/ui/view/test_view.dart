import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lumine/main.dart';
import 'package:workmanager/workmanager.dart';

class TestView extends HookConsumerWidget {
  const TestView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useAutomaticKeepAlive(wantKeepAlive: true);

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
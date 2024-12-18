import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TestView extends HookConsumerWidget {
  const TestView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useAutomaticKeepAlive(wantKeepAlive: true);

    return const Scaffold(
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
                )
              ]
            ),
          ),
        ],
      )
    );
  }
}
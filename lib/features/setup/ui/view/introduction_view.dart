import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class IntroductionView extends HookWidget {
  const IntroductionView({
    super.key,
    required this.onNext
  });

  final void Function() onNext;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              'assets/app_icon.png',
              width: 76,
              height: 76,
            ),
          ),
          const Text(
            'ようこそ',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 28
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: Text(
              'Lumineは、原神用に作られたステータス確認アプリです。',
              style: TextStyle(
                fontSize: 16
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: Text(
              '主な機能',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.normal
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: Text(
              """
・天然樹脂や探索派遣などのステータス確認
・深境螺旋や幻想シアター、その他ゲームデータの確認
・キャラクターステータスの確認
・デイリーボーナス、交換コードの報酬受け取り
・機能は今後も追加予定
""",
              style: TextStyle(fontSize: 16),
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(16),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: theme.colorScheme.onPrimary,
                backgroundColor: theme.colorScheme.primary
              ),
              onPressed: onNext,
              child: const Text('次へ')
            ),
          )
        ],
      )
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lumine/core/preference/appearance/appearance_provider.dart';

class ThemeSettingView extends HookConsumerWidget {
  const ThemeSettingView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final fontFamily = ref.watch(appearanceNotifierProvider.select((settings) => settings.fontFamily));
    final colorScheme = ref.watch(appearanceNotifierProvider.select((settings) => settings.colorScheme));
    final replaceArchonQuest = ref.watch(appearanceNotifierProvider.select((settings) => settings.replaceArchonQuest));
    final useDynamicColor = ref.watch(appearanceNotifierProvider.select((settings) => settings.useDynamicColor));

    return Scaffold(
      appBar: AppBar(
        title: const Text('テーマ設定'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text('アプリフォント'),
            subtitle:  Text(fontFamily),
            trailing: DropdownButton(
              items: const [
                DropdownMenuItem(
                  value: 'Default',
                  child: Text('デフォルト'),
                ),
                DropdownMenuItem(
                  value: 'NotoSansJP',
                  child: Text(
                    'NotoSansJP',
                    style: TextStyle(
                      fontFamily: 'NotoSansJP'
                    ),
                  ),
                ),
                DropdownMenuItem(
                  value: 'Genshin',
                  child: Text(
                    'Genshin',
                    style: TextStyle(
                      fontFamily: 'Genshin'
                    ),
                  ),
                ),
              ],
              value: fontFamily,
              onChanged: (value) {
                if (value != null) {
                  ref.read(appearanceNotifierProvider.notifier).setFontFamily(value);
                }
              },
            ),
          ),
          SwitchListTile(
            title: const Text('ダイナミックカラーを使用する'),
            subtitle: const Text('デバイスにダイナミックカラーが設定されている場合に使用可能(Android 12+のMaterial Youなど)'),
            value: useDynamicColor,
            onChanged: (value) {
              ref.read(appearanceNotifierProvider.notifier).setUseDynamicColor(value);
            },
          ),
          ListTile(
            title: const Text('テーマカラー'),
            trailing: Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                color: colorScheme,
              ),
            ),
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text('色を選択'),
                    content: SingleChildScrollView(
                      child: BlockPicker(
                        availableColors: const [
                          Colors.red,
                          Colors.pink,
                          Colors.purple,
                          Colors.deepPurple,
                          Colors.indigo,
                          Colors.blue,
                          Colors.lightBlue,
                          Colors.cyan,
                          Colors.teal,
                          Colors.green,
                          Colors.lightGreen,
                          Colors.lime,
                          Colors.yellow,
                          Colors.amber,
                          Colors.orange,
                          Colors.deepOrange,
                          Colors.brown,
                        ],
                        pickerColor: colorScheme,
                        onColorChanged: ref.watch(appearanceNotifierProvider.notifier).setColorScheme,
                      ),
                    ),
                    actions: [
                      ElevatedButton(
                        child: const Text('完了'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  );
                },
              );
            },
          ),
          SwitchListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 16),
            title: const Text('魔神任務の置き換え'),
            subtitle: const Text('ホームタブの魔神任務情報を参量物質変化器に置き換える'),
            onChanged: (value) {
              ref.watch(appearanceNotifierProvider.notifier).setReplaceArchonQuest(value);                
            },
            value: replaceArchonQuest
          ),
        ]
      )
    );
  }
}
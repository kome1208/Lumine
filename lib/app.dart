import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lumine/core/preference/appearance/appearance_provider.dart';
import 'package:lumine/main.dart';

class App extends HookConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final fontFamily = ref.watch(appearanceNotifierProvider.select((settings) => settings.fontFamily));
    final colorScheme = ref.watch(appearanceNotifierProvider.select((settings) => settings.colorScheme));
    final useDynamicColor = ref.watch(appearanceNotifierProvider.select((settings) => settings.useDynamicColor));
    
    return DynamicColorBuilder(
      builder: (lightDynamic, darkDynamic) {
        ThemeData getTheme(bool dynamicColor) {
          final defaultColorScheme = ColorScheme.fromSeed(
            seedColor: colorScheme,
            brightness: Brightness.dark
          );

          return ThemeData(
            fontFamily: fontFamily,
            colorScheme: dynamicColor ?
              darkDynamic ?? defaultColorScheme :
              defaultColorScheme,
            useMaterial3: true
          );
        }

        return MaterialApp(
          title: 'Lumine',
          theme: getTheme(useDynamicColor),
          home: const MyHomePage(),
        );
      },
    );
  }
}
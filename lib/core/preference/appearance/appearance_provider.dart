import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:lumine/core/provider/shared_preferences.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'appearance_provider.g.dart';

class AppearanceSettings {
  final String fontFamily;
  final Color colorScheme;
  final bool useDynamicColor;

  AppearanceSettings({
    required this.fontFamily,
    required this.colorScheme,
    required this.useDynamicColor,
  });

  AppearanceSettings copyWith({
    String? fontFamily,
    Color? colorScheme,
    bool? useDynamicColor,
  }) {
    return AppearanceSettings(
      fontFamily: fontFamily ?? this.fontFamily,
      colorScheme: colorScheme ?? this.colorScheme,
      useDynamicColor: useDynamicColor ?? this.useDynamicColor,
    );
  }
}

@Riverpod(keepAlive: true)
class AppearanceNotifier extends _$AppearanceNotifier {
  @override
  AppearanceSettings build() {
    return _load();
  }

  void setFontFamily(String value) {
    state = state.copyWith(
      fontFamily: value
    );
    ref.read(sharedPreferencesProvider).setString(_fontFamilyKey, value);
  }

  void setColorScheme(Color value) {
    state = state.copyWith(
      colorScheme: value
    );
    ref.read(sharedPreferencesProvider).setString(_colorSchemeKey, value.toHexString());
  }

  void setUseDynamicColor(bool value) {
    state = state.copyWith(
      useDynamicColor: value
    );
    ref.read(sharedPreferencesProvider).setBool(_useDynamicColorKey, value);
  }

  Color _stringToColor(String color) {
    int colorCode = int.parse(color, radix: 16);

    Color newColor = Color(colorCode);

    return newColor;
  }

  AppearanceSettings _load() {
    final prefs = ref.read(sharedPreferencesProvider);

    final settings = AppearanceSettings(
      fontFamily: prefs.getString(_fontFamilyKey) ?? 'Default',
      colorScheme: _stringToColor(prefs.getString(_colorSchemeKey) ?? Colors.lightBlue.toHexString()),
      useDynamicColor: prefs.getBool(_useDynamicColorKey) ?? true,
    );

    return settings;
  }

  static const _fontFamilyKey = 'font_family';
  static const _colorSchemeKey = 'color_scheme';
  static const _useDynamicColorKey = 'use_dynamic_color';
}
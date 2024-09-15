import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
// import 'package:home_widget/home_widget.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lumine/app.dart';
import 'package:lumine/features/setup/login_view.dart';
import 'package:lumine/features/main_view.dart';
import 'package:lumine/core/provider/package_info.dart';
import 'package:lumine/core/provider/shared_preferences.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
// import 'package:workmanager/workmanager.dart';

Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized();

  // Workmanager().initialize(callbackDispatcher, isInDebugMode: kDebugMode);

  if (!kIsWeb && defaultTargetPlatform == TargetPlatform.android) {
    await InAppWebViewController.setWebContentsDebuggingEnabled(kDebugMode);
  }

  if (Platform.isAndroid) {
    final flnp = FlutterLocalNotificationsPlugin();
    const AndroidInitializationSettings initializationSettingsAndroid = AndroidInitializationSettings('@mipmap/ic_launcher');
    const InitializationSettings initializationSettings = InitializationSettings(android: initializationSettingsAndroid);
    await flnp.initialize(initializationSettings);
  }

  runApp(
    ProviderScope(
      overrides: [
        sharedPreferencesProvider.overrideWithValue(await SharedPreferences.getInstance()),
        packageInfoProvider.overrideWithValue(await PackageInfo.fromPlatform())
      ],
      child: const App()
    )
  );
}

class MyHomePage extends HookConsumerWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: ref.read(sharedPreferencesProvider).getBool('is_initialized') ?? false ? const MainView() : const SetupView()
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lumine/core/provider/package_info.dart';

class LicenseView extends ConsumerWidget {
  const LicenseView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appInfo = ref.watch(packageInfoProvider);
    return LicensePage(
      applicationName: 'Lumine',
      applicationIcon: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Image.asset('assets/app_icon.png', height: 64,),
      ),
      applicationVersion: '${appInfo.version} (${appInfo.buildNumber})',
      applicationLegalese: 'by kome1',
    );
  }
}
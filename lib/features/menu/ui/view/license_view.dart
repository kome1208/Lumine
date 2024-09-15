import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lumine/core/provider/package_info.dart';
import 'package:package_info_plus/package_info_plus.dart';

class LicenseView extends ConsumerWidget {
  const LicenseView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    PackageInfo appInfo = ref.read(packageInfoProvider);
    return LicensePage(
      applicationName: 'Lumine',
      applicationIcon: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Image.asset('assets/app_icon.png', height: 64,),
      ),
      applicationVersion: appInfo.version,
      applicationLegalese: 'by kome1',
    );
  }
}
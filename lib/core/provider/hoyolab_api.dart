import 'package:lumine/core/api/hoyolab_api.dart';
import 'package:lumine/core/provider/account_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'hoyolab_api.g.dart';

@Riverpod(keepAlive: true)
class HoYoLABAPINotifier extends _$HoYoLABAPINotifier {
  @override
  HoYoLAB build() {
    final account = ref.watch(accountNotifierProvider)!;

    return HoYoLAB(
      ltoken: account['ltoken'],
      ltmid: account['ltmid'],
      ltuid: account['ltuid'],
      cookieToken: account['cookieToken'],
      uid: account['uid'],
      region: account['region']
    );
  }
}
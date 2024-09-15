import 'package:lumine/core/api/model/daily_resign_info_model.dart';
import 'package:lumine/core/provider/hoyolab_api.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'resign_info_provider.g.dart';

@Riverpod()
Future<DailyResignInfo> resignInfo(ResignInfoRef ref) async {
  final api = ref.watch(hoYoLABAPINotifierProvider);

  return api.getResignInfo();
}
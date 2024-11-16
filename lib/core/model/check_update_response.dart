import 'package:freezed_annotation/freezed_annotation.dart';

part 'check_update_response.g.dart';
part 'check_update_response.freezed.dart';

@freezed
class UpdateCheckResponse with _$UpdateCheckResponse {
  const factory UpdateCheckResponse({
    required String version,
    required int buildNumber,
    required String url,
  }) = _UpdateCheckResponse;

  factory UpdateCheckResponse.fromJson(Map<String, dynamic> json) => _$UpdateCheckResponseFromJson(json);
}
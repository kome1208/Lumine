import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_list_model.g.dart';
part 'event_list_model.freezed.dart';

@freezed
class EventList with _$EventList {
  const factory EventList({
    required List<GameEvent> list,
    @JsonKey(name: 'next_offset') required String nextOffset,
    @JsonKey(name: 'is_last') required bool isLast
  }) = _EventList;

  factory EventList.fromJson(Map<String, dynamic> json) => _$EventListFromJson(json);
}

@freezed
class GameEvent with _$GameEvent {
  const factory GameEvent({
    required String id,
    required String name,
    required String start,
    required String end,
    @JsonKey(name: 'banner_url') required String bannerUrl,
    required int status,
    required String desc,
    @JsonKey(name: 'game_id') required int gameId,
    required int type,
    @JsonKey(name: 'app_path') required String appPath,
    @JsonKey(name: 'status_ing') required int statusIng,
    @JsonKey(name: 'web_path') required String webPath,
    @JsonKey(name: 'status_int') required int statusInt,
    @JsonKey(name: 'create_at') required String createAt
  }) = _GameEvent;

  factory GameEvent.fromJson(Map<String, dynamic> json) => _$GameEventFromJson(json);
}
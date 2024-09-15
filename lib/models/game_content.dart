
import 'package:json_annotation/json_annotation.dart';

part 'game_content.g.dart';

@JsonSerializable()
class GameContent {
  final Game game;
  final String language;
  final List<LauncherBanner> banners;
  final List<LauncherPost> posts;

  GameContent({
    required this.game,
    required this.language,
    required this.banners,
    required this.posts,
  });

  factory GameContent.fromJson(Map<String, dynamic> json) => _$GameContentFromJson(json);

  Map<String, dynamic> toJson() => _$GameContentToJson(this);
}

@JsonSerializable()
class Game {
  final String id;
  final String biz;

  Game({
    required this.id,
    required this.biz,
  });

  factory Game.fromJson(Map<String, dynamic> json) => _$GameFromJson(json);

  Map<String, dynamic> toJson() => _$GameToJson(this);
}

@JsonSerializable()
class LauncherBanner {
  final String id;
  final BannerImage image;

  LauncherBanner({
    required this.id,
    required this.image,
  });

  factory LauncherBanner.fromJson(Map<String, dynamic> json) => _$LauncherBannerFromJson(json);

  Map<String, dynamic> toJson() => _$LauncherBannerToJson(this);
}

@JsonSerializable()
class BannerImage {
  final String url;
  final String link;

  BannerImage({
    required this.url,
    required this.link,
  });

  factory BannerImage.fromJson(Map<String, dynamic> json) => _$BannerImageFromJson(json);

  Map<String, dynamic> toJson() => _$BannerImageToJson(this);
}

@JsonSerializable()
class LauncherPost {
  final String id;
  final String type;
  final String title;
  final String link;
  final String date;

  LauncherPost({
    required this.id,
    required this.type,
    required this.title,
    required this.link,
    required this.date,
  });

  factory LauncherPost.fromJson(Map<String, dynamic> json) => _$LauncherPostFromJson(json);

  Map<String, dynamic> toJson() => _$LauncherPostToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_content.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GameContent _$GameContentFromJson(Map<String, dynamic> json) => GameContent(
      game: Game.fromJson(json['game'] as Map<String, dynamic>),
      language: json['language'] as String,
      banners: (json['banners'] as List<dynamic>)
          .map((e) => LauncherBanner.fromJson(e as Map<String, dynamic>))
          .toList(),
      posts: (json['posts'] as List<dynamic>)
          .map((e) => LauncherPost.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GameContentToJson(GameContent instance) =>
    <String, dynamic>{
      'game': instance.game,
      'language': instance.language,
      'banners': instance.banners,
      'posts': instance.posts,
    };

Game _$GameFromJson(Map<String, dynamic> json) => Game(
      id: json['id'] as String,
      biz: json['biz'] as String,
    );

Map<String, dynamic> _$GameToJson(Game instance) => <String, dynamic>{
      'id': instance.id,
      'biz': instance.biz,
    };

LauncherBanner _$LauncherBannerFromJson(Map<String, dynamic> json) =>
    LauncherBanner(
      id: json['id'] as String,
      image: BannerImage.fromJson(json['image'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LauncherBannerToJson(LauncherBanner instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
    };

BannerImage _$BannerImageFromJson(Map<String, dynamic> json) => BannerImage(
      url: json['url'] as String,
      link: json['link'] as String,
    );

Map<String, dynamic> _$BannerImageToJson(BannerImage instance) =>
    <String, dynamic>{
      'url': instance.url,
      'link': instance.link,
    };

LauncherPost _$LauncherPostFromJson(Map<String, dynamic> json) => LauncherPost(
      id: json['id'] as String,
      type: json['type'] as String,
      title: json['title'] as String,
      link: json['link'] as String,
      date: json['date'] as String,
    );

Map<String, dynamic> _$LauncherPostToJson(LauncherPost instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'title': instance.title,
      'link': instance.link,
      'date': instance.date,
    };

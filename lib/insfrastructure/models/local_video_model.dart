import 'dart:collection';
import 'package:toktik/domain/entities/video_post.dart';

class LocalVideoModel {
  final String name;
  final String videourl;
  final int likes;
  final int views;

  LocalVideoModel({
    required this.name,
    required this.videourl,
    this.likes = 0,
    this.views = 0
    });

  factory LocalVideoModel.fromJson(Map<String, dynamic> json) => LocalVideoModel(
    // name: json["name"] ?? 'No video name',
    name: json["name"] ?? 'No name',
    videourl: json["videourl"],
    likes: json["likes"] ?? 0,
    views: json["views"] ?? 0
  );

  VideoPost toVideoPostEntity() => VideoPost(
    caption: name, 
    videoUrl: videourl,
    likes: likes,
    views: views
  );
}

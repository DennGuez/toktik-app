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

/* Con esto vamos a crear a partir de la data, instancias de LocalVideoModel */
  factory LocalVideoModel.fromJson(Map<String, dynamic> json) => LocalVideoModel(
    // name: json["name"] ?? 'No video name',
/* Puede ser que estas propiedades no vengan, (name, videoUrl, etc. por eso le ponemos algo por defecto */
    name: json["name"] ?? 'No name',
    videourl: json["videoUrl"],
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

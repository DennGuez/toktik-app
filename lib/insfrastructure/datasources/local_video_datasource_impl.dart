import 'package:toktik/domain/entities/datasource/video_posts_datasource.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/insfrastructure/models/local_video_model.dart';
import 'package:toktik/shared/data/local_video_posts.dart';

class LocalVideoDatasource implements VideoPostDatasource {
  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String userID) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) async {
    /* El map regresa un ITERABLE para pasarlo a una List usamos la function toList() */
    List<VideoPost> newVideos = videoPosts
        .map((video) => LocalVideoModel.fromJson(video).toVideoPostEntity())
        .toList();
        
    return newVideos;
  }
}

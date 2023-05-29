import 'package:toktik/domain/entities/datasource/video_posts_datasource.dart';
import 'package:toktik/domain/entities/repositories/video_posts_repository.dart';
import 'package:toktik/domain/entities/video_post.dart';

class VideoPostsRepositoryImpl implements VideoPostRepository {
  final VideoPostDatasource videosDatasource;

  VideoPostsRepositoryImpl({required this.videosDatasource});

  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String userID) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) {
    return videosDatasource.getTrendingVideosByPage(page);
  }
}

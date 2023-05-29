import 'package:toktik/domain/entities/video_post.dart';

/* abstract porque no queremos que se creen instancias de esta clase */
abstract class VideoPostDatasource {
  Future<List<VideoPost>> getFavoriteVideosByUser( String userID );
  Future<List<VideoPost>> getTrendingVideosByPage( int page );
}
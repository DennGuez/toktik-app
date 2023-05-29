import 'package:flutter/material.dart';
import 'package:toktik/domain/entities/repositories/video_posts_repository.dart';
import 'package:toktik/domain/entities/video_post.dart';
class DiscoverProvider extends ChangeNotifier {
  // todo: Repository, DataSource
  final VideoPostRepository videosRepository;

  bool initialLoading = true;
  List<VideoPost> videos = [];

  DiscoverProvider({required this.videosRepository});

  Future<void> loadNextPage() async {
    // await Future.delayed(const Duration(seconds: 2));

    /* El map regresa un ITERABLE para pasarlo a una List usamos la function toList() */
    // List<VideoPost> newVideos = videoPosts
    //     .map((video) => LocalVideoModel.fromJson(video).toVideoPostEntity())
    //     .toList();

    final newVideos = await videosRepository.getTrendingVideosByPage(1);

    videos.addAll(newVideos);
    initialLoading = false;
    notifyListeners();
  }
}

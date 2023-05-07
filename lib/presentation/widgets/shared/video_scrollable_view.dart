import 'package:flutter/material.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/presentation/widgets/shared/video_buttons.dart';

class VideoScrollableVideo extends StatelessWidget {
  final List<VideoPost> videos;

  const VideoScrollableVideo({super.key, required this.videos});

  @override
  Widget build(BuildContext context) {
    /* Sin builder lo malo de esto es que cargara de una vez todos los videos y eso no es bueno para el perfomance */
    // return PageView(
    //   scrollDirection: Axis.vertical,
    //   physics: const BouncingScrollPhysics(),
    //   children: [
    //     Container(color: Colors.red),
    //     Container(color: Colors.blue),
    //     Container(color: Colors.teal),
    //     Container(color: Colors.yellow),
    //     Container(color: Colors.pink),
    //     Container(color: Colors.deepOrange),
    //   ],
    // );
    /* El PageView con builder no recibe un children, recibe un itemBuilder */
    return PageView.builder(
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),
      itemCount: videos.length,
      itemBuilder: (context, index) {
        final VideoPost videoPost = videos[index];
        return Stack(
          children: [
            // Video Player + gradiente
            VideoButtons(video: videoPost)
          ],
        );
      },
    );
  }
}

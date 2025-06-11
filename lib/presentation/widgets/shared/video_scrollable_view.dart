import 'package:basic_flutter/presentation/widgets/image/fullscreen_image.dart';
// import 'package:basic_flutter/presentation/widgets/video/fullscreen_player.dart';
import 'package:basic_flutter/domain/entities/video_post.dart';
import 'package:basic_flutter/presentation/widgets/shared/video_buttons.dart';
import 'package:flutter/material.dart';

class VideoScrollableView extends StatelessWidget {
  
  final List<VideoPost> videos;
  
  const VideoScrollableView({
    super.key, 
    required this.videos
  });

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      itemCount: videos.length,
      itemBuilder: (context, index) {
        final valueVideoPost = videos[index];

        return Stack(
          children: [

            SizedBox.expand(

              // Alternamos entre "imagenes" o "videos"
              child: 
              FullscreenImage(imageUrl: valueVideoPost.videoUrl, caption: valueVideoPost.caption)

              // FullscreenPlayer(caption: valueVideoPost.caption, videoUrl: valueVideoPost.videoUrl,),
            ),

            Positioned(
              bottom: 40,
              right: 20,
              child: VideoButtons(video: valueVideoPost)
            ),

          ],
        );
      },


    );
  }
}

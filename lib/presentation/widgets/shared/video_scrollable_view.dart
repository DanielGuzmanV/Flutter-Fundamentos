import 'package:basic_flutter/domain/entities/video_post.dart';
import 'package:flutter/material.dart';

class VideoScrollableView extends StatelessWidget {
  
  final List<VideoPost> videos;
  
  const VideoScrollableView({
    super.key, 
    required this.videos
  });

  @override
  Widget build(BuildContext context) {
    return PageView(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,

      children: [
        Container(color: Colors.red),
        Container(color: Colors.blue,),
        Container(color: Colors.green,),
        Container(color: Colors.yellow,),
        Container(color: Colors.purple,),
        Container(color: Colors.orange,),
        Container(color: Colors.pink,),
        Container(color: Colors.grey,),
        Container(color: Colors.brown,),
      ],
    );
  }
}

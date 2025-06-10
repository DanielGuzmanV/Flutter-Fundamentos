import 'package:animate_do/animate_do.dart';
import 'package:basic_flutter/config/helpers/number_formats.dart';
import 'package:basic_flutter/domain/entities/video_post.dart';
import 'package:flutter/material.dart';

class VideoButtons extends StatelessWidget {

  final VideoPost video;

  const VideoButtons({
    super.key, 
    required this.video
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        
        _CustomIconButtons(
          value: video.likes,
          iconColor: Colors.red,
          iconData: Icons.favorite,
        ),
        const SizedBox(height: 20,),

        _CustomIconButtons(
          value: video.views, 
          iconData: Icons.remove_red_eye_outlined
        ),
        const SizedBox(height: 20,),

        SpinPerfect(
          infinite: true,
          duration: const Duration(seconds: 5),
          child: const _CustomIconButtons(
            value:  0, 
            iconData: Icons.play_circle_outlined
          ),
        ),

      ],
    );
  }
}

class _CustomIconButtons extends StatelessWidget {
  final int value;
  final IconData iconData;
  final Color? colors;

  const _CustomIconButtons({
    required this.value, 
    required this.iconData, 
    iconColor,
  }): colors = iconColor ?? Colors.white;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            iconData,
            color: colors,
            size: 35,
          )
        ), 

        if(value > 0) 
        Text( NumberFormats.readbleNumber(value.toDouble()) )
      ],
    );
  }
}






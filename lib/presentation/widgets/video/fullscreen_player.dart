import 'package:basic_flutter/presentation/widgets/video/video_background.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class FullscreenPlayer extends StatefulWidget {

  final String videoUrl;
  final String caption;

  const FullscreenPlayer({
    super.key, 
    required this.videoUrl, 
    required this.caption
  });

  @override
  State<FullscreenPlayer> createState() => _FullscreenPlayerState();
}

class _FullscreenPlayerState extends State<FullscreenPlayer> {
  
  late VideoPlayerController controller;

  @override
  void initState() {
    super.initState();

    controller = VideoPlayerController.asset(widget.videoUrl)
      ..setVolume(0)
      ..setLooping(true)
      ..play();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: controller.initialize(), 
      builder: (context, snapshot) {
        if(snapshot.connectionState != ConnectionState.done) {
          return const Center(child: CircularProgressIndicator(strokeWidth: 2,),);
        }
        return GestureDetector(

          onTap: () {
            if(controller.value.isPlaying) {
              controller.pause();
              return;
            }
            controller.play();
          },

          child: AspectRatio(
            aspectRatio: controller.value.aspectRatio,
            child: Stack(
              children: [

                // Video:
                VideoPlayer(controller),

                // Gradiente:
                VideoBackground(
                  valueStops: const [0.8, 1.0],
                ),

                // Texto caption:
                Positioned(
                  bottom: 50,
                  left: 20,
                  child: _VideoCaption(valueCaption: widget.caption)
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class _VideoCaption extends StatelessWidget {
  final String valueCaption;

  const _VideoCaption({
    required this.valueCaption
  });

  @override
  Widget build(BuildContext context) {
    
    final valueSize = MediaQuery.of(context).size;
    final valueStyle = Theme.of(context).textTheme.titleLarge;
    
    return SizedBox(
      width: valueSize.width * 0.6,
      child: Text(
        valueCaption,
        maxLines: 2,
        style: valueStyle
,
        
      ),
    );
  }
}

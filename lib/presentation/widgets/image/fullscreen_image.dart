import 'package:basic_flutter/presentation/widgets/image/image_background.dart';
import 'package:flutter/material.dart';

class FullscreenImage extends StatelessWidget {
  final String imageUrl;
  final String caption;

  const FullscreenImage({
    super.key, 
    required this.imageUrl, 
    required this.caption
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [

        // Imagenes:
        Image.asset(
          imageUrl,
          fit: BoxFit.cover,
        ),

        // Gradiente de imagen:
        ImageBackground(
          valueStops: const [0.6, 1.0],
        ),

        // Texto caption:
        Positioned(
          bottom: 50,
          left: 20,
          child: _ImageCaption(valueCaption: caption,)
        ),
      ],
    );
  }
}

class _ImageCaption extends StatelessWidget {
  final String valueCaption;

  const _ImageCaption({
    required this.valueCaption
  });

  @override
  Widget build(BuildContext context) {
    
    final valueSize = MediaQuery.of(context).size;
    final valueStyle = Theme.of(context).textTheme.titleLarge?.copyWith(color: Colors.white);
    
    return SizedBox(
      width: valueSize.width * 0.6,
      child: Text(
        valueCaption,
        maxLines: 2,
        style: valueStyle
        
      ),
    );
  }
}

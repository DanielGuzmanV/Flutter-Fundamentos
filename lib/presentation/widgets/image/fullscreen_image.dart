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
        Image.asset(
          imageUrl,
          fit: BoxFit.cover,
        ),

        Align(
          alignment: Alignment.bottomLeft,
          child: Container(
            color: Colors.black54,
            padding: const EdgeInsets.all(8),
            child: Text(
              caption,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ),
        )
      ],
    );
  }
}

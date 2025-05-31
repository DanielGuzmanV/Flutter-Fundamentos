import 'package:flutter/material.dart';

// Clase para las imagenes:
class SliderInfo {
  final String title;
  final String caption;
  final String imageUrl;

  SliderInfo(this.title, this.caption, this.imageUrl);
}

final slidesList = <SliderInfo> [
  SliderInfo('Busca la comida', 'Excepteur id incididunt incididunt fugiat et ad aliquip nulla.', 'assets/images/1.png'),
  SliderInfo('Entrega rapida', 'Quis quis mollit laboris ex adipisicing sit duis pariatur.', 'assets/images/2.png'),
  SliderInfo('Disfruta la comida', 'Aliqua labore et dolor consequat Lorem.', 'assets/images/3.png'),
  SliderInfo('Disfruta la comida', 'Aliqua labore et dolor consequat Lorem.', 'assets/images/3.png'),
  SliderInfo('Disfruta la comida', 'Aliqua labore et dolor consequat Lorem.', 'assets/images/3.png'),
  SliderInfo('Disfruta la comida', 'Aliqua labore et dolor consequat Lorem.', 'assets/images/3.png'),
];


class TutorialScreen extends StatelessWidget {
  static const String nameclass = 'tutorial_screen';
  
  const TutorialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const BouncingScrollPhysics(),
        children: slidesList.map((slideDate) => _ClaseSlide(
          title: slideDate.title, 
          caption: slideDate.caption, 
          imageUrl: slideDate.imageUrl
        )).toList(),
      ),
    );
  }
}


class _ClaseSlide extends StatelessWidget {
  final String title;
  final String caption;
  final String imageUrl;

  const _ClaseSlide({ 
    required this.title, 
    required this.caption, 
    required this.imageUrl
  });

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}









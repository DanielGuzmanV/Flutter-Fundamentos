import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
];


class TutorialScreen extends StatefulWidget {
  static const String nameclass = 'tutorial_screen';
  
  const TutorialScreen({super.key});

  @override
  State<TutorialScreen> createState() => _TutorialScreenState();
}

class _TutorialScreenState extends State<TutorialScreen> {
  final PageController controlVerPage = PageController();
  bool finAlcanzado = false;

  @override
  void initState() {
    super.initState();
    controlVerPage.addListener(() {
      final page = controlVerPage.page ?? 0;

      if(!finAlcanzado && page >= (slidesList.length - 1.5)) {
        setState(() {
          finAlcanzado = true;
        });
      }
    },);
  }

  @override
  void dispose() {
    controlVerPage.dispose();
    super.dispose();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [

          // Vistas del tutorial
          PageView(
            controller: controlVerPage,
            physics: const BouncingScrollPhysics(),
            children: slidesList.map((slideDate) => _ClaseSlide(
              title: slideDate.title, 
              caption: slideDate.caption, 
              imageUrl: slideDate.imageUrl
            )).toList(),
          ),

          // Opcion salir del tutorial
          Positioned(
            right: 20,
            top: 50,

            child: TextButton(
              onPressed: () {
                context.pop();
              }, 
              child: const Text('Salir'),
            )
          ),

          // Boton para salir del tutorial cuando se llegue al final
          finAlcanzado? Positioned(
            bottom: 30,
            right: 30,
            child: FadeInRight(
              from: 15,
              delay: const Duration(seconds: 1),
              child: FilledButton(
                onPressed: () => context.pop(), 
                child: const Text('Comenzar')
              ),
            )
          ) : const SizedBox(),

        ],
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
    final titleStyle = Theme.of(context).textTheme.titleLarge;
    final captionStyle = Theme.of(context).textTheme.bodySmall;


    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(image: AssetImage(imageUrl)),
            const SizedBox(height: 20,),
            Text(title, style: titleStyle,),
            const SizedBox(height: 20,),
            Text(caption, style: captionStyle,)
          ],
        ),
      ),

    );
  }
}









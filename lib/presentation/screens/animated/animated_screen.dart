import 'dart:math' show Random;
import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
  static const String nameclass = 'animated_screen';
  
  const AnimatedScreen({super.key});

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {

  double valueWidth = 50;
  double valueHeight = 50;
  Color valueColors = Colors.indigo;
  double valueBorderRadius = 10.0;

  // Metodo para cambiar el contenedor
  void changeAnimateContent(){
    final valueRandom = Random();
    
    valueWidth = valueRandom.nextInt(300) + 120;
    valueHeight = valueRandom.nextInt(500) + 120;
    valueBorderRadius = valueRandom.nextInt(50) + 20;

    valueColors = Color.fromRGBO(
      valueRandom.nextInt(255),
      valueRandom.nextInt(255),
      valueRandom.nextInt(255),
      1,
    );

    setState(() {});

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Container'),
      ),

      body: Center(
        child: GestureDetector(
          onTap: () => changeAnimateContent(),

          child: AnimatedContainer(
            duration: const Duration(milliseconds: 400),
            curve: Curves.bounceOut,
              
            width: valueWidth <= 0 ? 0 : valueWidth,
            height: valueHeight <= 0 ? 0 : valueHeight,
            decoration: BoxDecoration(
              color: valueColors,
              borderRadius: BorderRadius.circular(valueBorderRadius <= 0 ? 0 : valueBorderRadius),
            ),
          ),
        ),
      ),


      floatingActionButton: FloatingActionButton(
        onPressed: () => changeAnimateContent(),
        child: const Icon(Icons.play_arrow_rounded),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class ClassText extends StatelessWidget {
  const ClassText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Flutter 1'),

        Text(
          'Flutter 2',
          style: TextStyle(
            fontSize: 24
          ),
        ),

        Text(
          'Flutter 3',
          style: TextStyle(
            fontWeight: FontWeight.bold, 
            fontSize: 30,
          ),
        ),

        Text(
          'Flutter 4',
          style: TextStyle(
            fontWeight: FontWeight.bold, 
            fontSize: 30,
            fontStyle: FontStyle.italic
          ),
        ),

        Text(
          'Flutter 5',
          style: TextStyle(
            color: Colors.red,
            fontSize: 30,
            backgroundColor: Colors.yellow,
          ),
        ),

        Text(
          'Flutter 6',
          style: TextStyle(
            decoration: TextDecoration.underline,
            decorationColor: Colors.blue,
            fontSize: 30,
            color: Colors.blue
          ),
        ),

        Text(
          'Flutter 7 espaciado',
          style: TextStyle(
            letterSpacing: 5,
            fontSize: 20
          ),
        ),

        Text(
          'Flutter 8 largo',
          style: TextStyle(
            fontSize: 30
          ),
        ),

      ],
    );
  }
}
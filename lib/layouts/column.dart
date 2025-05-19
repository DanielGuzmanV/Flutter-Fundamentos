import 'package:flutter/material.dart';

class ClassColumn extends StatelessWidget {
  const ClassColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      // Ocupara todo el ancho
      width: double.infinity,

      // Widget Column
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget> [
          Text('Texto de column 1'),
          Text('Texto de column 2'),
          Text('Texto de column 3'),
          Text('Texto de column numero 4 en flutter'),
        ],  
      ),

    );
  }
}
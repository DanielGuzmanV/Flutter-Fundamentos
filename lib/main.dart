import 'package:basic_flutter/layouts/column.dart';
import 'package:basic_flutter/layouts/row.dart';
import 'package:basic_flutter/components/text.dart';
import 'package:basic_flutter/components/textfield.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(      
      debugShowCheckedModeBanner: false,
      title: 'Fundamentos basicos flutter',

      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text('Fundamentos - flutter'),
          centerTitle: true,
        ),

        body: const ClassTexfield(),
          // const ClassText()
          // const ClassColumn(), // Comemtar row para probar columns y viceversa
          // const ClassRow(),

      ),

    );
  }
}

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
        body: const Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}

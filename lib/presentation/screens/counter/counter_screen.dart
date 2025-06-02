import 'package:flutter/material.dart';

class CounterScreen extends StatelessWidget {
  static const String nameclass = 'counter_screen';
  
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
      ),
    );
  }
}
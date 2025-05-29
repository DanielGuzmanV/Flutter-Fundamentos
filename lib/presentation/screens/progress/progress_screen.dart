import 'package:basic_flutter/presentation/screens/progress/progress_viewbody.dart';
import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {
  static const String nameclass = 'progress_screen';

  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Progress Indicators'),
      ),

      body: const ProgressViewbody(),
    );
  }
}
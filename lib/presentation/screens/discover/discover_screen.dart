import 'package:flutter/material.dart';

class DiscoverScreen extends StatelessWidget {
  static const String nameclass = 'discover_screen';

  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Toktik Images'),
      ),

      body: const Center(
        child: Text('Discover screen'),
      ),
    );
  }
}
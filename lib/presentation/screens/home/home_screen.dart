import 'package:basic_flutter/presentation/screens/home/body_screen.dart';
import 'package:basic_flutter/presentation/widgets/side_menu.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String nameclass = 'home_screen';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text('Flutter + Material 3'),
      ),

      body: const BodyScreen(),
      drawer: const SideMenu(),

    );
  }
}




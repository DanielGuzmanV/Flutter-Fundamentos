import 'package:basic_flutter/presentation/screens/buttons/button_viewbody.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';

class ButtonsScreen extends StatelessWidget {
  static const String nameclass = 'button_screen';

  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cards Screen'),
      ),

      body: const ButtonViewBody(),

      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_back_ios_new_rounded),
        onPressed: () {
          context.pop();
        },
      ),
    );
    
  }
}




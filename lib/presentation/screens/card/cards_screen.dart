import 'package:basic_flutter/presentation/screens/card/cards_viewbody.dart';
import 'package:flutter/material.dart';

class CardsScreen extends StatelessWidget {
  static const String nameclass = 'cards_screen';

  const CardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cards Screen'),
      ),
      body: const CardsViewbody(),
    );
  }
}

import 'package:basic_flutter/presentation/screens/ui_controls/ui_controls_body.dart';
import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
  static const String nameclass = 'uicontrols_screen';

  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UI controls'),
      ),

      body: const UiControlsBody(),
    );
  }
}
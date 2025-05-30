import 'package:flutter/material.dart';

class SnackbarScreen extends StatelessWidget {
  static const String nameclass = 'snackbar_screen';

  const SnackbarScreen({super.key});

  // Metodo para mostrar el snackbar:
  void showCustomSnackbar(BuildContext context) {

    // Limpiamos los snackbars:
    ScaffoldMessenger.of(context).clearSnackBars();
    
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text('Saludos desde el snackbar'),
        duration: const Duration(seconds: 2),
        action: SnackBarAction(label: 'okay', onPressed: (){}),
      )
    );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbars y dialogos'),
      ),

      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Mostrar Snackbar'),
        icon: const Icon(Icons.remove_red_eye_outlined),
        onPressed: () => showCustomSnackbar(context),
      ),

    );
  }
}
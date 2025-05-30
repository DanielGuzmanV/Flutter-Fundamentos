import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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

  // Metodo para mostrar un dialogo personalizado:
  void openDialogo(BuildContext context) {
    showDialog(
      context: context, 
      builder: (context) => AlertDialog(
        title: const Text('Estas seguro?'),
        content:  const Text('Fugiat esse magna amet qui. Id amet amet consequat magna aliquip esse reprehenderit id et veniam. Fugiat irure irure aute nostrud consectetur excepteur. In ex aliquip ad anim duis consequat ad consequat magna eiusmod. Id Lorem nulla voluptate veniam nostrud.'),
        actions: [
          TextButton(
            onPressed: () => context.pop(), 
            child: const Text('Cancelar')
          ),

          FilledButton(
            onPressed: () => context.pop(), 
            child: const Text('Aceptar')
          )
        ],
      ),

      // Evitamos que el cuadro de dialogo es cierre:
      barrierDismissible: false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbars y dialogos'),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            // Button para mostrar licencias:
            FilledButton.tonal(
              child: const Text('Licencias usadas'),
              onPressed: (){
                showAboutDialog(
                  context: context,
                  children: [
                    const Text('Ad amet velit officia qui labore duis ex amet. Enim enim aliqua do et sit duis quis. Aliquip est qui ad dolor anim reprehenderit fugiat labore magna commodo reprehenderit mollit ad. Laborum voluptate adipisicing elit laborum aliqua irure.')
                  ]
                );
              }, 
            ),
            // ================================================

            // Button personalizado:
            FilledButton.tonal(
              child: const Text('Mostrar dialogo'),
              onPressed: () => openDialogo(context), 
            ),
            // =================================================

          ],
        ),
      ),


      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Mostrar Snackbar'),
        icon: const Icon(Icons.remove_red_eye_outlined),
        onPressed: () => showCustomSnackbar(context),
      ),

    );
  }
}
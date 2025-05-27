import 'package:flutter/material.dart';

class ClassButton extends StatelessWidget {
  const ClassButton({super.key});

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Boton basico:
          ElevatedButton(
            onPressed: () {
              print('Boton presionado');
            }, 
            child: const Text('Boton'),
            onLongPress: () {
              print('Pulsando boton');
            },
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(Colors.yellow)
            ),
          ),

          // Boton outline:
          OutlinedButton(
            onPressed: () {}, 
            child: const Text('Btn OutLinedButton')
          ),

          // Boton Texto:
          TextButton(
            onPressed: (){}, 
            child: const Text('Btn TextButton')
          ),

          // Boton flotante:
          FloatingActionButton(
            onPressed: (){},
            child: const Icon(Icons.plus_one),
          ),

          // Boton icono:
          IconButton(
            onPressed: (){}, 
            icon: const Icon(Icons.favorite),
          ),

        ],
      ),
    );
  }
}
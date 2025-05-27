import 'package:flutter/material.dart';

class ClassImage extends StatelessWidget {
  const ClassImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Imagenes'),
      ),
      body: ListView(
        children:<Widget> [
          const SizedBox(height: 40,),
          const Center(
            child: Text(
              'Imagenes externas con "network"',
                style: TextStyle(
                  backgroundColor: Colors.yellow,
                  fontSize: 20,
                  fontWeight: FontWeight.w500
                ),
              ),
          ),
          const SizedBox(height: 40,),
      
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Image.network('https://1000marcas.net/wp-content/uploads/2020/02/GitHub-logo-1.jpg'),
                const SizedBox(height: 20,),
                Image.network('https://docs.flutter.dev/assets/images/dash/dash-fainting.gif'),
              ],
            ) 
          ),
          // ===================================================================================
      
          const SizedBox(height: 40,),
          const Center(
            child: Text(
              'Imagenes locales usando "assets"',
                style: TextStyle(
                  backgroundColor: Colors.yellow,
                  fontSize: 20,
                  fontWeight: FontWeight.w500
                ),
            ),
          ),
          const SizedBox(height: 40,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Image.asset('assets/images/imagen1.jpg'),
                const SizedBox(height: 20,),
                Image.asset('assets/images/imagen2.jpg'),
              ],
            )
          ),
      
      
      
        ],
      ),
    );
  }
}






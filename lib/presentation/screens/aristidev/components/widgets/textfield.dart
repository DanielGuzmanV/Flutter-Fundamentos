import 'package:flutter/material.dart';

class ClassTexfield extends StatelessWidget {
  const ClassTexfield({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TexforField'),
      ),
      body: ListView(
        children: const<Widget> [
          SizedBox(height: 30,),
      
          TextField(),
          SizedBox(height: 35,),
      
          TextField(
            decoration: InputDecoration(
              hintText: 'Introduce tu nombre',
              border: OutlineInputBorder(),
              icon: Icon(Icons.email)
            ),
          ),
          SizedBox(height: 35,),
          
          Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Introduce tu email',
                border: OutlineInputBorder(),
                icon: Icon(Icons.email)
              ),
            ),
          ),
          SizedBox(height: 35,),
          
          Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Buscar',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
                icon: Icon(Icons.person_2_sharp)
              ),
            ),
          ),
          SizedBox(height: 35,),
          
          Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Contraseña',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
                icon: Icon(Icons.person_2_sharp)
              ),
            ),
          ),
          SizedBox(height: 35,),
          
          Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              maxLines: 1,
              maxLength: 15,
              decoration: InputDecoration(
                hintText: 'Agrega un comentario',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
                icon: Icon(Icons.person_2_sharp)
              ),
            ),
          ),
          SizedBox(height: 35,),
      
      
        ],
      ),
    );
  }
}
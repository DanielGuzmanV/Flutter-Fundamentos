import 'package:basic_flutter/layouts/column.dart';
import 'package:basic_flutter/layouts/row.dart';
import 'package:basic_flutter/components/text.dart';
import 'package:basic_flutter/components/textfield.dart';
import 'package:basic_flutter/components/button.dart';
import 'package:basic_flutter/components/image.dart';
import 'package:flutter/material.dart';

class MainFlutter extends StatelessWidget {
  const MainFlutter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.blue[400],
        foregroundColor: Colors.white,
        title: const Text('Fundamentos - flutter'),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.work)),
        ],
        centerTitle: true,
      ),

      body: const ClassImage(),
      // const ClassButton(),
      // const ClassTexfield(),
      // const ClassText(),
      // const ClassRow(),
      // const ClassColumn(), // Comemtar row para probar columns y viceversa

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}


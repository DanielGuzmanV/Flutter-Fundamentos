import 'package:basic_flutter/presentation/screens/aristidev/body_submenu.dart';
import 'package:basic_flutter/presentation/screens/aristidev/layouts/widgets/column.dart';
import 'package:basic_flutter/presentation/screens/aristidev/layouts/widgets/row.dart';
import 'package:basic_flutter/presentation/screens/aristidev/components/widgets/text.dart';
import 'package:basic_flutter/presentation/screens/aristidev/components/widgets/textfield.dart';
import 'package:basic_flutter/presentation/screens/aristidev/components/widgets/button.dart';
import 'package:basic_flutter/presentation/screens/aristidev/components/widgets/image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MainFlutter extends StatelessWidget {
  static const String nameclass = 'mainflutter_screen';


  const MainFlutter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[400],
        foregroundColor: Colors.white,
        title: const Text('Fundamentos - flutter'),
        actions: [
          IconButton(
            onPressed: () {
              context.pop();
            }, 
            icon: const Icon(Icons.add_home_rounded)
          ),
        ],
      ),

      body: const BodyFlutter(),
      // const ClassImage(),
      // const ClassButton(),
      // const ClassTexfield(),
      // const ClassText(),
      // const ClassRow(),
      // const ClassColumn(), // Comemtar row para probar columns y viceversa

      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   child: const Icon(Icons.add),
      // ),
    );
  }
}


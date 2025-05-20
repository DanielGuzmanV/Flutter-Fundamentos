import 'package:flutter/material.dart';

class ClassImage extends StatelessWidget {
  const ClassImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children:<Widget> [
        Image.network('https://1000marcas.net/wp-content/uploads/2020/02/GitHub-logo-1.jpg'),
        Image.network('https://docs.flutter.dev/assets/images/dash/dash-fainting.gif'),
      ],
    );
  }
}






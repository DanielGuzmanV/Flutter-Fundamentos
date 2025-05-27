import 'package:flutter/material.dart';

class ClassRow extends StatelessWidget {
  const ClassRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 80),

      child: SizedBox(
        height: double.infinity,

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget> [
            Text('rows 1'),

            // Ocupamos todo el espacio
            Expanded(child: Text('rows 2')),
            Text('rows 3'),
            // Text('Texto de rows 4'),
          ],
        ),
      ),

    );
  }
}
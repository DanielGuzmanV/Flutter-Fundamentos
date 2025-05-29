import 'package:flutter/material.dart';

class ProgressViewbody extends StatelessWidget {
  const ProgressViewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Center(
      child: Column(
        children:  <Widget> [
          SizedBox(height: 30,),
          Text('Circular progress indicator'),

          SizedBox(height: 20,),
          CircularProgressIndicator(
            strokeWidth: 2,
            backgroundColor: Colors.black26,
          ),

          SizedBox(height: 20,),
          Text('Circular indicator controlado'),
          
          SizedBox(height: 20,),
          _ControllerProgressIndicator()

        ],
      ),
    );
  }
}

class _ControllerProgressIndicator extends StatelessWidget {
  const _ControllerProgressIndicator();

  @override
  Widget build(BuildContext context) {
    return const SizedBox();
  }
}
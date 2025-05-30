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
          Text('Circular linear y indicator controlado'),
          
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

    return StreamBuilder(
        
      stream: Stream.periodic(const Duration(milliseconds: 300), (value) {
        return (value * 2) / 100;
      }).takeWhile((value) => value < 100),
      builder: (context, snapshot) {

        final progressVal = snapshot.data ?? 0;

        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircularProgressIndicator(
                value: progressVal,
                strokeWidth: 3,
                backgroundColor: Colors.black26,
              ),
        
            const SizedBox(width: 20,),
          
              Expanded(
                child: LinearProgressIndicator(
                  value: progressVal,
                )
              )
            ],
        ),
      );


      },
    );
      
  }
}
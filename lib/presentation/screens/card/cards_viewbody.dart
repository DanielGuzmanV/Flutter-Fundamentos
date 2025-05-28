import 'package:flutter/material.dart';

// Creamos una lista de objetos de cards:
const cardsValue = <Map<String, dynamic>> [
  {'elevation': 0.0, 'label': 'Elevation 0'},
  {'elevation': 1.0, 'label': 'Elevation 1'},
  {'elevation': 2.0, 'label': 'Elevation 2'},
  {'elevation': 3.0, 'label': 'Elevation 3'},
  {'elevation': 4.0, 'label': 'Elevation 4'},
  {'elevation': 5.0, 'label': 'Elevation 5'},
];

class CardsViewbody extends StatelessWidget {
  const CardsViewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ...cardsValue.map(
            (values) => _CardType1(labelValue: values['label'], elevationValue: values['elevation']) 
          ),
          
          ...cardsValue.map(
            (values) => _CardType1(labelValue: values['label'], elevationValue: values['elevation']) 
          ),
        ],
      ),
    );
  }
} 


class _CardType1 extends StatelessWidget {
  final String labelValue;
  final double elevationValue;
  
  const _CardType1({
    required this.labelValue, 
    required this.elevationValue
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevationValue,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
        child: Column(
          children: [

            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                icon: const Icon(Icons.more_vert_outlined),
                onPressed: (){},
              )
            ),

            Align(
              alignment: Alignment.bottomLeft,
              child: Text(labelValue),
            )


          ],
        ),
      ),
    );
  }
}



















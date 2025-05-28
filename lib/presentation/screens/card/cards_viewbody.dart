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
            (values) => _CardType2(labelValue: values['label'], elevationValue: values['elevation']) 
          ),

          ...cardsValue.map(
            (values) => _CardType3(labelValue: values['label'], elevationValue: values['elevation']) 
          ),

          ...cardsValue.map(
            (values) => _CardType4(labelValue: values['label'], elevationValue: values['elevation']) 
          ),

          const SizedBox(height: 80,)
        ],
      ),
    );
  }
} 

// Primeras cards:
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

// Segundas cards:
class _CardType2 extends StatelessWidget {
  final String labelValue;
  final double elevationValue;

  const _CardType2({required this.labelValue, required this.elevationValue});

  @override
  Widget build(BuildContext context) {
    final colorsCustom = Theme.of(context).colorScheme;
    
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        side: BorderSide(
          color: colorsCustom.outline,
        )
      ),
      elevation: elevationValue,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
        child: Column(
          children: [
            Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  icon: const Icon(Icons.more_vert_outlined),
                  onPressed: () {},
                )),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text('$labelValue- Card 2'),
            )
          ],
        ),
      ),
    );
  }
}

// Terceras cards:
class _CardType3 extends StatelessWidget {
  final String labelValue;
  final double elevationValue;

  const _CardType3({required this.labelValue, required this.elevationValue});

  @override
  Widget build(BuildContext context) {
    final colorsCustom = Theme.of(context).colorScheme;

    return Card(
      color: colorsCustom.surfaceContainerHighest,
      elevation: elevationValue,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
        child: Column(
          children: [
            Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  icon: const Icon(Icons.more_vert_outlined),
                  onPressed: () {},
                )),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text('$labelValue - filled'),
            )
          ],
        ),
      ),
    );
  }
}

// Cuartas cards:
class _CardType4 extends StatelessWidget {
  final String labelValue;
  final double elevationValue;

  const _CardType4({required this.labelValue, required this.elevationValue});

  @override
  Widget build(BuildContext context) {

    return Card(
      // Aplicamos los bordes redondeados
      clipBehavior: Clip.hardEdge,

      elevation: elevationValue,
      child: Stack(
        children: [
          
          Image.network(
            'https://picsum.photos/id/${elevationValue.toInt()}/600/350',
            height: 350,
            fit: BoxFit.cover,
          ),
          
          Align(
            alignment: Alignment.topRight,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20))
              ),
              child: IconButton(
                icon: const Icon(Icons.more_vert_outlined),
                onPressed: () {},
              ),
            )
          ),
      
        ],
      ),
    );
  }
}













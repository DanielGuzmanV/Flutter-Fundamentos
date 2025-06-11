import 'package:flutter/material.dart';

class ImageBackground extends StatelessWidget {

  final List<Color> valueColors;
  final List<double> valueStops;

  const ImageBackground({
    super.key, 
    this.valueColors = const [
      Colors.transparent,
      Colors.black87
    ], 
    this.valueStops = const [0.0, 1.0]
  }): assert (valueColors.length == valueStops.length, 'valueColors y valueStops deben tener la misma longitud');

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: valueColors,
            stops: valueStops,
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter
          )
        )
      )
    );
  }
}


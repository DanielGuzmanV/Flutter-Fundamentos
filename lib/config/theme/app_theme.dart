import 'package:flutter/material.dart';

class AppTheme {

  final int valueColor;

  AppTheme({
    this.valueColor = 0
  }): assert(valueColor >= 0, 'El color seleccionado debe ser mayor que 0'),
      assert(valueColor < colorList.length,'Selecciona un color entre el 0 y ${colorList.length -1 }');

  ThemeData seleccionarColor() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: colorList[valueColor]
    );
  }

}

// lista de colores:
const colorList = <Color> [
  Colors.blue,
  Colors.green,
  Colors.yellow,
  Colors.red,
  Colors.teal,
  Colors.purple,
  Colors.orange,
  Colors.pink,
  Colors.brown,
  Colors.grey,
  Colors.indigo
];



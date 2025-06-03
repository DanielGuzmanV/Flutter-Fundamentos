import 'package:flutter/material.dart';

class AppTheme {

  final int valueColor;
  final bool isDarkmode;

  AppTheme({
    this.valueColor = 0,
    this.isDarkmode = false,

  }): assert(valueColor >= 0, 'El color seleccionado debe ser mayor que 0'),
      assert(valueColor < colorList.length,'Selecciona un color entre el 0 y ${colorList.length -1 }');

  ThemeData seleccionarColor() {
    return ThemeData(
      useMaterial3: true,

      brightness: isDarkmode? Brightness.dark : Brightness.light,

      colorSchemeSeed: colorList[valueColor],
      appBarTheme: const AppBarTheme(
        centerTitle: true
      )
    );
  }

  AppTheme copyWith({int? valueColor, bool? isDarkmode}) {
    return AppTheme(
      valueColor: valueColor ?? this.valueColor,
      isDarkmode: isDarkmode ?? this.isDarkmode,
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



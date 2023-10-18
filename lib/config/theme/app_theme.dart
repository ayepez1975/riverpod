import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.blue,
  Colors.red,
  Colors.teal,
  Colors.indigo,
  Colors.green,
  Colors.pink,
  Colors.purple,
  Colors.black,
  Colors.black54,
  Colors.yellow
];

class AppTheme {
  final int selectedColor;
  final bool isDarkmode;

  AppTheme({required this.isDarkmode, this.selectedColor = 0})
      : assert(selectedColor >= 0, 'El color seleccionado debe ser mayor a 0'),
        assert(selectedColor <= colorList.length,
            'El colors seleccionado debe ser ${colorList.length} ');

  ThemeData getTheme() => ThemeData(
        useMaterial3: true,
        colorSchemeSeed: colorList[selectedColor],
        brightness: isDarkmode ? Brightness.dark : Brightness.light,
        appBarTheme: const AppBarTheme(centerTitle: false),

        listTileTheme: ListTileThemeData(
            //textColor: colorList[selectedColor],
              
            selectedTileColor: colorList[selectedColor],
            iconColor: colorList[selectedColor],
        )
            
            
            
      );
}

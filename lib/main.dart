
import 'package:basic_flutter/presentation/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:basic_flutter/config/theme/app_theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(      
      debugShowCheckedModeBanner: false,
      title: 'Fundamentos basicos flutter',
      theme: AppTheme(valueColor: 6).seleccionarColor(),

      home: const HomeScreen(),

    );
  }
}

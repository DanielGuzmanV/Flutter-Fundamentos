import 'package:basic_flutter/config/router/app_router.dart';
import 'package:flutter/material.dart';

import 'package:basic_flutter/config/theme/app_theme.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(    
      
      routerConfig: appRouter,

      debugShowCheckedModeBanner: false,
      title: 'Fundamentos basicos flutter',
      theme: AppTheme(valueColor: 6).seleccionarColor(),

    );
  }
}

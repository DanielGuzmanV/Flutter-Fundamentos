import 'package:basic_flutter/config/router/app_router.dart';
import 'package:basic_flutter/presentation/providers/theme_provider.dart';
import 'package:flutter/material.dart';

import 'package:basic_flutter/config/theme/app_theme.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


void main() {
  runApp(
    const ProviderScope(
      child: MainApp(),
    )
  );
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    // final bool valueDarkMode = ref.watch(isDarkmodeProvider);
    // final int selectcolor = ref.watch(selectedColorProvider);

    final AppTheme appThemeProvier = ref.watch(themeNotifierProvider);

    return MaterialApp.router(    
      
      routerConfig: appRouter,

      debugShowCheckedModeBanner: false,
      title: 'Fundamentos basicos flutter',
      theme: appThemeProvier.seleccionarColor(),

    );
  }
}

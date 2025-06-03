import 'package:basic_flutter/config/theme/app_theme.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Boolean para el darkmode:
final isDarkmodeProvider = StateProvider<bool>((ref) => false,);

// Lista de colores
final colorListProvider = Provider((ref) => colorList,);

final selectedColorProvider = StateProvider<int>((ref) => 0);




// ==================================================
final themeNotifierProvider = StateNotifierProvider<ThemeControllNotifier, AppTheme>(
  (ref) => ThemeControllNotifier()
);

// Clase 
class ThemeControllNotifier extends StateNotifier<AppTheme> {

  // State = Estado = new AppTheme();
  ThemeControllNotifier(): super(AppTheme());

  void toggleDarkmode() {
    state = state.copyWith(isDarkmode: !state.isDarkmode);
  }

  void changeColorIndex(int colorIndex) {
    state = state.copyWith(valueColor: colorIndex);
  }

}






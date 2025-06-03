import 'package:basic_flutter/config/theme/app_theme.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final isDarkmodeProvider = StateProvider<bool>((ref) => false,);

// Lista de colores
final colorListProvider = Provider((ref) => colorList,);
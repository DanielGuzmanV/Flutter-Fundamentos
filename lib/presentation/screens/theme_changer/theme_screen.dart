import 'package:basic_flutter/presentation/providers/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ThemeScreen extends ConsumerWidget {
  static const String nameclass = 'theme_screen';

  const ThemeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref ) {
    final isDarkmode = ref.watch(isDarkmodeProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Cambiar temas'),
        actions: [
          IconButton(
            onPressed: (){}, 
            icon: Icon(isDarkmode? Icons.dark_mode_outlined : Icons.light_mode_outlined),
          )
        ],
      ),

      body: const _ThemeChangerview(),
    );
  }
}

class _ThemeChangerview extends ConsumerWidget {
  const _ThemeChangerview();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<Color> valueColors = ref.watch(colorListProvider);

    return ListView.builder(
      itemCount: valueColors.length,
      itemBuilder: (context, index) {
        final Color indexColor = valueColors[index];

        return RadioListTile(
          title: Text('El color es: ', style: TextStyle(color: indexColor)),
          subtitle: Text('${indexColor.value}'),
          activeColor: indexColor,
          value: index, 
          groupValue: 1, 
          onChanged: (value) {
            
          },
        );
      },
    );
  }
}

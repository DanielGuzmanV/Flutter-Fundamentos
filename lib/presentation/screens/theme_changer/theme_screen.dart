import 'package:basic_flutter/presentation/providers/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ThemeScreen extends ConsumerWidget {
  static const String nameclass = 'theme_screen';

  const ThemeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref ) {

    final bool isDarkmode = ref.watch(themeNotifierProvider).isDarkmode;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Cambiar temas'),
        actions: [
          IconButton(
            onPressed: (){
              // ref.read(isDarkmodeProvider.notifier).update((state) => !state);
            
              ref.read(themeNotifierProvider.notifier).toggleDarkmode();
            }, 
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
    final int selectColor = ref.watch(themeNotifierProvider).valueColor;

    return ListView.builder(
      itemCount: valueColors.length,
      itemBuilder: (context, index) {
        final Color indexColor = valueColors[index];

        return RadioListTile(
          title: Text('El color es: ', style: TextStyle(color: indexColor)),
          subtitle: Text('${indexColor.value}'),
          activeColor: indexColor,
          value: index, 
          groupValue: selectColor, 
          onChanged: (value) {
            ref.read(themeNotifierProvider.notifier).changeColorIndex(index);
          },
        );
      },
    );
  }
}

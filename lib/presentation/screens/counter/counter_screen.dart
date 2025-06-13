import 'package:basic_flutter/presentation/providers/counter_provider.dart';
import 'package:basic_flutter/presentation/providers/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class CounterScreen extends ConsumerWidget {
  static const String nameclass = 'counter_screen';
  
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final int clickCounter = ref.watch(counterProvider);
    final bool iconIsDarkmode = ref.watch(themeNotifierProvider).isDarkmode;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: const Text('Counter Screen'),
        actions: [
          IconButton(
            onPressed: (){
              ref.read(themeNotifierProvider.notifier).toggleDarkmode();
            }, 
            icon: iconIsDarkmode
              ? const Icon(Icons.dark_mode_outlined) 
              : const Icon(Icons.light_mode_outlined),
          )
        ],
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$clickCounter', 
              style: const TextStyle(
                fontSize: 80,
                fontWeight: FontWeight.w500
              )
            ),

            Text(
              'Nuemero${clickCounter >= 10? 's' : ''}',
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500
              ),

            ),

            ElevatedButton(
              onPressed: () {
                final valueCounter = ref.read(counterProvider.notifier);
                valueCounter.state++;
              }, 
              child: const Text('Presionar')
            ),
          ],
        ),
      ),

      // Barra de navegacion:
      bottomNavigationBar: const _CustomBottomNavigation(),
      // ==============================



      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          _CustomFloatingActionButton(
            valueIcon: const Icon(Icons.refresh_rounded), 
            valueOnPressed: () {
              final valueCounter = ref.read(counterProvider.notifier);
              valueCounter.state = 0;
            }, 
            valueLabel: const Text('  0'), 
            valueHeroTag: 'fab1',
          ),

          const SizedBox(height: 20,),

          _CustomFloatingActionButton(
            valueIcon: const Icon(Icons.add_box_rounded),
            valueOnPressed: () {
              final valueCounter = ref.read(counterProvider.notifier);
              valueCounter.state = valueCounter.state + 5;
            }, 
            valueLabel: const Text('+ 5'),
            valueHeroTag: 'fab2',
          ),

          const SizedBox(height: 20,),

          _CustomFloatingActionButton(
            valueIcon: const Icon(Icons.delete),
            valueOnPressed: () {
              final valueCounter = ref.read(counterProvider.notifier);
              if(valueCounter.state <= 5) return;
              valueCounter.state = valueCounter.state - 5;
            }, 
            valueLabel: const Text('- 5'),
            valueHeroTag: 'fab3',
          ),

          const SizedBox(height: 10,),

        ],
      )
    );
  }
}

// Clase para el boton flotante:
class _CustomFloatingActionButton extends StatelessWidget {
  final Icon? valueIcon;
  final VoidCallback valueOnPressed;
  final Widget valueLabel;
  final String valueHeroTag;


  const _CustomFloatingActionButton({
    this.valueIcon,
    required this.valueOnPressed,
    required this.valueLabel,
    required this.valueHeroTag,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: valueOnPressed,
      label: valueLabel,
      icon: valueIcon,
      heroTag: valueHeroTag,
    );
  }
}

// Clase para los botones de navegacion
class _CustomBottomNavigation extends StatelessWidget {
  const _CustomBottomNavigation();

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      onTap: (value) {
        switch (value) {
          case 0:
            context.go('/');
            break;
          case 1:
            context.push('/theme_changer');
            break;
          case 2:
            context.push('/buttons');
            break;
        }
      },
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.color_lens),
          label: 'Temas'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.branding_watermark_outlined),
          label: 'Botones'
        ),
      ]
    );
  }
}
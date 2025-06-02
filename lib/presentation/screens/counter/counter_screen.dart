import 'package:basic_flutter/presentation/providers/counter_provider.dart';
import 'package:basic_flutter/presentation/providers/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CounterScreen extends ConsumerWidget {
  static const String nameclass = 'counter_screen';
  
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final int clickCounter = ref.watch(counterProvider);
    final bool isDarkmode = ref.watch(isDarkmodeProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
        actions: [
          IconButton(
            onPressed: (){
              // Primera forma:
              // ref.read(isDarkmodeProvider.notifier).state = !ref.read(isDarkmodeProvider);

              // Segunda forma:
              ref.read(isDarkmodeProvider.notifier).update((state) => !state,);
            }, 
            icon: isDarkmode? const Icon(Icons.dark_mode_outlined) : const Icon(Icons.light_mode_outlined),
          )
        ],
      ),

      body: Center(
        child: Text('Valor: $clickCounter', style: Theme.of(context).textTheme.titleLarge),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final valueCounter = ref.read(counterProvider.notifier);
          valueCounter.state++;
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
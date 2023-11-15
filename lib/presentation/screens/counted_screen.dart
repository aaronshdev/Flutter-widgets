import 'package:fl_components/presentation/providers/counted_provider.dart';
import 'package:fl_components/presentation/providers/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CountedScreen extends ConsumerWidget {
  const CountedScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final int clickCounter = ref.watch(counterProvider);
    final bool isDarkMode = ref.watch(isDarkThemeProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counted Screen'),
        actions: [
          IconButton(
            icon: isDarkMode ? const Icon(Icons.light_mode_outlined)
            : const Icon(Icons.dark_mode_outlined),
            onPressed: () {
              ref.read(isDarkThemeProvider.notifier).state = !isDarkMode;
            },
          )
        ],
      ),
      body: Center(
        child: Text(
          'Valor: $clickCounter',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //ref.read(counterProvider.notifier).state = +2;
          ref.read(counterProvider.notifier).update((state) => state + 1);
          //ref.read(counterProvider.notifier).state++;
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

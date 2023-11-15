import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fl_components/presentation/providers/theme_provider.dart';

class ThemeChangeScreen extends ConsumerWidget {
  const ThemeChangeScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {
    //final bool isDarkMode = ref.watch(isDarkThemeProvider);
    final bool isDarkMode = ref.watch(themeNotifierProvider).isDarckMode;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme Changer'),
        actions: [
          IconButton(
            icon: isDarkMode
                ? const Icon(Icons.light_mode_outlined)
                : const Icon(Icons.dark_mode_outlined),
            onPressed: () {
              // ref.read(isDarkThemeProvider.notifier).state = !isDarkMode;
              ref.read(themeNotifierProvider.notifier).toggleDarkmode();
            },
          )
        ],
      ),
      body: const _ThemeChangerWidget(),
    );
  }
}

class _ThemeChangerWidget extends ConsumerWidget {
  const _ThemeChangerWidget();

  @override
  Widget build(BuildContext context, ref) {
    final List<Color> colors = ref.watch(colorListProvider);
    //final int selectedColor = ref.watch(selectedColorProvider);
    final int selectedColor = ref.watch(themeNotifierProvider).selectedColor;
    return ListView.builder(
      itemCount: colors.length,
      itemBuilder: (context, index) {
        final Color color = colors[index];
        return RadioListTile(
          title: Text(
            'Color: ${index + 1}',
            style: TextStyle(color: color),
          ),
          subtitle: Text('Number: ${color.value}'),
          activeColor: color,
          value: index,
          groupValue: selectedColor,
          onChanged: (value) {
            // ref.read(selectedColorProvider.notifier).state = index;
            ref.read(themeNotifierProvider.notifier).changeColorIndex(index);
          }
        );
      },
    );
  }
}

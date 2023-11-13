import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buittons'),
      ),
      body: const _Buttons(),
      floatingActionButton: FloatingActionButton(
        onPressed: ()=> context.pop(),
        child: const Icon(Icons.arrow_back_ios_new_rounded),
      ),
    );
  }
}

class _Buttons extends StatelessWidget {
  const _Buttons();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Wrap(
        spacing: 10,
        children: [
          ElevatedButton(onPressed: (){}, child: const Text('Elevated')),
          FilledButton(onPressed: (){}, child: const Text('Filled Button')),
          OutlinedButton(onPressed: (){}, child: const Text('Outline Button'),),
          ElevatedButton.icon(onPressed: (){}, label: const Text('Elevated Icon'), icon: const Icon(Icons.accessible_forward),),
          FilledButton.icon(onPressed: (){}, label: const Text('Filled Icon'), icon: const Icon(Icons.accessible_forward),),
          TextButton(onPressed: (){}, child: const Text('Text Button')),
          TextButton.icon(onPressed: (){}, icon: const Icon(Icons.live_tv_outlined), label: const Text('Text icon')),
          IconButton.filled(onPressed: (){}, icon: const Icon(Icons.ac_unit_rounded)),
          IconButton(onPressed: (){}, icon: const Icon(Icons.phone_callback_rounded))
        ],
      ),
    );
  }
}

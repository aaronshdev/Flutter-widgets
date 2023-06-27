import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: TextButton(
          child: const Text('Menu'),
          onPressed: () => Navigator.pushNamed(context, 'menu'),
        ),
      ),
    );
  }
}

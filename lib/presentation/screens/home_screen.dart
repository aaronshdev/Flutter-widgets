import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
          child: const Text('Home  screen'),
          //onPressed: () => Navigator.pushNamed(context, 'menu'),
          onPressed: () => context.push('/menu'),
        ),
      ),
    );
  }
}

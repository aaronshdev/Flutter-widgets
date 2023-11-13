import 'dart:math';

import 'package:flutter/material.dart';

class Animated extends StatefulWidget {
  const Animated({super.key});

  @override
  State<Animated> createState() => _AnimatedState();
}

class _AnimatedState extends State<Animated> {
  double _width = 50;
  double _height = 50;
  Color _color = Colors.orangeAccent;
  BorderRadius _borderRadius = BorderRadius.circular(10);

  void changedShape() {
    final rnd = Random();
    _width = rnd.nextInt(300).toDouble() + 70;
    _height = rnd.nextInt(300).toDouble() + 70;
    _color =
        Color.fromRGBO(rnd.nextInt(255), rnd.nextInt(255), rnd.nextInt(255), 1);
    _borderRadius = BorderRadius.circular(rnd.nextInt(100).toDouble() + 10);

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Animacion n' Circle Avatar"), actions: [
        Container(
          margin: const EdgeInsets.only(right: 5),
          child: const CircleAvatar(
            child: Text("SH"),
          ),
        )
      ]),
      body: Center(
        child: AnimatedContainer(
            duration: const Duration(milliseconds: 400),
            curve: Curves.easeInCubic,
            width: _width,
            height: _height,
            decoration:
                BoxDecoration(color: _color, borderRadius: _borderRadius)),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: changedShape,
        child: const Icon(
          Icons.play_arrow_outlined,
          size: 35,
        ),
      ),
    );
  }
}

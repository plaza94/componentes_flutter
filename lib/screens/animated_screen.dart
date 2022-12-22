import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
  AnimatedScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  double _width = 50;
  double _heigth = 50;
  Color _color = Colors.pink;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(20);

  void changeShape() {
    final random = Random();

    _width = random.nextInt(300).toDouble() + 70;
    _heigth = random.nextInt(300).toDouble() + 70;
    //_color = Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
    _color = Color.fromRGBO(
        random.nextInt(255), random.nextInt(255), random.nextInt(255), 1);
    _borderRadius = BorderRadius.circular(Random().nextDouble() * 200);

/* 

    _width +=100;
    _heigth += 100;
    _color = Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
    _borderRadius = BorderRadius.circular(Random().nextDouble() * 200);

*/

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Animated Container')),
      body: Center(
          child: AnimatedContainer(
        curve: Curves.elasticInOut,
        width: _width,
        height: _heigth,
        decoration: BoxDecoration(color: _color, borderRadius: _borderRadius),
        duration: const Duration(milliseconds: 400),
      )),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.play_arrow, size: 35),
          onPressed: () {
            changeShape();
          }),
    );
  }
}

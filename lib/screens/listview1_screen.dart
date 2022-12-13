import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  const ListView1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Tipo 1'),
      ),
      body: ListView(children: [
        const Text('Hola mundo'),
        const Text('Hola mundo'),
        const Text('Hola mundo'),
      ]),
    );
  }
}

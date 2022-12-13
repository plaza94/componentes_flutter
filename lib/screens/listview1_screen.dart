import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  final options = const [
    'GOW3',
    'GOW4',
    'MINECRAFT',
    'LOL',
    'MARIO ODYSEI',
    'POKEMON ARCEUS'
  ];

  const ListView1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Tipo 1'),
      ),
      body: ListView(children: [
        //operador espread ?

        ...options
            .map((game) => ListTile(
                  title: Text(game),
                  trailing: Icon(Icons.arrow_forward),
                ))
            .toList()
        //leading: Icon(Icons.accessible_rounded),
        //map.values.forEach((v) => print("Value: $v"))
        /* children: const [
        ListTile(
          //leading: Icon(Icons.accessible_rounded),
          title: Text('hola mundo'),*/
      ]),
    );
  }
}

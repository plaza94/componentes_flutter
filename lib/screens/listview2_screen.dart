import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  final options = const [
    'GOW3',
    'GOW4',
    'MINECRAFT',
    'LOL',
    'MARIO ODYSEI',
    'POKEMON ARCEUS'
  ];

  const ListView2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ListView Tipo 2'),
          //elevation: 0,
          //backgroundColor: Colors.indigo
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  title: Text(options[index]),
                  trailing: const Icon(Icons.arrow_forward),
                  onTap: () {
                    final game = options[index];
                    print(game.toString());
                  },
                ),
            //itemBuilder: (context, index) => Text(options[index]),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: options.length));
  }
}

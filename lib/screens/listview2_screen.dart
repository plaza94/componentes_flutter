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
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  title: Text(options[index]),
                  trailing: const Icon(Icons.arrow_forward),
                ),
            //itemBuilder: (context, index) => Text(options[index]),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: options.length));
  }
}

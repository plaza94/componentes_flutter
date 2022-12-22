import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avatars'),
        actions: [
          Container(
            margin: const EdgeInsets.only(
                right:
                    5), // margien externo al elemnto, padding margen interno del emento
            child: CircleAvatar(
                child: const Text('CP'), backgroundColor: Colors.purple[200]),
          )
        ],
      ),
      body: const Center(
        child: CircleAvatar(
          maxRadius: 150,
          backgroundImage: NetworkImage(
              'https://i.pinimg.com/564x/a2/d4/4d/a2d44dd7141262816c0eeaaa58530841.jpg'),
        ),
      ),
    );
  }
}

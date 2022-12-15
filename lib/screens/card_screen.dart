import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Card Widget'),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          children: const [
            CustomCardType1(),
            SizedBox(height: 20),
            CustomCardType2(
              imageURL:
                  'https://i.pinimg.com/564x/b7/e2/66/b7e266025c0484e2c22f60e049aa7aac.jpg',
              name: 'Tunning Car Pinterest',
            ),
            SizedBox(height: 20),
            CustomCardType2(
              imageURL:
                  'https://i.pinimg.com/564x/04/bb/cf/04bbcfaa24a90b9e04f26e600616a4cb.jpg',
            ),
            SizedBox(height: 20),
            CustomCardType2(
              imageURL:
                  'https://i.pinimg.com/564x/f2/a7/45/f2a745579356f8dd5246a1180c9ecde8.jpg',
            ),
            SizedBox(height: 100),
          ],
        ));
  }
}

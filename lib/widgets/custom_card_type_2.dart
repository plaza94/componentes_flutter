import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  const CustomCardType2({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 50,
      child: Column(
        children: const [
          FadeInImage(
            image: NetworkImage(
                'https://i.pinimg.com/564x/6b/23/f2/6b23f20e86fdc70dfc108178d74a69d1.jpg'),
            placeholder: AssetImage('assets/jar-loading-dark.gif'),
            width: double.infinity,
            height: 230,
          )
        ],
      ),
    );
  }
}

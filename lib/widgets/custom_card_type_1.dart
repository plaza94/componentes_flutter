import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(
      children: [
        const ListTile(
          leading: Icon(
            Icons.add_a_photo_outlined,
            color: AppTheme.primary,
          ),
          title: Text('Titulo'),
          subtitle: Text(
              'esto es un parrafo sobre card una screen de mi aplicacion componentes'),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {},
                child: const Text('Cancel'),
              ),
              TextButton(
                onPressed: () {},
                child: const Text('OK'),
              ),
            ],
          ),
        )
      ],
    ));
  }
}

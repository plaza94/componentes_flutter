import 'package:flutter/material.dart';

import '../theme/app_theme.dart';
import 'package:fl_components/router/app_routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes de Flutter'),
        elevation: 0,
      ),
      body: ListView.separated(
          itemBuilder: (context, i) => ListTile(
                title: Text(menuOptions[i].name),
                leading: Icon(
                  menuOptions[i].icon,
                  color: AppTheme.primary,
                  //otra alternativa para extraer el color primario del tema es:
                  //Theme.of(context).primaryColor
                ),
                onTap: () {
                  /*final route = MaterialPageRoute(
                      builder: (context) => const ListView1Screen());
                  Navigator.push(context, route);*/
                  Navigator.pushNamed(context, menuOptions[i].route);
                },
              ),
          separatorBuilder: (_, __) => const Divider(),
          itemCount: menuOptions.length),
    );
  }
}

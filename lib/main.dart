import 'package:flutter/material.dart';

import 'screens/screens.dart';
import 'package:fl_components/theme/app_theme.dart';
import 'package:fl_components/router/app_routes.dart';

/*
EXPORTAR LOS PAQUETES AL ARCHIVO SCREENS.DART
import 'package:fl_components/screens/listview1_screen.dart';
import 'package:fl_components/screens/listview2_screen.dart';
import 'package:fl_components/screens/alert_screen.dart';
import 'package:fl_components/screens/card_screen.dart';*/

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: AppRoutes.initialRoute,
        //home: const ListView2Screen(),
        routes: AppRoutes.getAppRoutes(),
        //rutas dinamicas
        onGenerateRoute: AppRoutes.onGenerateRoute,
        theme: AppTheme.darkTheme);
  }
}

import 'package:flutter/material.dart';

import 'screens/screens.dart';

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
        initialRoute: 'home',
        //home: const ListView2Screen(),
        routes: {
          'home': (BuildContext context) => const HomeScreen(),
          'listview1': (BuildContext context) => const ListView1Screen(),
          'listview2': (BuildContext context) => const ListView2Screen(),
          'alert': (BuildContext context) => const AlertScreen(),
          'card': (BuildContext context) => const CardScreen(),
        });
  }
}

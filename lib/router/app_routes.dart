import 'package:fl_components/models/models.dart';
import 'package:flutter/material.dart';

import '../screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    // TODO: borrar home
    MenuOption(
        route: 'home',
        icon: Icons.home,
        name: 'Home Screen',
        screen: HomeScreen()),
    MenuOption(
        route: 'listview1',
        icon: Icons.list,
        name: 'Listview tipo 1',
        screen: ListView1Screen()),
    MenuOption(
        route: 'listview2',
        icon: Icons.list,
        name: 'Listview tipo 2',
        screen: ListView2Screen()),
    MenuOption(
        route: 'alert',
        icon: Icons.sd_card_alert_outlined,
        name: 'Alertas - Alerts',
        screen: AlertScreen()),
    MenuOption(
        route: 'card',
        icon: Icons.card_membership_sharp,
        name: 'Tarjetas - Cards',
        screen: CardScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> routes = {
    'home': (BuildContext context) => const HomeScreen(),
    'listview1': (BuildContext context) => const ListView1Screen(),
    'listview2': (BuildContext context) => const ListView2Screen(),
    'alert': (BuildContext context) => const AlertScreen(),
    'card': (BuildContext context) => const CardScreen(),
  };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    print(settings);
    return MaterialPageRoute(builder: (context) => const AlertScreen());
  }
}

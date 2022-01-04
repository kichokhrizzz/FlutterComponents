import 'package:fl_components/models/models.dart';
import 'package:fl_components/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRoutes {

  static const initialRoute = 'home';

  static final menuOptions = <MenuOption> [
    // TODO: Borrar Home

    MenuOption(route: 'home', name: 'Home Screen', screen: const HomeScreen(), icon: Icons.home),
    MenuOption(route: 'listview1', name: 'ListView Tipo 1', screen: const Listview1Screen(), icon: Icons.list),
    MenuOption(route: 'listview2', name: 'ListView Tipo 2', screen: const Listview2Screen(), icon: Icons.list_sharp),
    MenuOption(route: 'home', name: 'Home Screen', screen: const HomeScreen(), icon: Icons.home),
    MenuOption(route: 'alert', name: 'Alert Screen', screen: const AlertScreen(), icon: Icons.add_alert),
    MenuOption(route: 'card', name: 'Card Screen', screen: const CardScreen(), icon: Icons.card_membership_rounded)

  ];

  static Map<String, Widget Function(BuildContext)> routes ={

    'home' : ( BuildContext context ) => const HomeScreen(),
    'listview1' : ( BuildContext context ) => const Listview1Screen(),
    'listview2' : ( BuildContext context ) => const Listview2Screen(),
    'alert' : ( BuildContext context ) => const AlertScreen(),
    'card' : ( BuildContext context ) => const CardScreen()

  };

  static onGenerateRoute (RouteSettings settings) {
        
        return MaterialPageRoute(builder: (context) => const AlertScreen());
  }

}
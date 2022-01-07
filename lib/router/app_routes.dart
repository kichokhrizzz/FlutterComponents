import 'package:fl_components/models/models.dart';
import 'package:fl_components/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRoutes {

  static const initialRoute = 'home';

  static final menuOptions = <MenuOption> [
    // TODO: Borrar Home

    //MenuOption(route: 'home', name: 'Home Screen', screen: const HomeScreen(), icon: Icons.home),
    MenuOption(route: 'listview1', name: 'ListView Tipo 1', screen: const Listview1Screen(), icon: Icons.list),
    MenuOption(route: 'listview2', name: 'ListView Tipo 2', screen: const Listview2Screen(), icon: Icons.list_sharp),
    MenuOption(route: 'alert', name: 'Alert Screen', screen: const AlertScreen(), icon: Icons.add_alert),
    MenuOption(route: 'card', name: 'Card Screen', screen: const CardScreen(), icon: Icons.card_membership_rounded),
    MenuOption(route: 'avatar', name: 'Avatar Screen', screen: const AvatarScreen(), icon: Icons.supervised_user_circle),
    MenuOption(route: 'animated', name: 'Animated Container', screen: const AnimatedScreen(), icon: Icons.animation)


  ];

  static Map<String, Widget Function (BuildContext)> getAppRoutes(){

    Map<String, Widget Function (BuildContext)> appRoutes = {};

    appRoutes.addAll({'home' : (BuildContext context) => const HomeScreen()});

    for (final option in menuOptions) {
      
      appRoutes.addAll({ option.route : ( BuildContext context ) => option.screen });

    }

    return appRoutes;

  }

  

  static onGenerateRoute (RouteSettings settings) {
        
        return MaterialPageRoute(builder: (context) => const AlertScreen());
  }

}
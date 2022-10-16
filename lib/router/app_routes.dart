import 'package:flutter/material.dart';
import 'package:fl_components/models/menu_option.dart';
import 'package:fl_components/screens/screens.dart';

class AppRoutes{

  static const initialRoute = 'home';
  static final menuOptions = <MenuOption>[
    //TODO: borrar home
    MenuOption(route: 'home', name: 'Home Screen', screen: const HomeScreen(), icon: Icons.home),
    MenuOption(route: 'listview1', name: 'Listview tipo 1', screen: ListView1Screen(), icon: Icons.list_sharp),
    MenuOption(route: 'listview2', name: 'Listview tipo 2', screen: ListView2Screen(), icon: Icons.list_alt),
    MenuOption(route: 'alert', name: 'Alertas - alerts', screen: const AlertScreen(), icon: Icons.add_alert_sharp),
    MenuOption(route: 'card', name: 'Tarjetas - cards', screen: const CardScreen(), icon: Icons.credit_card),
    
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes(){
    
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    for (final option in menuOptions) {
      appRoutes.addAll({option.route :(BuildContext context) => option.screen});
    }

    return appRoutes;
  }

  // Este map es de esa forma porque en el main hay un atributo llamado routes que requiere un mapa con esas caracteristicas
  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home'     :(BuildContext context) => const HomeScreen(),
  //       'listview1':(BuildContext context) => ListView1Screen(),
  //       'listview2':(BuildContext context) => ListView2Screen(), 
  //       'alert'    :(BuildContext context) => const AlertScreen(),
  //       'card'     :(BuildContext context) => const CardScreen(),
  // };
  static Route<dynamic> onGenerateRoute (RouteSettings  settings) {
        return MaterialPageRoute(builder: (context) => const AlertScreen(),);
      }

}
import 'package:fl_components/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRoutes{
  static const initialRoute = 'home';
  static Map<String, Widget Function(BuildContext)> routes = {
    'home'     :(BuildContext context) => const HomeScreen(),
        'listview1':(BuildContext context) => ListView1Screen(),
        'listview2':(BuildContext context) => ListView2Screen(), 
        'alert'    :(BuildContext context) => const AlertScreen(),
        'card'     :(BuildContext context) => const CardScreen(),
  };
  static Route<dynamic> onGenerateRoute (RouteSettings settings) {
        return MaterialPageRoute(builder: (context) => const AlertScreen(),);
      }

}
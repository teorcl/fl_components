import 'package:flutter/material.dart';
import 'package:fl_components/router/app_routes.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    //Traigo los items desde el app_routes
    final menuOptions = AppRoutes.menuOptions;

    return  Scaffold(
      appBar: AppBar(
        title: const Text('Componentes en Flutter'),
        elevation: 0,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
         // leading: const Icon(Icons.access_alarms_sharp),
         // title: const Text('Nombre de ruta'),
         
         leading: Icon(menuOptions[index].icon),
         title:  Text(menuOptions[index].name),
          onTap: () {
            //final route = MaterialPageRoute(builder: (context) => ListView1Screen(),);
            //Navigator.push(context, route);
            Navigator.pushNamed(context, menuOptions[index].route);
          },
        ), 
        separatorBuilder: (_, __) => const Divider(), 
        itemCount: menuOptions.length),
    );
  }
}
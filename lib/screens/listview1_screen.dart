import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget { 
   
  List<String> options = const['Megaman', 'Metal Gear', 'Final Fantasy','Mario Bros']; 

   ListView1Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("ListView tipo 1"),
      ),
      body: ListView(

        //Usemos la lista de options dentro del listView mediante ListTiles
        children:  [
          //options.map((e) => null)
          ...options.map(
            (game) => 
            ListTile(
              leading: const Icon(Icons.accessibility_new_outlined),
              title: Text(game),
              trailing: const Icon(Icons.arrow_forward_ios_outlined)
            )).toList()
          /*ListTile(
            leading: Icon(Icons.access_time),
            title: Text('Hola Mundo'), 
          )*/
        ],
      )
    );
  }
}
import 'package:fl_components/themes/app_theme.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
   
  const AlertScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
         child: ElevatedButton(
          onPressed: () { }, 
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Text('Mostrar Alerta', style: TextStyle(fontSize: 16)),
          )
        )
      ),

      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.close),
        onPressed:() {
          Navigator.pop(context);
        }, 
      ),

    );
  }
}
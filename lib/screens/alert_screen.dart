import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AlertScreen extends StatelessWidget {
   
  const AlertScreen({Key? key}) : super(key: key);


  void displayDialogIOS( BuildContext context){
    showCupertinoDialog(
      barrierDismissible: false,
      context: context, 
      builder: (context) {
        return CupertinoAlertDialog(
          title: const Text('Titulo'),

          content: Column(
            mainAxisSize: MainAxisSize.min ,
            children: const [
              Text('Este es el contenido de la alerta'),
              SizedBox(height: 10),
              FlutterLogo(size: 70,)
            ],
          ),

          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context), 
              child: const Text('Cancelar',style: TextStyle(color: Colors.red),)
            ),
            TextButton(
              onPressed: () => Navigator.pop(context), 
              child: const Text('Ok')
            )
          ],
        );
      },
    );
  }
  
  void displayDialogAndroid( BuildContext context){
    showDialog(
      barrierDismissible: false, //Esto me permite cerrar el dialog cuando hago click en la parte oscura de la pantalla, si está en true
       context: context, 
      builder: (context) {
        return  AlertDialog(
          elevation: 5,
          title: const Text('Titulo'),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20) 
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min ,
            children: const [
              Text('Este es el contenido de la alerta'),
              SizedBox(height: 10),
              FlutterLogo(size: 70,)
            ],
          ),

          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context), 
              child: const Text('Cancelar',style: TextStyle(color: Colors.red),)
            ),
            TextButton(
              onPressed: () => Navigator.pop(context), 
              child: const Text('Ok')
            )
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
         child: ElevatedButton(
          // onPressed: () {},
          //  onPressed: () => displayDialogAndroid(context),
           onPressed: () => Platform.isAndroid 
                          ? displayDialogAndroid(context) //Si la plataforma es android ejecuta esta 
                          : displayDialogIOS(context), //En caso contratio ejecuta este
          //onPressed: displayDialog, 
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
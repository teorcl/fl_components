import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
   
  const AlertScreen({Key? key}) : super(key: key);
  
  void displayDialog( BuildContext context){
    showDialog(
      barrierDismissible: true,
      context: context, 
      builder: (context) {
        return  AlertDialog(
          elevation: 5,
          title: const Text('Titulo'),
          content: Column(
            mainAxisSize: MainAxisSize.min ,
            children: const [
              Text('Este es el contenido de la alerta')
            ],
          ),
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
           onPressed: () => displayDialog(context),
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
import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
   
  const InputsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs y Forms'),
      ),
      body: SingleChildScrollView(
         child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Column(
            children: const [
              
              CustomInputField(labelText: 'Nombre', hintText: 'Nombre del usuario'),
              SizedBox(height: 30),

              CustomInputField(labelText: 'Apellido', hintText: 'Apellido del usuario'),
              SizedBox(height: 30),

              CustomInputField(labelText: 'Email', hintText: 'Correo del usuario',keyboardType: TextInputType.emailAddress,),
              SizedBox(height: 30),

              CustomInputField(labelText: 'Password', hintText: 'Contraseña',isObscureText: true,),
              SizedBox(height: 30)
            
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
   
  const InputsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name':'Teodoro',
      'last_name' :'Calle',
      'email'     :'teo.calle.lara@google.com',
      'password'  :'123456',
      'role'      :'administrador'
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs y Forms'),
      ),
      body: SingleChildScrollView(
         child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Form(
            key: myFormKey, //Esto lo hago despues de definir el formkey
            child: Column(
              children:  [
                
                CustomInputField(labelText: 'Nombre', hintText: 'Nombre del usuario', formProperty: 'first_name', formValues: formValues,),
                const SizedBox(height: 30),
          
                CustomInputField(labelText: 'Apellido', hintText: 'Apellido del usuario', formProperty: 'last_name', formValues: formValues,),
                const SizedBox(height: 30),
          
                CustomInputField(labelText: 'Email', hintText: 'Correo del usuario',keyboardType: TextInputType.emailAddress, formProperty: 'email', formValues: formValues,),
                const SizedBox(height: 30),
          
                CustomInputField(labelText: 'Password', hintText: 'Contraseña',isObscureText: true, formProperty: 'password', formValues: formValues,),
                const SizedBox(height: 30),
          
                ElevatedButton(
                  child: const SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: Center(child: Text('Guardar',style: TextStyle(fontSize:22),))
                  ),
                  onPressed: () {

                    FocusScope.of(context).requestFocus(FocusNode());

                    if(!myFormKey.currentState!.validate()){
                      print('Formulario no válido');
                      return;
                    }
                    //*Imprimir por consola los valores ingresados en el formulario cuando haga tap en el boton de guardar
                    print(formValues);
                  },
                )
              
              ],
            ),
          ),
        ),
      ),
    );
  }
}


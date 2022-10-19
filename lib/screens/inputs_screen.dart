import 'package:flutter/material.dart';

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
            children: [
              TextFormField(
                autofocus: true,
                initialValue: 'Teodoro',
                textCapitalization: TextCapitalization.words,
                onChanged: (value) {
                  print('valie: $value');
                },
                
              )
            ],
          ),
        ),
      ),
    );
  }
}
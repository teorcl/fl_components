import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  List<String> options = const [
    'Megaman',
    'Metal Gear',
    'Final Fantasy',
    'Mario Bros'
  ];

  ListView2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("ListView tipo 2"),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) =>  
              ListTile(
                leading: const Icon(Icons.accessibility_new_outlined),
                title: Text(options[index]),
                trailing: const Icon(Icons.arrow_forward_ios_outlined)),
            separatorBuilder: (_, __) => const  Divider(),
            itemCount: options.length));
  }
}

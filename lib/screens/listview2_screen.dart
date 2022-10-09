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
            itemBuilder: (context, index) =>  Text(options[index]),
            separatorBuilder: (_, __) => const  Divider(),
            itemCount: options.length));
  }
}

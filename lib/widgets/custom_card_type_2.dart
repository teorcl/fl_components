import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  const CustomCardType2 ({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 20,
      child: Column(
        children: const [
          Image(
            image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/3/35/Neckertal_20150527-6384.jpg'),
          ) 
        ],
      ),
    );
  }
}
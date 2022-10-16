import 'package:fl_components/themes/app_theme.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: [
          Card(
            child: Column(
              children: const [
                ListTile(
                  leading: Icon(Icons.favorite, color: AppTheme.primary,size: 50,),
                  title: Text('Esto es una tarjeta'),
                  subtitle: Text('Pariatur labore duis in aute consectetur ea adipisicing voluptate eiusmod consequat dolor. Aliqua laboris et commodo esse ex. Id nulla eiusmod ex do reprehenderit minim aliquip sunt fugiat non aute. Consectetur pariatur anim consectetur ullamco consequat Lorem cillum pariatur do ad exercitation sint voluptate reprehenderit.'),
                )
              ],
            ),
          )
        ],
      )
    );
  }
}
import 'package:flutter/material.dart';
import 'package:fl_components/themes/app_theme.dart';

/*
*Este es el modelo de la tarjeta
*/

//Este podría ser el nombre de la tarjeta que yo necesito por ejemplo tarjeta de contacto etc 
class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(Icons.favorite, color: AppTheme.primary,size: 50,),
            title: Text('Esto es una tarjeta'),
            subtitle: Text('Pariatur labore duis in aute consectetur ea adipisicing voluptate eiusmod consequat dolor. Aliqua laboris et commodo esse ex. Id nulla eiusmod ex do reprehenderit minim aliquip sunt fugiat non aute.'),
          ),

          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(//Este row fue envuelto en un padding
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {}, 
                  child: const Text('Cancel'),
                ),
                TextButton(
                  onPressed: () {}, 
                  child: const Text('Ok')
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
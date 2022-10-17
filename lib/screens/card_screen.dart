import 'package:flutter/material.dart'; 
import '../widgets/widgets.dart';

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
        children: const [
          CustomCardType1(),
          SizedBox(height: 20),
          CustomCardType2(
            nameCard: 'Paisaje 1',imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/3/35/Neckertal_20150527-6384.jpg'
          ),
          SizedBox(height: 20),
          CustomCardType2(
            imageUrl: 'https://www.gardeningknowhow.com/wp-content/uploads/2020/12/lonely-japanese-cherry.jpg',
            nameCard: 'Arbol rosa',
          ),
          SizedBox(height: 20),
          CustomCardType2(
            imageUrl: 'https://landscapetrades.com//assets/1652294870.007985.photo.00.1601578238_(plaque_photo).jpg',
          ),
          SizedBox(height: 20),
          CustomCardType2(
            imageUrl: 'https://chiledescentralizado.cl/wp-content/uploads/2016/03/landscape-04.jpg',
          )

        ],
      )
    );
  }
}


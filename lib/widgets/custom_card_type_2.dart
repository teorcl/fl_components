import 'package:fl_components/themes/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {

  /*======Propiedades======*/
  final String imageUrl;
  final String? nameCard;

  const CustomCardType2 ({
    super.key, 
    required this.imageUrl,  
    this.nameCard
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20) 
      ),
      elevation: 30,
      shadowColor: AppTheme.primary.withOpacity(0.6),
      child: Column(
        children:   [
          FadeInImage(
            image: NetworkImage(imageUrl), 
            placeholder: const AssetImage('assets/jar-loading.gif'),
            width: double.infinity,
            height: 230,
            fit: BoxFit.cover, //Para que la imagen se adapte al widget
            fadeInDuration: const Duration(milliseconds: 300),
          ),

          if(nameCard != null)  //Esto indica que si el nameCard es diferente de null que se contruya el widgets container que se encuentra a continuacion si es null entonces no se construye el text dentro del container
            Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
              child: Text(nameCard ?? 'Tarjeta sin titulo') //Texto envuelto en un container, notese que el nameCard es opcional con ?? paso un valor no llega ninguno

            ) 
        ],
      ),
    );
  }
}
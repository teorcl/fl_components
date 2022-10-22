import 'package:flutter/material.dart';

/*
*Este es el tema global que se le está aplicando a la app
*/

class AppTheme{

  static const Color primary = Colors.indigo;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    
    primaryColor: Colors.indigo,

    // AppBar Theme para aplicarlo a todos los appBar por defecto
    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 0
    ),

    // textButton Theme para aplicarlo a todos los textButton por defecto
    textButtonTheme:  TextButtonThemeData(
      style: TextButton.styleFrom(foregroundColor: primary) 
    ),

    // FloatingActionButtons Theme para aplicarlo a todos los FloatingActionButtons por defecto
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primary,
      elevation: 5
    ),

    // elevatedButtonTheme Theme para aplicarlo a todos los ElevatedButtonTheme por defecto
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primary,
        shape: const StadiumBorder(),
        elevation: 0
      )
    ),

    //inputDecorationTheme Theme para aplicarlo a todos los inputDecorationTheme por defecto
    inputDecorationTheme: const InputDecorationTheme(
      
      floatingLabelStyle: TextStyle( color: primary ),
      
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: primary),
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),topRight: Radius.circular(10))
      ),

      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: primary),
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),topRight: Radius.circular(10))
      ),

      border: OutlineInputBorder(
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),topRight: Radius.circular(10))
      ),

    )

  );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    
    primaryColor: Colors.indigo,

    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 0
    ),

    scaffoldBackgroundColor: Colors.black

  );


}
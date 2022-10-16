import 'package:flutter/material.dart';

/*
*Este es el tema global que se le está aplicando a la app
*/

class AppTheme{

  static const Color primary = Colors.indigo;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    
    primaryColor: Colors.indigo,

    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 0
    ),

    textButtonTheme:  TextButtonThemeData(
      style: TextButton.styleFrom(foregroundColor: primary) 
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
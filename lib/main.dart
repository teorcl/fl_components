import 'package:flutter/material.dart';
import 'package:fl_components/router/app_routes.dart';
import 'package:fl_components/themes/app_theme.dart';
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      //home: ListView2Screen(),
      //initialRoute: 'home',
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.getAppRoutes(),
      onGenerateRoute: AppRoutes.onGenerateRoute,
      //Agreguemos un thema y lo personalizamos para hacerlo global
      // theme: ThemeData.light().copyWith(
      //   primaryColor: Colors.indigo,
      //   appBarTheme: const AppBarTheme(
      //     backgroundColor: Colors.red,
      //     elevation: 0),
      // ),
      theme: AppTheme.lightTheme, //Note que las lineas de la 22 a 26 hacen lo mismo que esta solita

    );
  }
}  
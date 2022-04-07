import 'package:flutter/material.dart';

class AppTheme{

   static const Color primary = Colors.indigo;

   static final ThemeData lightTheme = ThemeData.light().copyWith(
        //Color primario
        primaryColor: primary,

        //AppBar Theme
        appBarTheme: const AppBarTheme(
          elevation: 0,
          color: primary
        )

  ); 

     static final ThemeData darkTheme = ThemeData.dark().copyWith(
        //Color primario
        primaryColor: primary,

        //AppBar Theme
        appBarTheme: const AppBarTheme(
          elevation: 0,
          color: primary
        ),

        scaffoldBackgroundColor: Colors.pink[50]

     );

}
import 'package:flutter/material.dart';

class AppTheme{

   static const Color primary = Colors.orange;

   static final ThemeData lightTheme = ThemeData.light().copyWith(
        //Color primario
        primaryColor: primary,

        //AppBar Theme
        appBarTheme: const AppBarTheme(
          elevation: 0,
          color: primary
        ),

        //TextButton Theme
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(primary: primary)
        ),

        //FloatingActionButtons
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: primary
        ),

        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: primary,
            shape: const StadiumBorder(),
            elevation: 0
          )
        ),

        inputDecorationTheme: const InputDecorationTheme(
 
          floatingLabelStyle: TextStyle( color: primary ),

          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide( color: primary),
            borderRadius: BorderRadius.only( bottomLeft: Radius.circular(10), topRight: Radius.circular(10)),
          ),

          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide( color: primary),
            borderRadius: BorderRadius.only( bottomLeft: Radius.circular(10), topRight: Radius.circular(10)),
          ),

          border: OutlineInputBorder(
            //borderSide: BorderSide( color: primary),
            borderRadius: BorderRadius.only( bottomLeft: Radius.circular(10), topRight: Radius.circular(10)),
          ),

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

        scaffoldBackgroundColor: Colors.pink[50],

                //TextButton Theme
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(primary: primary)
        ),

        //FloatingActionButtons
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: primary
        )

     );

}
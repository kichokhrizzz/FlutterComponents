import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppTheme{

  static const Color primary = Color.fromRGBO(240, 84, 84, 1);
  static const Color secundary = Color.fromRGBO(48, 71, 94, 1);
  static const Color secundarySec = Color.fromRGBO(245, 245, 245, 1);
  static const Color secundaryThird = Color.fromRGBO(18, 18, 18, 1);

  static final ThemeData lightTheme =  ThemeData.light().copyWith(
    
    primaryColor: const Color.fromRGBO(240, 84, 84, 1),

        //AppBar Theme
    appBarTheme: const AppBarTheme(
        color: primary,
        centerTitle: true,
        elevation: 0
    ),
    
    textButtonTheme: TextButtonThemeData(
       style: TextButton.styleFrom(primary: primary) 
    ),

    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primary
    ),

    elevatedButtonTheme:  ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: primary,
        shape: const StadiumBorder(),
        elevation: 0
      )
    )
  );

}
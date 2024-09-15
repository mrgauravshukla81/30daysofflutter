import 'package:flutter/material.dart';
class Mytheme{
  static ThemeData lighttheme(BuildContext context)=> ThemeData(
     primarySwatch: Colors.deepPurple,
        appBarTheme: AppBarTheme(backgroundColor:  Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black)
       
        )
      );
      static ThemeData darktheme(BuildContext context)=> ThemeData(
    brightness: Brightness.dark
      );
  
}
import 'package:flutter/material.dart';

class MyTheme{
  static final ThemeData lightTheme = ThemeData(

bottomNavigationBarTheme: BottomNavigationBarThemeData(


   selectedItemColor: Color(0xff155a7b),
  unselectedItemColor: Colors.grey,
  showSelectedLabels: false,


),

  );
  static final ThemeData darkTheme = ThemeData(

    bottomNavigationBarTheme: BottomNavigationBarThemeData(


      selectedItemColor: Color(0xff155a7b),
      unselectedItemColor: Colors.grey,
      showSelectedLabels: false,


    ),
    appBarTheme: AppBarTheme(

    ),


  );


}
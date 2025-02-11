import 'package:flutter/material.dart';
import 'package:libravarse/core/utils/colors_manager.dart';

class MyTheme{
  static  TextTheme commonTextTheme=TextTheme(
      labelLarge:  TextStyle(
          color: ColorsManager.blueColor,
          fontSize: 30,
          fontWeight: FontWeight.bold),
      //forget
      bodySmall: TextStyle(
          color: ColorsManager.blueColor,
          fontWeight: FontWeight.w500,fontSize: 15),
//sign in option
      displaySmall: TextStyle(      color: ColorsManager.blueColor,fontSize: 16),
      bodyMedium: TextStyle(
          fontWeight: FontWeight.bold,
          color: ColorsManager.blueColor,
          fontSize: 17
      ),
      //subtitle
      titleSmall: TextStyle(      color: ColorsManager.blueColor,
          fontSize: 20,fontWeight: FontWeight.w400),

      //button
      displayLarge: TextStyle(


          color: Colors.white,fontSize: 20,
          fontWeight: FontWeight.bold

      ),
      //section name
      labelMedium: TextStyle(
          color: ColorsManager.blueColor,

          fontWeight: FontWeight.bold,
          fontSize: 17),
      //view all
      headlineSmall: TextStyle(color: Colors.grey,fontSize: 12)

  );

  static  ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    colorScheme: ColorScheme.fromSeed(seedColor: ColorsManager.blueColor,
        primary:ColorsManager.blueColor ,
        secondary: ColorsManager.lightBlue,
      secondaryContainer: Colors.white,

    ),
    
    
    //welcome
textTheme:commonTextTheme,
bottomNavigationBarTheme: BottomNavigationBarThemeData(

  backgroundColor: Colors.white,
   selectedItemColor: ColorsManager.blueColor,
  unselectedItemColor: Colors.grey,
  showSelectedLabels: false,


),

  );
  static  ThemeData darkTheme =ThemeData(
    scaffoldBackgroundColor: Colors.black45,

    colorScheme: ColorScheme.fromSeed(seedColor: ColorsManager.lightBlue,
        primary:ColorsManager.lightBlue ,
        secondary: ColorsManager.blueColor,
      outline: ColorsManager.blackcolor,
      inversePrimary: Colors.white,

    ),


    //welcome
    textTheme: commonTextTheme,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: ColorsManager.lightBlue,
      selectedItemColor: ColorsManager.blueColor,
      unselectedItemColor: Colors.grey,
      showSelectedLabels: false,


    ),

  );


}
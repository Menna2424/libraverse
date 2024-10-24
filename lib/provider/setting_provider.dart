import 'package:flutter/material.dart';

class SettingsProvider extends ChangeNotifier{

  ThemeMode currenttheme=ThemeMode.light;
  String currentlan="en";



  void changeTheme(ThemeMode newTheme){
    if( currenttheme==newTheme )return;
    currenttheme=newTheme;
    notifyListeners();
  }

  void changeLanguage(String newLang){

    if(newLang==currentlan) return;
    currentlan=newLang;
    notifyListeners();


  }


}
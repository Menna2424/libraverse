import 'package:flutter/material.dart';
import 'package:libravarse/provider/setting_provider.dart';
import 'package:libravarse/src/approot.dart';
import 'package:provider/provider.dart';

void main (){

  runApp( ChangeNotifierProvider(
      create: (context) => SettingsProvider(),
      child: AppRoot()));

}
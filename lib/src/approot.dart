import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:libravarse/config/theme.dart';
import 'package:libravarse/presentation/Category/category_screen.dart';
import 'package:libravarse/presentation/favourite/favourite_screen.dart';
import 'package:libravarse/presentation/home_screen/home_screen.dart';
import 'package:libravarse/presentation/home_screen/hometab.dart';
import 'package:libravarse/presentation/my_library_screen/my_library_screen.dart';
import 'package:libravarse/presentation/profile_screen/profile_screen.dart';
import 'package:libravarse/presentation/regester_screens/sign_up_screen.dart';
import 'package:libravarse/presentation/welcom_screen/welcom_screen.dart';
import '../core/utils/routes_manager.dart';
import '../presentation/book_descriprtion/screens/book_screen.dart';
import '../presentation/profile_screen/components/menu_drawer.dart';
import '../presentation/regester_screens/sign_in_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class AppRoot extends StatelessWidget {
  const AppRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
     AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      supportedLocales:[
        Locale('en'),
        Locale("ar")
        
      ] ,
      locale: Locale("en"),


      routes: {
          RoutesManager.welcomeRoute:(context) => WelcomScreen(),
        RoutesManager.signInRoute:(context) => SignInScreen(),
    RoutesManager.homeRoute:(context) => HomeScreen(),
        RoutesManager.signUpRoute:(context) => SignUpScreen(),
        RoutesManager.myLibraryRoute:(context) => MyLibraryScreen(),
        RoutesManager.favouriteRoute:(context) => FavouritScreen(),
        RoutesManager.categoryRoute:(context) => CategoryScreen(),
        RoutesManager.profileRoute:(context) => ProfileScreen(),
     RoutesManager.hometapRoute:(context) => HomeTab(),
        RoutesManager.drawerRoute :(context)=>MenuDrawer(),
        RoutesManager.bookDes:(context)=>BookScreen(),
      },
    initialRoute: RoutesManager.welcomeRoute,
debugShowCheckedModeBanner: false,
      theme: MyTheme.lightTheme,
      darkTheme: ThemeData(),
themeMode: ThemeMode.light,
    );
  }
}

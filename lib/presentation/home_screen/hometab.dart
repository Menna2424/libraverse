

import 'package:flutter/material.dart';

import '../Category/category_screen.dart';
import '../favourite/favourite_screen.dart';
import '../my_library_screen/my_library_screen.dart';
import '../profile_screen/profile_screen.dart';
import 'home_screen.dart';

class HomeTab extends StatefulWidget {
   HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  int selectedIndex=0;

  List<Widget> screens =[
    HomeScreen(),
    CategoryScreen(),
    MyLibraryScreen(),
    FavouritScreen(),
    ProfileScreen(),


  ];

  @override
   Widget build(BuildContext context) {
      return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
           onTap: (value) {
            setState(() {
              selectedIndex=value;
            });
          },
          currentIndex: selectedIndex,
          // type: BottomNavigationBarType.shifting,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home), label: "home", ),
            BottomNavigationBarItem(
                icon: Icon(Icons.category), label: "category", ),
            BottomNavigationBarItem(
                icon: Icon(Icons.local_library), label: "my library", ),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: "favorite", ),
            BottomNavigationBarItem(
                icon: Icon(Icons.person), label: "profile",),
          ],
        ),
        body: screens[selectedIndex],

      );
  }
}

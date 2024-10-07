import 'package:flutter/material.dart';

import '../../core/utils/routes_manager.dart';
import 'components/info_datails.dart';
import 'components/menu_drawer.dart';
import 'models/user_info.dart';



class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff78bbdf),
        elevation: 0,
        title: Text(
          "PROFILE",
          style: Theme.of(context).textTheme.labelLarge,
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.white),
          onPressed: () {
            Navigator.pushNamed(context, RoutesManager.drawerRoute);
            Scaffold.of(context).openDrawer();
          },
        ),
      ),
      drawer: MenuDrawer(),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          image: DecorationImage(
            image: AssetImage('assets/1434933_581.jpg'),
            fit: BoxFit.cover,
            repeat: ImageRepeat.repeat,
            colorFilter: ColorFilter.mode(
              Colors.white.withOpacity(0.4),
              BlendMode.dstATop,
            ),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: 190,
                    decoration: BoxDecoration(
                     // color: Color(0xff155a7b),
                      gradient: LinearGradient(
                        colors: [ Theme.of(context).colorScheme.secondary,
                          Theme.of(context).colorScheme.primary,],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(80),
                        bottomRight: Radius.circular(80),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 30,
                    left: 0,
                    right: 0,
                    child: Center(
                      child: CircleAvatar(
                        radius: 110,
                        backgroundImage: AssetImage('assets/profile_pic.jfif'),
                        backgroundColor: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 90),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    Column(
                      children: userInfo.map((info) {
                        return Column(
                          children: [
                            InfoDetails(
                              icon: info['icon'],
                              text: Text(
                                info['text'],
                                style: Theme.of(context).textTheme.labelMedium,
                              ),
                              iconColor: info['iconColor'],
                            ),
                            SizedBox(height: 10),



                          ],
                        );
                      }).toList(),

                      //   'icon': Icons.logout,
                      //   'text': 'Log Out',
                      //   'iconColor': Colors.redAccent,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacementNamed(context, RoutesManager.welcomeRoute);
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 2,
                              blurRadius: 5,
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.logout, color: Colors.red),
                            SizedBox(width: 20),
                            Expanded(child: Text("Log out",style: Theme.of(context).textTheme.labelMedium,)),
                          ],

                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
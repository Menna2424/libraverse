import 'package:flutter/material.dart';
import 'package:libravarse/core/utils/colors_manager.dart';
import 'package:libravarse/core/utils/images_manager.dart';
import 'package:libravarse/core/utils/strings_manager.dart';
import 'package:libravarse/presentation/welcom_screen/startbutton.dart';

class WelcomScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(ImagesManager.welcomeScreenBG ), fit: BoxFit.fill),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [

              Expanded(
                  child: Image(image: AssetImage("assets/Logo.png"),)

              ),
              SizedBox(height:50,),
              Spacer(),
              Column(
                children: [
                  Center(
                      child: Text(
                    StringsManager.exploreTheWorldAndBeyond,
                    style: TextStyle(
                        color: ColorsManager.blueColor,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  )),
                  StartButton(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

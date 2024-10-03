import 'package:flutter/material.dart';
import 'package:libravarse/core/utils/routes_manager.dart';
import 'package:libravarse/presentation/home_screen/home_screen.dart';

class GoButton extends StatelessWidget {
final String text;

GoButton({required this.text});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(right: 40,left: 40),
      child: ElevatedButton(

          style: ElevatedButton.styleFrom(

              backgroundColor: Color(0xff155a7b),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30))),
          onPressed: () {
        //    if (formKey.cuttentState?.validate()==false)
            //return;
            Navigator.pushReplacementNamed(context, RoutesManager.hometapRoute);
          },
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(

                  "$text",
                  style: TextStyle(

                      color: Colors.white,fontSize: 20),
                ),
              ],
            ),
          )),
    );;
  }
}

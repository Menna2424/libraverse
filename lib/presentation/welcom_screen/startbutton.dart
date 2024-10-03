import 'package:flutter/material.dart';
import 'package:libravarse/core/utils/routes_manager.dart';
import 'package:libravarse/core/utils/strings_manager.dart';

class StartButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xff155a7b),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30))),
        onPressed: () {
          Navigator.pushReplacementNamed(context, RoutesManager.signInRoute);
        },
        child: Container(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                StringsManager.letsStart,
                style: TextStyle(color: Colors.white),
              ),
              Icon(
                Icons.arrow_forward,
                color: Colors.white,
              )
            ],
          ),
        ));
  }
}

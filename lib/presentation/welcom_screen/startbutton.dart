import 'package:flutter/material.dart';
import 'package:libravarse/core/utils/colors_manager.dart';
import 'package:libravarse/core/utils/routes_manager.dart';
import 'package:libravarse/core/utils/strings_manager.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class StartButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: ColorsManager.blueColor,
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
                AppLocalizations.of(context)!.letsStart,
                style: Theme.of(context).textTheme.displayLarge,
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



import 'package:flutter/material.dart';
import 'package:libravarse/core/utils/routes_manager.dart';
import 'package:libravarse/core/utils/strings_manager.dart';
import 'package:libravarse/presentation/regester_screens/sign_up_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../home_screen/home_screen.dart';

class CreateAccountButton extends StatelessWidget {
  const CreateAccountButton({super.key});

  @override
  Widget build(BuildContext context) {
    return  TextButton(
        onPressed: () {
          Navigator.pushReplacementNamed(context, RoutesManager.signUpRoute);
        },
        child: Center(
          child: Text(
            AppLocalizations.of(context)!.createNewAccount,
            style: Theme.of(context).textTheme.bodyMedium
          ),
        ));
  }
}

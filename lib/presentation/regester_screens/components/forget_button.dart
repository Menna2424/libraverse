

import 'package:flutter/material.dart';
import 'package:libravarse/core/utils/strings_manager.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ForgetPasswordButton extends StatelessWidget {
  const ForgetPasswordButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
      AppLocalizations.of(context)!.forgetPassword,
        style: Theme.of(context).textTheme.bodySmall

      ),
    );
  }
}

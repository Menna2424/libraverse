import 'package:flutter/material.dart';
import 'package:libravarse/provider/setting_provider.dart';
import 'package:provider/provider.dart';
import '../components/theme_provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void showlangDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(AppLocalizations.of(context)!.chooseLanguage,style: TextStyle(
            color: Theme.of(context).colorScheme.outline

        ),),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              title: Text(AppLocalizations.of(context)!.arabic),
              onTap: () {
                Provider.of<SettingsProvider>(context,listen: false).changeLanguage("ar");

                Navigator.of(context).pop();
              },
            ),
            ListTile(
              title: Text(AppLocalizations.of(context)!.english),
              onTap: () {
                Provider.of<SettingsProvider>(context,listen: false).changeLanguage("en");

                Navigator.of(context).pop();
              },
            ),
            
          ],
        ),
      );
    },
  );
}



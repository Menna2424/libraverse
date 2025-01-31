import 'package:flutter/material.dart';
import 'package:libravarse/provider/setting_provider.dart';
import 'package:provider/provider.dart';
import '../components/theme_provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void showThemeDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(AppLocalizations.of(context)!.changeTheme,style: TextStyle(
          color: Theme.of(context).colorScheme.outline

        ),),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              title: Text(AppLocalizations.of(context)!.light),
              onTap: () {
                Provider.of<SettingsProvider>(context,listen: false).changeTheme(ThemeMode.light);

                Navigator.of(context).pop();
              },
            ),
            ListTile(
              title: Text(AppLocalizations.of(context)!.dark),
              onTap: () {
                Provider.of<SettingsProvider>(context,listen: false).changeTheme(ThemeMode.dark);

                Navigator.of(context).pop();
              },
            ),
            ListTile(
              title: Text(AppLocalizations.of(context)!.systemDefault),
              onTap: () {
                Provider.of<SettingsProvider>(context, listen: false).changeTheme(ThemeMode.system);

                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      );
    },
  );
}



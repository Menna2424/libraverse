import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../components/theme_provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void showThemeDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(AppLocalizations.of(context)!.changeTheme),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              title: Text(AppLocalizations.of(context)!.light),
              onTap: () {
                Provider.of<ThemeProvider>(context, listen: false)
                    .setTheme(ThemeMode.light);
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              title: Text(AppLocalizations.of(context)!.dark),
              onTap: () {
                Provider.of<ThemeProvider>(context, listen: false)
                    .setTheme(ThemeMode.dark);
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              title: Text(AppLocalizations.of(context)!.systemDefault),
              onTap: () {
                Provider.of<ThemeProvider>(context, listen: false)
                    .setTheme(ThemeMode.system);
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      );
    },
  );
}



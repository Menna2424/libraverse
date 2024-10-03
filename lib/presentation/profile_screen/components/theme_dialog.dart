import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../components/theme_provider.dart';

void showThemeDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Choose Theme'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              title: Text('Light'),
              onTap: () {
                Provider.of<ThemeProvider>(context, listen: false)
                    .setTheme(ThemeMode.light);
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              title: Text('Dark'),
              onTap: () {
                Provider.of<ThemeProvider>(context, listen: false)
                    .setTheme(ThemeMode.dark);
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              title: Text('System Default'),
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



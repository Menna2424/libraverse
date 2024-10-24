import 'package:flutter/material.dart';
import '../components/theme_dialog.dart';
import '../models/menu_items.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'language_dialog.dart';

class MenuDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.outline,
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.6,
        child: ListView(

          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color:Theme.of(context).colorScheme.primary,
              ),
              child: Text(
               AppLocalizations.of(context)!.menu,
                style: Theme.of(context).textTheme.labelLarge?.copyWith(color:Colors.white ),
              ),
            ),
            ...menuItems.map((item) {
              return ListTile(

                leading: Icon(item['icon'],color:Theme.of(context).colorScheme.primary ),
                title: Text(item['text'],style:Theme.of(context).textTheme.displaySmall),
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text(item['onTapMessage'])),
                  );
                },
              );
            }).toList(),
            ListTile(
              leading: Icon(Icons.brightness_6,color: Theme.of(context).colorScheme.primary),
              title: Text(AppLocalizations.of(context)!.changeTheme,style:Theme.of(context).textTheme.displaySmall ),
              onTap: () {
                showThemeDialog(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.brightness_6,color: Theme.of(context).colorScheme.primary),
              title: Text(AppLocalizations.of(context)!.changeLanguage,style:Theme.of(context).textTheme.displaySmall ),
              onTap: () {
                showlangDialog(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}

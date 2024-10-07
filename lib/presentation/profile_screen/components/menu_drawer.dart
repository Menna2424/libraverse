import 'package:flutter/material.dart';
import '../components/theme_dialog.dart';
import '../models/menu_items.dart';

class MenuDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
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
                'Menu',
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
              title: Text('Change Theme',style:Theme.of(context).textTheme.displaySmall ),
              onTap: () {
                showThemeDialog(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}

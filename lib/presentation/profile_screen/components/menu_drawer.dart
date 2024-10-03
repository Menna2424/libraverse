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
                color: Color(0xff155a7b),
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
            ),
            ...menuItems.map((item) {
              return ListTile(
                leading: Icon(item['icon']),
                title: Text(item['text']),
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text(item['onTapMessage'])),
                  );
                },
              );
            }).toList(),
            ListTile(
              leading: Icon(Icons.brightness_6),
              title: Text('Change Theme'),
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

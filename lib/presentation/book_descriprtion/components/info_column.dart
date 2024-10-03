import 'package:flutter/material.dart';

class InfoColumn extends StatelessWidget {
  final IconData icon;
  final String title;
  final String value;

  const InfoColumn({
    required this.icon,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: Colors.black54),
        SizedBox(height: 5),
        Text(
          title,
          style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 5),
        Text(
          value,
          style: TextStyle(color: Colors.black),
        ),
      ],
    );
  }
}

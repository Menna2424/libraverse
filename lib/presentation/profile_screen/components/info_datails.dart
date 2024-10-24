import 'package:flutter/material.dart';

class InfoDetails extends StatelessWidget {
  final IconData icon;
  final Widget text;
  final Color iconColor;

  const InfoDetails({
    required this.icon,
    required this.text,
    required this.iconColor,

  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
          ),
        ],
      ),
      child: Row(
        children: [
          Icon(icon, color: Theme.of(context).colorScheme.secondary),
          SizedBox(width: 20),
          Expanded(child: text),
        ],

      ),
    );
  }
}

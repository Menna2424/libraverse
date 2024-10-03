import 'package:flutter/material.dart';
import 'package:libravarse/core/utils/strings_manager.dart';

class SectionName extends StatelessWidget {
String text;
String route;


SectionName({required this.text,required this.route});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xff155a7b),
            fontSize: 17,
          ),
        ),
        Spacer(),

        TextButton(
            onPressed: () {
              Navigator.pushNamed(context, route);
            },
            child: Row(
              children: [
                Text(
                  StringsManager.viewAllButton,
                  style: TextStyle(color: Colors.grey,fontSize: 12),
                ),
                Icon(Icons.arrow_forward_ios_outlined,color: Colors.grey,size: 12,)
              ],
            )),

      ],
    );
  }
}

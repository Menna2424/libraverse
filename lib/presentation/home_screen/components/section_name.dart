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
          style:Theme.of(context).textTheme.labelMedium,
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
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                Icon(Icons.arrow_forward_ios_outlined,color: Colors.grey,size: 12,)
              ],
            )),

      ],
    );
  }
}

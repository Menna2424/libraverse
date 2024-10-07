import 'package:flutter/material.dart';

class BackHorizontalDV extends StatelessWidget {
  const BackHorizontalDV({super.key});

  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: Container(
          margin: EdgeInsets.only(left: 10),
          child: Divider(
              color: Theme.of(context).colorScheme.primary,
              endIndent: 20,
              thickness: 2)),
    );
  }
}

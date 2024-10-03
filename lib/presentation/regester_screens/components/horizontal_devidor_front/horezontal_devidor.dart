import 'package:flutter/material.dart';

class FrontHorizontalDV extends StatelessWidget {
  const FrontHorizontalDV({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          margin: EdgeInsets.only(right: 10),
          child: Divider(
              color: Color(0xff155a7b),
              indent: 20,
              thickness: 2)),
    );
  }
}

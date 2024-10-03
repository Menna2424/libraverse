import 'package:flutter/material.dart';

import '../../../core/utils/strings_manager.dart';

class PageTitle extends StatelessWidget {
  const PageTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            width: 350,
            child: Image(image: AssetImage("assets/logo1.png") ,)),
      ],
    );
  }
}

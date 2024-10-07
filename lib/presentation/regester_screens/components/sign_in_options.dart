

import 'package:flutter/material.dart';

import '../../../core/utils/images_manager.dart';

class SignInOptions extends StatelessWidget {
  const SignInOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: 65,
          width: 65,
          decoration: BoxDecoration(
              color:Theme.of(context).colorScheme.secondary,
              borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Image.asset(
              ImagesManager.googleLogo,
            ),
          ),
        ),
        Container(
          height: 65,
          width: 65,
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary,
              borderRadius: BorderRadius.circular(10)),
          child: Icon(Icons.facebook, color: Colors.blue, size: 45),
        ),
        Container(
          height: 65,
          width: 65,
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary,
              borderRadius: BorderRadius.circular(10)),
          child: Icon(Icons.apple, color: Colors.black, size: 40),
        ),
      ],
    );
  }
}

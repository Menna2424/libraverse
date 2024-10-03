

import 'package:flutter/material.dart';
import 'package:libravarse/core/utils/strings_manager.dart';

class ForgetPasswordButton extends StatelessWidget {
  const ForgetPasswordButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
      StringsManager.forgetPassword,
        style: TextStyle(
            color: Color(0xff155a7b),
            fontWeight: FontWeight.w500),
      ),
    );
  }
}

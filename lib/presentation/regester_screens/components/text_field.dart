
import 'package:flutter/material.dart';
import 'package:libravarse/core/utils/strings_manager.dart';

class TextField extends StatelessWidget {
  const TextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          hintText: StringsManager.userName,
          filled: true,
          fillColor: Color(0xffa8d5e5),
          hintStyle: TextStyle(color: Colors.black26),
          border:OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide.none

          )

      ),
    );
  }
}

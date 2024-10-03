import 'package:flutter/material.dart';

class CheckBoxItem extends StatefulWidget {
bool isChecked;


CheckBoxItem(this.isChecked);

  @override
  State<CheckBoxItem> createState() => _CheckBoxItemState();
}

class _CheckBoxItemState extends State<CheckBoxItem> {
  @override
  Widget build(BuildContext context) {
    return  Checkbox(
        activeColor: Color(0xff155a7b),
        value: widget.isChecked,
        onChanged: (bool? newValue) {
          setState(() {
            widget.isChecked = newValue!;
          });
        });
  }
}

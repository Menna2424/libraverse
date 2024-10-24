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
        activeColor: Theme.of(context).colorScheme.primary,
        value: widget.isChecked,
        onChanged: (bool? newValue) {
          setState(() {
            widget.isChecked = newValue!;
          });
        });
  }
}

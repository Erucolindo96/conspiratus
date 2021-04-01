import 'package:flutter/material.dart';

class RowTextInput extends StatelessWidget {
  late final String labelText;

  RowTextInput(String labelText) : super() {
    this.labelText = labelText;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            width: 300,
            height: 50,
            child: TextFormField(
                decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: labelText)))
      ],
    );
  }

}



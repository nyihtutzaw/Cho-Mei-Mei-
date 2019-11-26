import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  var buttonText;
  var buttonSign;

  final int type;
  final Function buttonClick;

  Button(this.type, this.buttonClick);

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case 1:
        buttonText = "Sum";
        buttonSign = "+";
        break;
      case 2:
        buttonText = "Minus";
        buttonSign = "-";
        break;
      case 3:
        buttonText = "Multiply";
        buttonSign = "x";
        break;
      case 4:
        buttonText = "Division";
        buttonSign = "/";
        break;
    }

    return FlatButton(
      onPressed: () => buttonClick(type),
      color: Colors.red,
      padding: EdgeInsets.all(5),
      child: Column(
        // Replace with a Row for horizontal icon + text
        children: <Widget>[
          Text(
            buttonSign,
            style: TextStyle(color: Colors.white, fontSize: 22),
          ),
          Text(
            buttonText,
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class TextBoxContainer extends StatelessWidget {

  var num1Controller;
  var num2Controller;

  TextBoxContainer(this.num1Controller,this.num2Controller);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Number 1",
                ),
                controller: num1Controller,
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Number 2",
                ),
                controller: num2Controller,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

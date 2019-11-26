import 'package:flutter/material.dart';
import './Button.dart';

class ButtonContainer extends StatelessWidget {
  
  final Function btnClick;

  ButtonContainer(this.btnClick);

  void buttonClick(int type)
  {
    btnClick(type);
  }
  
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Button(1,buttonClick),
                Button(2,buttonClick),
              ],
            ),
          ),
          Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Button(3,buttonClick),
                    Button(4,buttonClick),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

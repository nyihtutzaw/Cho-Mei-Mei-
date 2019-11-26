import 'package:flutter/material.dart';

class ResultContainer extends StatelessWidget {
  
  final double result;

  ResultContainer(this.result);
  
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
        child:result!=null?Column(
          children: <Widget>[
            
            Text(
              "RESULT",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 50,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "IS",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 50,
                  fontWeight: FontWeight.bold),
            ),
            
            Text(
              '${result}',
              style: TextStyle(
                  color: Colors.red, fontSize: 50, fontWeight: FontWeight.bold),
            ),
          ],
        ):null,
      ),
    );
  }
}

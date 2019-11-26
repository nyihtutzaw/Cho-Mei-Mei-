import 'package:flutter/material.dart';
import './widgets/TextBox/TextBoxContainer.dart';
import './widgets/Button/ButtonContainer.dart';
import './widgets/Result/ResultContainer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override

  final num1Controller=TextEditingController();
  final num2Controller=TextEditingController();
  double result;
  

  void btnClick(type)
  {
      if (num1Controller.text.length>0 && num2Controller.text.length>0)
      {
        double num1=double.parse(num1Controller.text);
        double num2=double.parse(num2Controller.text);

        double data;

        switch (type) {
          case 1:data=num1+num2;break;
          case 2:data=num1-num2;break;
          case 3:data=num1*num2;break;
          case 4:data=num1/num2;break;
        }

        setState(() {
          result=data;
        });

        num1Controller.clear();
        num2Controller.clear();


      }
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      theme: ThemeData(
        primaryColor: Colors.red,
      ),
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(title: Text("Cho Mei Mei"), actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.settings,
              color: Colors.white,
            ),
          )
        ]),
        body: Container(
          child: Column(
            children: <Widget>[
              TextBoxContainer(num1Controller,num2Controller),
              ButtonContainer(btnClick),
              ResultContainer(result),
              
            ],
          ),
        
        ),
      ),
    );
  }
}

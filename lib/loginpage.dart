import 'package:flutter/material.dart';
import 'package:fluttercap/custom_appbar.dart';

class Loginpage extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: CustomAppBar(
          title: 'Silver Watch',
        ),
        body: Container(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
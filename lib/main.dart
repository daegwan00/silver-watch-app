import 'package:flutter/material.dart';
//import 'package:fluttercap/custom_appbar.dart';
import 'package:fluttercap/homepage.dart';
import 'package:fluttercap/loginpage.dart';

import 'package:fluttercap/signuser.dart';
import 'package:fluttercap/signuppage.dart';
import 'package:fluttercap/signfamily.dart';

void main() {
  runApp(familysign()); //앱 시작
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage()    
    );
  
  }
}

import 'package:flutter/material.dart';
import 'homepage.dart';
import 'loginpage.dart';
import 'signuser.dart';

void main() {
  runApp(MyApp()); //앱 시작
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      routes: {
        '/login': (context) => LoginPage(),
        '/signup': (context) => UserSign()
      },
    );
  }
}

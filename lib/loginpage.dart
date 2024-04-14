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
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(height: 40.0,),
              Text(
                '로그인',
                style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 48.0),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0), 
                child: Text(
                  '아이디',
                  style: TextStyle(
                    fontSize: 15.0, 
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 8.0), 
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0), 
                child: SizedBox(
                  width: 200,
                  height: 50,
                  child: TextFormField(
                    cursorColor: Color.fromARGB(255, 121, 214, 160),
                    decoration: InputDecoration(
                      labelText: '아이디를 입력하세요',
                      border: OutlineInputBorder(),
                       focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 121, 214, 160),
                        )
                      )
                    ),
                  ),
                )
              ),
              SizedBox(height: 40.0,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: Text(
                  '비밀번호',
                  style: TextStyle(
                    fontSize: 15.0, 
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 8.0),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: SizedBox(
                  height: 50,
                  child: TextFormField(
                    cursorColor: Color.fromARGB(255, 121, 214, 160),
                    decoration: InputDecoration(
                      labelText: '비밀번호를 입력하세요',
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 121, 214, 160),
                        ),
                        
                      )
                    ),
                    obscureText: true,
                  ) 
                ),
              ),
            ],
          ),
        )      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:fluttercap/custom_appbar.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height; // 화면 높이를 얻습니다.

    return MaterialApp(
      home: Scaffold(
        appBar: CustomAppBar(
          title: 'Silver Watch',
        ),
        body: SingleChildScrollView( // 스크롤 가능한 뷰 추가
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: screenHeight, // 최소 높이를 화면 높이로 설정
            ),
            child: IntrinsicHeight(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    SizedBox(height: 40.0),
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
                        style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30.0),
                      child: TextFormField(
                        cursorColor: Color.fromARGB(255, 121, 214, 160),
                        decoration: InputDecoration(
                          labelText: '아이디를 입력하세요',
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color.fromARGB(255, 121, 214, 160)),
                          )
                        ),
                      )
                    ),
                    SizedBox(height: 40.0),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30.0),
                      child: Text(
                        '비밀번호',
                        style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30.0),
                      child: TextFormField(
                        cursorColor: Color.fromARGB(255, 121, 214, 160),
                        decoration: InputDecoration(
                          labelText: '비밀번호를 입력하세요',
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color.fromARGB(255, 121, 214, 160)),
                          )
                        ),
                        obscureText: true,
                      )
                    ),
                    SizedBox(height: 50,),

                    
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 150,
                            height: 50,
                            child: ElevatedButton(
                              onPressed: () {
                                // 로그인 버튼 클릭 시 실행할 코드
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFF69DA98),
                                foregroundColor: Colors.black,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                              child: Text('로그인'),
                            ),
                          ),
                          SizedBox(width: 16.0,),
                          SizedBox(
                            width: 150,
                            height: 50,
                            child: ElevatedButton(
                              onPressed: () {
                                // 회원가입 버튼 클릭 시 실행할 코드
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                foregroundColor: Colors.black,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                              child: Text('회원가입'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

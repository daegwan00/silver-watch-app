import 'package:flutter/material.dart';
import 'package:fluttercap/custom_appbar.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height; // 화면 높이를 얻습니다.

    return MaterialApp(
      home: Scaffold(
        appBar: CustomAppBar(
          title: 'Silver Watch',
        ),
      
        body: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: screenHeight, // 최소 높이를 화면의 높이로 설정
            ),
            child: IntrinsicHeight(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: screenHeight * 0.05),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      '회원가입',
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.02),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 100.0), // 가로 여백 추가
                    child: Row(children: [
                        Text(
                        '아이디',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black
                        ),
                      ),
                      Spacer(), // 공간 자동 조정
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          '중복확인',
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.black
                          )
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFEEEEEE),
                        ),
                      ),
                    ]),
                  ),

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 100.0), // 가로 여백 추가
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: '아이디를 입력하세요.',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0))
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.01),


                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 100.0), // 가로 여백 추가
                    child: Text(
                      '비밀번호',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 100.0), // 가로 여백 추가
                    child: TextField(
                      obscureText: true, // 비밀번호를 별표로 표시
                      decoration: InputDecoration(
                        hintText: '비밀번호를 입력하세요.',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0))
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.01),

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 100.0), // 가로 여백 추가
                    child: Text(
                      '비밀번호 확인',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black
                      ),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 100.0), // 가로 여백 추가
                    child: TextField(
                      obscureText: true, // 비밀번호 확인 역시 별표로 표시
                      decoration: InputDecoration(
                        hintText: '비밀번호를 확인하세요.',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0))
                      ),
                    ),
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
                              child: Text('사용자'),
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
                              child: Text('보호자'),
                            ),
                          ),
                        ],
                      ),
                    ),


                  Spacer(), // 스페이서 추가
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height; // 화면 높이를 가져옵니다.

    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: screenHeight, // 최소 높이를 화면의 높이로 설정
            ),
            child: Container(
              color: Color.fromARGB(255, 121, 214, 160), // 배경색 설정
              child: IntrinsicHeight(
                child: Column(
                  children: <Widget>[
                    Spacer(), // 상단 여백
                    Image.asset(
                      'assets/images/silverWatchLogo.png', // 로고 이미지
                    ),
                    Text(
                      'sliver watch',
                      style: TextStyle(
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        color: Colors.black,
                        shadows: [
                          Shadow(
                            offset: Offset(0.0, 2.0),
                            blurRadius: 2.0,
                            color: Color.fromARGB(185, 0, 0, 0),
                          ),
                        ],
                      ),
                    ),
                    Spacer(), // 로고와 버튼 사이의 여백
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
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
                              minimumSize: Size(150, 50),
                            ),
                            child: Text('로그인'),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
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
                              minimumSize: Size(150, 50),
                            ),
                            child: Text('회원가입'),
                          ),
                        ),
                      ],
                    ),
                    Spacer(), // 하단 여백
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
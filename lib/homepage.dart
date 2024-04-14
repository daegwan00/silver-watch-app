import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        
        body: Container(
          width: MediaQuery.of(context).size.width * 1,
          height: MediaQuery.of(context).size.width * 1,
          color: Color.fromARGB(255, 121, 214, 160), // 배경색 설정
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // 세로축 가운데 정렬
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Spacer(), // 상단 여백
                Image.asset(
                  'assets/images/silverWatchLogo.png', // 로고 이미지 파일, Flutter 프로젝트의 assets 폴더에 추가
                  
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
              Padding(  
                padding: const EdgeInsets.all(8.0),
                child: 
                ElevatedButton(
                  onPressed: () {
                    // 로그인 버튼 클릭 시 실행할 코드
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF69DA98), // 버튼 색상
                    textStyle: TextStyle(color: Colors.black)// 버튼 텍스트 색상
                  ),
                  child: Text('로그인'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: ElevatedButton(
                  onPressed: () {
                    // 회원가입 버튼 클릭 시 실행할 코드
                  },
                  style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white, // 올바른 색상 코드 포맷 사용
                  foregroundColor: Colors.black, // 버튼 텍스트 색상을 설정
                  ),

                  child: Text('회원가입'),
                ),
              ),
              Spacer(), // 하단 여백
            ],
          ),
        ),
      ),
    );
  }
}
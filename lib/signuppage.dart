import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      
        body: Padding(
          padding: EdgeInsets.all(20.0), // 모든 측면에 패딩을 줍니다.
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // 자식들을 시작 지점으로 정렬합니다.
            children: <Widget>[
              SizedBox(height: 40.0), // 상단 여백
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
              
              SizedBox(height: 20.0,),
              Row(children: [
                  Text(
                '아이디',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black
                  ),
              ),
              ElevatedButton(
                onPressed: () {
                },
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
              ],
            ),
              TextField(
                decoration: InputDecoration(
                  hintText: '아이디를 입력하세요.',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0))
                ),
              ),
              SizedBox(height: 10.0), // 필드 간격
              Text(
                '비밀번호',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black
                  ),

              ),
              TextField(
                obscureText: true, // 비밀번호를 별표로 표시
                decoration: InputDecoration(
                hintText: '비밀번호를 입력하세요.',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0))
                ),
              ),
              SizedBox(height: 10.0), // 필드 간격
              TextField(
                obscureText: true, // 비밀번호 확인 역시 별표로 표시
                decoration: InputDecoration(
                  hintText: '비밀번호를 확인하세요.',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0))
                ),
              ),
              SizedBox(height: 20.0), // 버튼 간격
              Row( // 버튼을 가로로 배치
                children: [
                  Expanded( // 첫 번째 버튼을 확장하여 남은 공간을 모두 차지하게 합니다.
                    child: ElevatedButton(
                      onPressed: () {
                      },
                      child: Text('사용자'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF69DA98),
                        shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              minimumSize: Size(100, 50), // 버튼 색상
                      ),
                    ),
                  ),
                  SizedBox(width: 10.0), // 버튼 간의 공간
                  Expanded( // 두 번째 버튼도 동일하게 적용
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('보호자'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey,
                        shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              minimumSize: Size(100, 50),  // 버튼 색상
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

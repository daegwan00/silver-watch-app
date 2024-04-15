import 'package:flutter/material.dart';
import 'package:fluttercap/custom_appbar.dart';

class usersign extends StatelessWidget {
  const usersign({super.key});

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
              minHeight: screenHeight,
            ),
            child: IntrinsicHeight(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: screenHeight * 0.05),

                  Center(
                    child: Row(
                      mainAxisSize: MainAxisSize.min, // 중앙 정렬을 위해 Row의 크기를 최소로 설정
                      children: [
                        Text(
                          '회원가입',
                          style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        SizedBox(width: 10), // 회원가입과 보호자 사이 간격
                        Text(
                          '사용자',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 100,),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 100.0), // 가로 여백 추가
                    child: Text(
                      '이름',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black
                      ),
                    ),
                  ),

                  SizedBox(height: screenHeight * 0.02),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 100.0),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: '이름을 입력하세요.',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0)
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 100.0), // 가로 여백 추가
                    child: Text(
                      '전화번호',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black
                      ),
                    ),
                  ),
                  
                  SizedBox(height: screenHeight * 0.01),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 100.0),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: '전화번호를 입력하세요.',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0)
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                   Padding(
                    padding: EdgeInsets.symmetric(horizontal: 100.0), // 가로 여백 추가
                    child: Text(
                      '생년월일',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.01),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 100.0),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: '생년월일을 입력하세요.',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0)
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                   Padding(
                    padding: EdgeInsets.symmetric(horizontal: 100.0), // 가로 여백 추가
                    child: Text(
                      '주소',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 100.0),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: '우편번호',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0)
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 15,),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 100.0),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: '상세주소',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0)
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                   Padding(
                    padding: EdgeInsets.symmetric(horizontal: 100.0), // 가로 여백 추가
                    child: Text(
                      '기타 질병',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                   Padding(
                    padding: EdgeInsets.symmetric(horizontal: 100.0),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: '질병을 입력해주세요.',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0)
                        ),
                      ),
                    ),
                  ),


                  SizedBox(height: 50),
                  Center(
                    child: SizedBox(
                      width: 150,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          // 저장 버튼 클릭 시 실행할 코드
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xeeeeee),
                          foregroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        child: Text('저장'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

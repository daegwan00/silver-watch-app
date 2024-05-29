import 'package:flutter/material.dart';
import 'package:fluttercap/custom_appbar.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class UserSign extends StatefulWidget {
  const UserSign({super.key});

  @override
  _UserSignState createState() => _UserSignState();
}

class _UserSignState extends State<UserSign>{
  final TextEditingController _loginIdController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _birthdayController = TextEditingController();
  final TextEditingController _postalCodeController = TextEditingController();
  final TextEditingController _addressDetailController = TextEditingController();
  final TextEditingController _diseaseController = TextEditingController();

  Future<void> signup() async {
    var url = Uri.parse('http://localhost:8080/api/v1/members/signup');
    var body = jsonEncode({
      'loginId': _loginIdController.text,
      'password': _passwordController.text,
      'email': _emailController.text,
      'name': _nameController.text,
      'phone': _phoneController.text,
      'birthday': _birthdayController.text,
      'address': _addressDetailController.text,
      'disease': _diseaseController.text,
    });

    print('Request body: $body'); // 요청 본문 출력

    try {
      var response = await http.post(url, headers: {
        'Content-Type': 'application/json'
      }, body: body);

      if (response.statusCode == 200) {
        print('회원가입 성공');
        // Here, you might want to navigate to another screen or show a success message
      } else {
        print('Signup failed with status: ${response.statusCode}.');
        print('Response body: ${response.body}'); // 응답 본문 출력
      }
    } catch (e) {
      print('Error during signup: $e');
    }
  }

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
                      controller: _nameController,
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
                      controller: _phoneController,
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
                      '이메일',
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
                      controller: _emailController,
                      decoration: InputDecoration(
                        hintText: '이메일을 입력하세요.',
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
                      controller: _birthdayController,
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
                      controller: _postalCodeController,
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
                      controller: _addressDetailController,
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
                      controller: _diseaseController,
                      decoration: InputDecoration(
                        hintText: '질병을 입력해주세요.',
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
                      '사용자 아이디',
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
                      controller: _loginIdController,
                      decoration: InputDecoration(
                        hintText: '아이디를 입력해주세요.',
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
                      '비밀번호',
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
                      controller: _passwordController,
                      decoration: InputDecoration(
                        hintText: '비밀번호를 입력해주세요.',
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
                        onPressed: signup,
                          // 저장 버튼 클릭 시 실행할 코드

                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xeeeeee),
                          foregroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        child: Text('확인'),
                      ),
                    ),
                  ),
                  SizedBox(height:30),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

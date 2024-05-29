import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
//import 'package:fluttercap/signuser.dart';

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Navigation Example',
//       theme: ThemeData(
//         primarySwatch: Colors.green,
//       ),
//       initialRoute: '/',
//       routes: {
//         '/': (context) => LoginPage(),
//         '/UserSign': (context) => UserSign(),  // UserSign 페이지 경로 추가
//       },
//     );
//   }
// }


class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _idController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  Future<void> _login() async {
  final String loginId = _idController.text;
  final String password = _passwordController.text;

  print('Attempting to log in with ID: $loginId');

  try {
    final response = await http.post(
      Uri.parse('http://localhost:8080/api/v1/members/login'),  // 실제 서버 URL로 변경
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'loginId': loginId,
        'password': password,
      }),
    );

    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');

    if (response.statusCode == 200) {
      final responseBody = response.body.trim(); // 응답 본문에서 공백 제거
      print("==========================");
      if (responseBody.contains('로그인 성공')) {
        print('Login successful');
        // 로그인 성공
        Navigator.pushNamed(context, '/signup');

      } else {
        print('Login failed: Invalid credentials');
        // 로그인 실패
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('로그인 실패'),
              content: Text('아이디 또는 비밀번호가 잘못되었습니다.'),
              actions: <Widget>[
                TextButton(
                  child: Text('확인'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          },
        );
      }
    } else {
      print('Server error: ${response.statusCode}');
      // 서버 오류 처리
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('오류'),
            content: Text('서버와 통신 중 오류가 발생했습니다.'),
            actions: <Widget>[
              TextButton(
                child: Text('확인'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }
  } catch (e) {
    print('Exception occurred: $e');
    // 네트워크 오류 처리
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('오류'),
          content: Text('서버와 통신 중 오류가 발생했습니다.'),
          actions: <Widget>[
            TextButton(
              child: Text('확인'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Silver Watch'),
        ),
        body: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: screenHeight,
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
                        controller: _idController,
                        cursorColor: Color.fromARGB(255, 121, 214, 160),
                        decoration: InputDecoration(
                          labelText: '아이디를 입력하세요',
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color.fromARGB(255, 121, 214, 160)),
                          ),
                        ),
                      ),
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
                        controller: _passwordController,
                        cursorColor: Color.fromARGB(255, 121, 214, 160),
                        decoration: InputDecoration(
                          labelText: '비밀번호를 입력하세요',
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color.fromARGB(255, 121, 214, 160)),
                          ),
                        ),
                        obscureText: true,
                      ),
                    ),
                    SizedBox(height: 50),
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
                                print('Login button pressed');
                                _login();
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
                          SizedBox(width: 16.0),
                          SizedBox(
                            width: 150,
                            height: 50,
                            child: ElevatedButton(
                              onPressed: () {
                                // 회원가입 버튼 클릭 시 실행할 코드
                                print('Signup button pressed');
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

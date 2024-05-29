import 'package:http/http.dart' as http;
import 'dart:convert';

Future<void> signup({
  required String loginId,
  required String name,
  required String phone,
  required String email,
  required String birthday,
  required String address,
  required String password,
  required String disease,
}) async {
  var url = Uri.parse('http://localhost:8080/api/v1/members/signup');
  var body = jsonEncode({
    'loginId': loginId,
    'password': password,
    'email': email,
    'name': name,
    'phone': phone,
    'birthday': birthday,
    'address': address,
    'disease' : disease
  });

  try{
    var response = await http.post(url, headers: {
      'Content-Type': 'application/json'
    }, body: body);

    if (response.statusCode == 200){
      print('회원가입 성공');
    } else{
      print('Signup failed with status: ${response.statusCode}.');
    }
   } catch (e){
      print('Error during singup: $e');
    }
  }

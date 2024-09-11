import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../utils/constunt.dart';

Future<void> registerUser({required String userName,
  required String email,
  required String phone,
  required String password}) async {
  final url =
  Uri.parse('${host}users/register');
  final headers = {'Content-Type': 'application/json'};
  final body = jsonEncode({
    'userName': userName,
    'email': email,
    'phone': phone,
    'password': password,
  });

  try {
    final response = await http.post(url, headers: headers, body: body);

    if (response.statusCode == 201) {
      final responseBody = jsonDecode(response.body);
      print('User registered successfully: ${responseBody['user']}');
      Get.offNamed('/login');
    } else {
      final responseBody = jsonDecode(response.body);
      print('Failed to register user: ${responseBody['message']}');
    }
  } catch (error) {
    print('Error registering user: $error');
  }
}

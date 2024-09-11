import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:pro_deals1/utils/constunt.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> loginUser(
    {required String email, required String password}) async {
  final url =
      Uri.parse('${host}users/login'); // Replace with your actual API URL
  final headers = {'Content-Type': 'application/json'};
  final body = jsonEncode({
    'email': email,
    'password': password,
  });
  print(body);

  try {
    final response = await http.post(url, headers: headers, body: body);

    if (response.statusCode == 200) {
      print('Login successful');
      final responseBody = jsonDecode(response.body);
      Get.snackbar("Login", responseBody['message']);
      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setBool('login', true);
      print(responseBody);
      // Save the token or user data as needed
      String token = responseBody['usertoken'];
      final headers = {
        'token': token,
      };
      final userdata =
          await http.get(Uri.parse("${host}users/sequre"), headers: headers);
      prefs.setString('userdata', userdata.body);
      print(userdata.body);
      final data = jsonDecode(userdata.body);

      final body = data['data'];

      id = body['_id'] ?? "";
      UserName = body['userName'] ?? "";
      Email = body['email'] ?? "";
      Phone = body['phone'] ?? "";
      isBusiness = body['isBusiness'] ?? false;
      Get.offNamed('/navigation');
      // You can save the token or user data as needed
    } else {
      final responseBody = jsonDecode(response.body);
      print('Failed to login: ${responseBody['message']}');
    }
  } catch (error) {
    print('Error logging in: $error');
  }
}

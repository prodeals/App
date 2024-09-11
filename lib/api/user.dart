import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

import '../utils/constunt.dart';

Future<void> getUser({required String userId}) async {
  final url = Uri.parse('${host}users/get/$userId');
  try {
    print(url);
    final response = await http.post(url);
    if (response.statusCode == 200) {
      print('-----------------------------');
      final responseBody = jsonDecode(response.body);
      print('User fetched successfully: ${responseBody['message']}');
    } else {
      final responseBody = jsonDecode(response.body);
      print('Failed to fetch user: ${responseBody['error']}');
    }
  } catch (error) {
    print('Error fetching user: $error');
  }
}

Future<void> updateUser(String userId, String? name, String? email,
    String? phone, File? image) async {
  final url = Uri.parse('${host}user/$userId');
  final headers = {'Content-Type': 'application/json'};
  final body = jsonEncode({
    if (name != null) 'name': name,
    if (email != null) 'email': email,
    if (phone != null) 'phone': phone,
    if (image != null) 'image': image
  });
  try {
    final response = await http.put(url, headers: headers, body: body);
    if (response.statusCode == 200) {
      final responseBody = jsonDecode(response.body);
      final data = jsonDecode(responseBody);

      final body = data['data'];
      id = body['_id'] ?? "";
      UserName = body['userName'] ?? "";
      Email = body['email'] ?? "";
      Phone = body['phone'] ?? "";
      ImageB = body['image'] ?? "";
      isBusiness = body['isBusiness'] ?? false;
      print('User updated successfully: ${responseBody['message']}');
    } else {
      final responseBody = jsonDecode(response.body);
      print('Failed to update user: ${responseBody['error']}');
    }
  } catch (error) {
    print('Error updating user: $error');
  }
}

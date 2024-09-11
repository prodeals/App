import 'dart:convert';

import 'package:http/http.dart' as http;

import '../utils/constunt.dart';

Future<void> Like(String productId, String userId) async {
  final url = Uri.parse('${host}like/'); // Replace with your actual API URL
  final headers = {'Content-Type': 'application/json'};
  final body = jsonEncode({
    'productId': productId,
    'userId': userId,
  });

  try {
    final response = await http.post(url, headers: headers, body: body);

    if (response.statusCode == 201) {
      final responseBody = jsonDecode(response.body);
      print('Like created successfully: ${responseBody['message']}');
    } else {
      final responseBody = jsonDecode(response.body);
      print('Failed to create like: ${responseBody['error']}');
    }
  } catch (error) {
    print('Error creating like: $error');
  }
}

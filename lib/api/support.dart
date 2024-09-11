import 'dart:convert';

import 'package:http/http.dart' as http;

import '../utils/constunt.dart';

Future<void> getSupport(String qustion) async {
  final url = Uri.parse('${host}support/$qustion');
  try {
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final responseBody = jsonDecode(response.body);
      print('Support fetched successfully: ${responseBody['message']}');
    } else {
      final responseBody = jsonDecode(response.body);
      print('Failed to fetch support: ${responseBody['error']}');
    }
  } catch (error) {
    print('Error fetching support: $error');
  }
}

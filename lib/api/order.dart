import 'dart:convert';

import 'package:http/http.dart' as http;

import '../utils/constunt.dart';

Future<void> getOrders(String userId) async {
  final url = Uri.parse('${host}order/$userId');
  try {
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final responseBody = jsonDecode(response.body);
      print('Orders fetched successfully: ${responseBody['message']}');
    } else {
      final responseBody = jsonDecode(response.body);
      print('Failed to fetch orders: ${responseBody['error']}');
    }
  } catch (error) {
    print('Error fetching orders: $error');
  }
}

// Future<void> order(String userId, List orderItems, String? promocode, ) async {
//   final url = Uri.parse('http://localhost:3000/order');
//   final headers = {'Content-Type': 'application/json'};
//   final body = jsonEncode({
//     'userId': userId,
//     'productId': productId,
//   });

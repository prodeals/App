import 'dart:convert';

import 'package:http/http.dart' as http;

import '../utils/constunt.dart';

Future<void> insertCartItem(
    String user, List<String> items, int quantity) async {
  final url = Uri.parse('${host}cart/'); // Replace with your actual API URL
  final headers = {'Content-Type': 'application/json'};
  final body = jsonEncode({
    'user': user,
    'items': items,
    'quantity': quantity,
  });

  try {
    final response = await http.post(url, headers: headers, body: body);

    if (response.statusCode == 201) {
      final responseBody = jsonDecode(response.body);
      print('Cart item inserted successfully: ${responseBody}');
    } else {
      final responseBody = jsonDecode(response.body);
      print('Failed to insert cart item: ${responseBody['error']}');
    }
  } catch (error) {
    print('Error inserting cart item: $error');
  }
}

Future<void> updateCartItem(
    String id, List<String> items, int? quantity) async {
  final url = Uri.parse('${host}cart/$id'); // Replace with your actual API URL
  final headers = {'Content-Type': 'application/json'};
  final body = jsonEncode({
    'items': items,
    if (quantity != null) 'quantity': quantity,
  });

  try {
    final response = await http.put(url, headers: headers, body: body);

    if (response.statusCode == 200) {
      final responseBody = jsonDecode(response.body);
      print('Cart item updated successfully: ${responseBody}');
    } else {
      final responseBody = jsonDecode(response.body);
      print('Failed to update cart item: ${responseBody['error']}');
    }
  } catch (error) {
    print('Error updating cart item: $error');
  }
}

Future<void> deleteCartItem(String userId, String cartId) async {
  final url = Uri.parse(
      '${host}cart/$cartId?userId=$userId'); // Replace with your actual API URL

  try {
    final response = await http.delete(url);

    if (response.statusCode == 200) {
      final responseBody = jsonDecode(response.body);
      print('Cart item deleted successfully: ${responseBody['message']}');
    } else {
      final responseBody = jsonDecode(response.body);
      print('Failed to delete cart item: ${responseBody['message']}');
    }
  } catch (error) {
    print('Error deleting cart item: $error');
  }
}

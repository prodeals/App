import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

import '../utils/constunt.dart';

Future<void> createProduct(
    String productName,
    String productDescription,
    String BusinessId,
    File Image,
    int price,
    int quantity,
    String category) async {
  final url = Uri.parse('${host}product/add');
  final headers = {'Content-Type': 'application/json'};
  final body = jsonEncode({
    'productName': productName,
    'productDescription': productDescription,
    'businessId': BusinessId,
    'image': Image,
    'productPrice': price,
    'quantity': quantity,
    'category': category,
  });
  try {
    final response = await http.post(url, headers: headers, body: body);
    if (response.statusCode == 201) {
      final responseBody = jsonDecode(response.body);
      print('Product created successfully: ${responseBody['message']}');
    } else {
      final responseBody = jsonDecode(response.body);
      print('Failed to create product: ${responseBody['error']}');
    }
  } catch (error) {
    print('Error creating product: $error');
  }
}

Future<void> getProductById(String BusinessId) async {
  final url = Uri.parse('${host}product/$BusinessId');
  try {
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final responseBody = jsonDecode(response.body);
      print('Product created successfully: ${responseBody['message']}');
    } else {
      final responseBody = jsonDecode(response.body);
      print('Failed to create product: ${responseBody['error']}');
    }
  } catch (error) {
    print('Error creating product: $error');
  }
}

Future<void> updateProduct(
    String productId, String productName, String productDescription) async {
  final url = Uri.parse('${host}product/$productId');
  final headers = {'Content-Type': 'application/json'};
  final body = jsonEncode({
    'productName': productName,
    'productDescription': productDescription,
  });
  try {
    final response = await http.put(url, headers: headers, body: body);
    if (response.statusCode == 200) {
      final responseBody = jsonDecode(response.body);
      print('Product updated successfully: ${responseBody['message']}');
    } else {
      final responseBody = jsonDecode(response.body);
      print('Failed to update product: ${responseBody['error']}');
    }
  } catch (error) {
    print('Error updating product: $error');
  }
}

Future<void> deleteProduct(String productId) async {
  final url = Uri.parse('${host}product/$productId');
  try {
    final response = await http.delete(url);
    if (response.statusCode == 200) {
      final responseBody = jsonDecode(response.body);
      print('Product deleted successfully: ${responseBody['message']}');
    } else {
      final responseBody = jsonDecode(response.body);
      print('Failed to delete product: ${responseBody['error']}');
    }
  } catch (error) {
    print('Error deleting product: $error');
  }
}

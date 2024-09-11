import 'dart:convert';

import 'package:http/http.dart' as http;

import '../utils/constunt.dart';

Future<void> addPromocode({
  required String businessId,
  required String discountType,
  required double discount,
  required String description,
  required int neededAmount,
  required String expiryDate,
}) async {
  final url = Uri.parse('${host}promocode/');
  final headers = {'Content-Type': 'application/json'};
  final body = jsonEncode({
    'businessId': businessId,
    'discountType': discountType,
    'discount': discount,
    'description': description,
    'neededAmount': neededAmount,
    'expiryDate': expiryDate, // this string needed to be link this yyyy-mm-dd
  });

  try {
    final response = await http.post(url, headers: headers, body: body);

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

Future<void> getPromocodes() async {
  final url = Uri.parse('${host}promocode/');
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

Future<void> redeemPromocode(String promocode, String businessId) async {
  final url = Uri.parse('${host}promocode/redeem/');
  final headers = {'Content-Type': 'application/json'};
  final body = jsonEncode({
    'promocode': promocode,
    'businessId': businessId,
  });
  try {
    final response = await http.post(url, headers: headers, body: body);
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

Future<void> deletePromocode(String id) async {
  final url = Uri.parse('${host}promocode/$id');
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

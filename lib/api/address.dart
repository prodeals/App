import 'dart:convert';

import 'package:http/http.dart' as http;

import '../utils/constunt.dart';

Future<void> addAddress(
    {required String address,
    required String city,
    required String state,
    required String pincode,
    required String phone,
    required String email,
    required String userName,
    required String userId}) async {
  final url = Uri.parse('${host}address/$userId');
  final headers = {'Content-Type': 'application/json'};
  final body = jsonEncode({
    'userName': userName,
    'phone': phone,
    'email': email,
    'address': address,
    'city': city,
    'state': state,
    'pincode': pincode,
  });

  try {
    final response = await http.post(url, headers: headers, body: body);
    if (response.statusCode == 201) {
      final responseBody = jsonDecode(response.body);
      print('Address added successfully: ${responseBody['message']}');
    } else {
      final responseBody = jsonDecode(response.body);
      print('Failed to add address: ${responseBody['error']}');
    }
  } catch (error) {
    print('Error adding address: $error');
  }
}

Future<void> deleteAddress(String addressId, String userId) async {
  final url = Uri.parse('${host}address/$addressId');
  try {
    final response = await http.delete(url);
    if (response.statusCode == 200) {
      final responseBody = jsonDecode(response.body);
      print('Address deleted successfully: ${responseBody['message']}');
    } else {
      final responseBody = jsonDecode(response.body);
      print('Failed to delete address: ${responseBody['error']}');
    }
  } catch (error) {
    print('Error deleting address: $error');
  }
}

Future<void> updateAddress(
    {required String addressId,
    required String address,
    required String city,
    required String state,
    required String pincode,
    required String phone,
    required String email,
    required String userName,
    required String userId}) async {
  final url = Uri.parse('${host}address/$addressId');
  final headers = {'Content-Type': 'application/json'};
  final body = jsonEncode({
    'userName': userName,
    'phone': phone,
    'email': email,
    'address': address,
    'city': city,
    'state': state,
    'pincode': pincode,
  });

  try {
    final response = await http.put(url, headers: headers, body: body);
    if (response.statusCode == 200) {
      final responseBody = jsonDecode(response.body);
      print('Address updated successfully: ${responseBody['message']}');
    } else {
      final responseBody = jsonDecode(response.body);
      print('Failed to update address: ${responseBody['error']}');
    }
  } catch (error) {
    print('Error updating address: $error');
  }
}

Future<void> getAddress(String userId) async {
  final url = Uri.parse('${host}address/$userId');
  try {
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final responseBody = jsonDecode(response.body);
      print('Address retrieved successfully: ${responseBody['message']}');
    } else {
      final responseBody = jsonDecode(response.body);
      print('Failed to retrieve address: ${responseBody['error']}');
    }
  } catch (error) {
    print('Error retrieving address: $error');
  }
}

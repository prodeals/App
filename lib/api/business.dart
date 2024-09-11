import 'dart:convert';

import 'package:http/http.dart' as http;

import '../utils/constunt.dart';

Future<void> registerBusiness(
    {required String businessName,
    required String userid,
    required String businessPhone}) async {
  final url =
      Uri.parse('${host}business/register'); // Replace with your actual API URL
  final headers = {'Content-Type': 'application/json'};
  final body = jsonEncode({
    'businessName': businessName,
    'userId': userid,
    'contactNumber': businessPhone
  });

  try {
    final response = await http.post(url, headers: headers, body: body);

    if (response.statusCode == 201) {
      final responseBody = jsonDecode(response.body);
      print('Business registered successfully: ${responseBody['message']}');
    } else {
      final responseBody = jsonDecode(response.body);
      print('Failed to register business: ${responseBody['error']}');
    }
  } catch (error) {
    print('Error registering business: $error');
  }
}

createBusiness() async {
  final url = Uri.parse('${host}business/create');

  final headers = {'Content-Type': 'application/json'};

  final body = jsonEncode({
    'businessName': 'Business Name',
    'userId': 'userId',
    'contactNumber': 'contactNumber',
    'address': 'address',
    'state': 'state',
    'city': 'city',
    'landmark': 'landmark',
    'pincode': 'pincode',
    'location': 'location',
    'telephone': 'telephone',
    'businessEmailId': 'businessEmail',
    'businessWebsite': 'businessWebsite',
    'category': 'category',
    'gstNumber': 'gstNumber',
    'panNumber': 'panNumber',
    'proofImage': 'proofImage',
    'openTime': 'openTime',
    'closeTime': 'closeTime',
    'offDays': 'offDays',
    'notes': 'notes',
    'storeImages': 'storeImage',
  });

  try {
    final response = await http.post(url, headers: headers, body: body);
    if (response.statusCode == 201) {
      final responseBody = jsonDecode(response.body);
      print('Business created successfully: ${responseBody['message']}');
    } else {
      final responseBody = jsonDecode(response.body);
      print('Failed to create business: ${responseBody['error']}');
    }
  } catch (error) {
    print('Error creating business: $error');
  }
}

getBusinessById(String businessId) async {
  final url = Uri.parse('${host}business/get/$businessId');
  try {
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final responseBody = jsonDecode(response.body);
      print('Business created successfully: ${responseBody['message']}');
    } else {
      final responseBody = jsonDecode(response.body);
      print('Failed to create business: ${responseBody['error']}');
    }
  } catch (error) {
    print('Error creating business: $error');
  }
}

import 'dart:convert';

import 'package:http/http.dart' as http;

import '../utils/constunt.dart';

Future<void> getNotifications() async {
  final url = Uri.parse('${host}notification/');
  try {
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final responseBody = jsonDecode(response.body);
      print('Notifications fetched successfully: ${responseBody['message']}');
    } else {
      final responseBody = jsonDecode(response.body);
      print('Failed to fetch notifications: ${responseBody['error']}');
    }
  } catch (error) {
    print('Error fetching notifications: $error');
  }
}

Future<void> deleteNotification(String id) async {
  final url = Uri.parse('${host}notification/$id');
  try {
    final response = await http.delete(url);
    if (response.statusCode == 200) {
      final responseBody = jsonDecode(response.body);
      print('Notification deleted successfully: ${responseBody['message']}');
    } else {
      final responseBody = jsonDecode(response.body);
      print('Failed to delete notification: ${responseBody['error']}');
    }
  } catch (error) {
    print('Error deleting notification: $error');
  }
}

Future<void> deleteAllNotifications() async {
  final url = Uri.parse('${host}notification/');
  try {
    final response = await http.delete(url);
    if (response.statusCode == 200) {
      final responseBody = jsonDecode(response.body);
      print('Notifications deleted successfully: ${responseBody['message']}');
    } else {
      final responseBody = jsonDecode(response.body);
      print('Failed to delete notifications: ${responseBody['error']}');
    }
  } catch (error) {
    print('Error deleting notifications: $error');
  }
}

Future<void> createBusinessNotification(
    String businessId, String title, String description) async {
  final url = Uri.parse('${host}notification/');
  final headers = {'Content-Type': 'application/json'};
  final body = jsonEncode({
    'title': title,
    'description': description,
    'data': {'businessId': businessId}
  });
  try {
    final response = await http.post(url, headers: headers, body: body);
    if (response.statusCode == 201) {
      final responseBody = jsonDecode(response.body);
      print('Notification created successfully: ${responseBody['message']}');
    } else {
      final responseBody = jsonDecode(response.body);
      print('Failed to create notification: ${responseBody['error']}');
    }
  } catch (error) {
    print('Error creating notification: $error');
  }
}

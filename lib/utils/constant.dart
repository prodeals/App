import 'package:firebase_auth/firebase_auth.dart';

String logo_png = 'assets/images/logo.png';
String logo_svg = 'assets/images/svg/logo.svg';
String prodeals = 'assets/images/svg/Prodeals.svg';

bool checked = false;

bool loginComplited = false;
// var apiKey = "AIzaSyBwqfiGW-hoLU4DDcNFovTZtq8rQ6qCIKM";
// var projectId = 'pro-deals-159d1';

var Email;

late bool Login;

List orders = [
  {'name': "Delicious Burger", 'prize': '₹ 30'},
  {'name': "Samosa", 'prize': '₹ 10'},
  {'name': "Strawberry Cake", 'prize': '₹ 180'},
  {'name': "Delicious Burger", 'prize': '₹ 10'},
];

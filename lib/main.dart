import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pro_deals1/android/QR.dart';
import 'package:pro_deals1/android/map.dart';
import 'package:pro_deals1/android/offer.dart';
import 'package:pro_deals1/ios/iosNotification.dart';
import 'package:pro_deals1/ios/promocode_details.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'api/user.dart';
import 'imports.dart';
import 'ios/favourite_page.dart';
import 'ios/pages/overview.dart';
import 'splash.dart';
import 'utils/constunt.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  preferences = await SharedPreferences.getInstance();

  String Data = preferences.getString('userdata') ?? "";
  if (Data.isNotEmpty) {
    final data = jsonDecode(Data);

    final body = data['data'];

    id = body['_id'] ?? "";

    getUser(userId: id);

    UserName = body['userName'] ?? "";
    Email = body['email'] ?? "";
    Phone = body['phone'] ?? "";
    isBusiness = body['isBusiness'] ?? false;
  }

  print(UserName);

  runApp(const ProDeals());
}

class ProDeals extends StatelessWidget {
  const ProDeals({super.key});

  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return _iosApp();
    } else {
      return _androidApp();
    }
  }

  Widget _iosApp() {
    return GetCupertinoApp(
      localizationsDelegates: const <LocalizationsDelegate<dynamic>>[
        DefaultCupertinoLocalizations.delegate,
        DefaultMaterialLocalizations.delegate,
        DefaultWidgetsLocalizations.delegate,
      ],
      debugShowCheckedModeBanner: false,
      title: "Pro Deals",
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => const splash()),
        GetPage(name: '/promocode', page: () => const promocode()),
        GetPage(
            name: '/promocodeDetails', page: () => const promocode_details()),
        GetPage(name: '/ios_home', page: () => const ios_home()),
        GetPage(name: '/intro', page: () => const ios_intro()),
        GetPage(name: '/login', page: () => ios_login()),
        GetPage(name: '/ios_sign_up', page: () => ios_sign_up()),
        GetPage(name: '/forgot', page: () => const forgot_pass()),
        GetPage(name: '/ios_otp', page: () => ios_otp()),
        GetPage(name: '/confirm', page: () => const confirm()),
        GetPage(name: '/ios_profile', page: () => const ios_profile()),
        GetPage(name: '/navigation', page: () => const ios_navigation()),
        GetPage(name: '/ios_filter', page: () => const ios_filter()),
        GetPage(name: '/ios_category', page: () => const ios_category()),
        GetPage(name: '/locationios', page: () => const locationios()),
        GetPage(name: '/ios_restaurants', page: () => const ios_restaurants()),
        GetPage(
            name: '/restaurant_details', page: () => const RestaurantDetails()),
        GetPage(name: '/product_details', page: () => const FoodDetails()),
        GetPage(name: '/ios_promocode', page: () => const promocode()),
        GetPage(name: '/ios_favourite', page: () => const iosFavourite()),
        GetPage(name: '/edit_profile', page: () => const ios_edit_profile()),
        GetPage(name: '/ios_cart', page: () => const ios_cart()),
        GetPage(name: '/ios_support', page: () => const ios_support()),
        GetPage(name: '/ios_Ans', page: () => const ios_Ans()),
        GetPage(name: '/ios_qr', page: () => const ios_qr()),
        GetPage(name: '/ios_scan_qr', page: () => const ios_scan_qr()),
        GetPage(name: '/ios_address', page: () => const ios_Address()),
        GetPage(name: '/ios_add_address', page: () => const ios_add_address()),
        GetPage(name: '/ios_create_account', page: () => ios_create_account()),
        GetPage(name: '/ios_business_address', page: () => const ios_address()),
        GetPage(name: '/ios_detail', page: () => const ios_detail()),
        GetPage(name: '/ios_notification', page: () => iosNotification()),
        GetPage(
            name: '/ios_businessProfile',
            page: () => const ios_businessProfile()),
        GetPage(name: '/ios_images', page: () => const ios_images()),
        GetPage(name: '/ios_verify', page: () => const ios_verify()),
        GetPage(
            name: '/ios_successfully', page: () => const ios_successfully()),
        GetPage(name: '/dashboard', page: () => const dashboard()),
        GetPage(name: '/ios_about_us', page: () => const ios_about_us()),
        GetPage(name: '/privacy_policy', page: () => const privacy_policy()),
        GetPage(name: '/term_conditiom', page: () => const term_conditiom()),
        GetPage(name: '/ios_active', page: () => const IosActive()),
        GetPage(name: '/ios_manageoffer', page: () => const ios_manageoffer()),
        GetPage(name: '/order', page: () => order()),
        GetPage(name: '/overview_ios', page: () => const overview_ios()),
        GetPage(name: '/Earning_ios', page: () => const Earning_ios()),
      ],
    );
  }

  Widget _androidApp() {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Pro Deals",
      initialRoute: '/',
      theme: ThemeData(useMaterial3: false),
      getPages: [
        GetPage(name: '/', page: () => const splash()),
        GetPage(name: '/intro', page: () => const Intro()),
        GetPage(name: '/login', page: () => login()),
        GetPage(name: '/register', page: () => register()),
        GetPage(name: '/forgot', page: () => const forgot_pass()),
        GetPage(name: '/otp_verification', page: () => otp_verification()),
        GetPage(name: '/navigation', page: () => const navigation()),
        GetPage(name: '/home', page: () => const home_page()),
        GetPage(name: '/Categories', page: () => const categories()),
        GetPage(name: '/cart', page: () => const Cart()),
        GetPage(name: '/Premium', page: () => const premium_page()),
        GetPage(name: '/profile', page: () => const ProfilePage()),
        GetPage(name: '/edit_profile', page: () => const EditProfile()),
        GetPage(name: '/Search', page: () => const SearchPage()),
        GetPage(name: '/shopPage', page: () => const shope_page()),
        GetPage(name: '/detailPage', page: () => const DetailsPage()),
        GetPage(name: '/Filter', page: () => const FilterPage()),
        GetPage(name: '/activeOffer', page: () => const Active_offers()),
        GetPage(name: '/myFavourite', page: () => const Favourite()),
        GetPage(name: '/qr_scanner', page: () => const qr_scanner()),
        GetPage(name: '/AddAddress', page: () => const add_address()),
        GetPage(name: '/DeliveryAddress', page: () => const DeliveryAddress()),
        GetPage(name: '/earning', page: () => const Earning()),
        GetPage(name: '/verify', page: () => const verify()),
        GetPage(name: '/QRcode', page: () => const QRcode()),
        GetPage(name: '/Coupons', page: () => Coupons()),
        GetPage(
            name: '/Profession_Profile',
            page: () => const Profession_Profile()),
        GetPage(
            name: '/Profession_details',
            page: () => const Profession_details()),
        GetPage(name: '/Business_address', page: () => B_Address()),
        GetPage(name: '/create_business', page: () => create_business()),
        GetPage(name: '/upload_store', page: () => const UploadStore()),
        GetPage(name: '/Manage_offer', page: () => const Manage_offer()),
        GetPage(name: '/order_dashboard', page: () => order_deshboard()),
        GetPage(name: '/total_reqeemed', page: () => const total_reqeemed()),
        GetPage(name: '/support_details', page: () => const support_details()),
        GetPage(name: '/support', page: () => const support()),
        GetPage(name: '/notification', page: () => const notification()),
        GetPage(name: '/Privacy_policy', page: () => const Privacy_Policy()),
        GetPage(name: '/Term_condition', page: () => const Term_condition()),
        GetPage(name: '/About_Us', page: () => const About_Us()),
        GetPage(name: '/successfully', page: () => const successfully()),
        GetPage(name: '/dashboard', page: () => Dashboard()),
        GetPage(name: '/Active_offers', page: () => Active_offers()),
        GetPage(name: '/location', page: () => const location()),
        GetPage(name: '/overview', page: () => overview()),
        GetPage(name: '/offer', page: () => OffersPage()),
        // GetPage(name: '/myQR', page: () => ,)
      ],
    );
  }
}

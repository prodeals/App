import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'android/Active_offers.dart';
import 'android/Business_address.dart';
import 'android/Business_profession_detail.dart';
import 'android/Business_profil.dart';
import 'android/DeliveryAddress.dart';
import 'android/Filter.dart';
import 'android/Manage_offer.dart';
import 'android/MyCart.dart';
import 'android/MyFavourite.dart';
import 'android/Notification.dart';
import 'android/Premium_page.dart';
import 'android/Search.dart';
import 'android/Support.dart';
import 'android/Verify_identify.dart';
import 'android/add_address.dart';
import 'android/categories.dart';
import 'android/create_business.dart';
import 'android/dashboard.dart';
import 'android/details_page.dart';
import 'android/edit_profile.dart';
import 'android/forgot_pass.dart';
import 'android/home_page.dart';
import 'android/intro.dart';
import 'android/login.dart';
import 'android/navigation.dart';
import 'android/order_deshboard.dart';
import 'android/otp_Verification.dart';
import 'android/profile_page.dart';
import 'android/qr_scanner.dart';
import 'android/register.dart';
import 'android/shope_page.dart';
import 'android/successfully.dart';
import 'android/suport_details.dart';
import 'android/upload_store.dart';
import 'firebase_options.dart';
import 'splash.dart';
import 'utils/constunt.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    const ProDeals(),
  );
  preferences = await SharedPreferences.getInstance();
}

class ProDeals extends StatelessWidget {
  const ProDeals({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Pro Deals",
      // initialRoute: '/navigation',
      initialRoute: '/',
      getPages: [
        GetPage(
          name: '/',
          page: () => const splash(),
        ),
        GetPage(
          name: '/intro',
          page: () => const intro(),
        ),
        GetPage(
          name: '/login',
          page: () => login(),
        ),
        GetPage(
          name: '/register',
          page: () => register(),
        ),
        GetPage(
          name: '/forgot',
          page: () => const forgot_pass(),
        ),
        GetPage(
          name: '/otp_verification',
          page: () => const otp_verification(),
        ),
        GetPage(
          name: '/navigation',
          page: () => const navigation(),
        ),
        GetPage(
          name: '/home',
          page: () => const home_page(),
        ),
        GetPage(
          name: '/Categories',
          page: () => const categories(),
        ),
        GetPage(
          name: '/cart',
          page: () => const cart(),
        ),
        GetPage(
          name: '/Premium',
          page: () => const premium_page(),
        ),
        GetPage(
          name: '/profile',
          page: () => const profile_page(),
        ),
        GetPage(
          name: '/edit_profile',
          page: () => const edit_profile(),
        ),
        GetPage(
          name: '/Search',
          page: () => const search(),
        ),
        GetPage(
          name: '/filter',
          page: () => const filter(),
        ),
        GetPage(
          name: '/shop',
          page: () => const shope_page(),
        ),
        GetPage(
          name: '/details',
          page: () => const details(),
        ),
        GetPage(
          name: '/Favourite',
          page: () => const Favourite(),
        ),
        // GetPage(name: '/', page: page)
        GetPage(
          name: '/address',
          page: () => const DeliveryAddress(),
        ),
        GetPage(
          name: '/add_address',
          page: () => const add_address(),
        ),
        GetPage(
          name: '/notification',
          page: () => const notification(),
        ),
        GetPage(
          name: '/Support',
          page: () => const support(),
        ),
        GetPage(
          name: '/Support_details',
          page: () => const support_details(),
        ),
        GetPage(
          name: '/qr_scanner',
          page: () => const qr_scanner(),
        ),
        GetPage(
          name: '/Active_offers',
          page: () => const Active_offers(),
        ),
        GetPage(
          name: '/Manage_offer',
          page: () => const Manage_offer(),
        ),
        GetPage(
          name: '/upload_store',
          page: () => const upload_store(),
        ),
        GetPage(
          name: '/verify',
          page: () => const verify(),
        ),
        GetPage(
          name: '/successfully',
          page: () => const successfully(),
        ),
        GetPage(
          name: '/create_business',
          page: () => create_business(),
        ),
        GetPage(
          name: '/Profession_Profile',
          page: () => const Profession_Profile(),
        ),
        GetPage(
          name: '/Profession_details',
          page: () => const Profession_details(),
        ),
        GetPage(
          name: '/Business_Address',
          page: () => B_Address(),
        ),
        GetPage(
          name: '/deshborad',
          page: () => const deshborad(),
        ),
        GetPage(
          name: '/order_deshboard',
          page: () => const order_deshboard(),
        ),
      ],
    );
    // return GetCupertinoApp(
    //   localizationsDelegates: const <LocalizationsDelegate<dynamic>>[
    //     DefaultMaterialLocalizations.delegate,
    //     DefaultWidgetsLocalizations.delegate,
    //   ],
    //   debugShowCheckedModeBanner: false,
    //   title: "Pro Deals",
    //   initialRoute: '/',
    //   getPages: [
    //     GetPage(
    //       name: '/',
    //       page: () => const splash(),
    //     ),
    //     GetPage(
    //       name: '/ios_home',
    //       page: () => const ios_home(),
    //     ),
    //     GetPage(
    //       name: '/intro',
    //       page: () => const ios_intro(),
    //     ),
    //     GetPage(
    //       name: '/login',
    //       page: () => ios_login(),
    //     ),
    //     GetPage(
    //       name: '/ios_sign_up',
    //       page: () => ios_sign_up(),
    //     ),
    //     GetPage(
    //       name: '/forgot',
    //       page: () => const forgot_pass(),
    //     ),
    //     GetPage(
    //       name: '/ios_otp',
    //       page: () => ios_otp(),
    //     ),
    //     GetPage(
    //       name: '/confirm',
    //       page: () => const confirm(),
    //     ),
    //     GetPage(
    //       name: '/ios_profile',
    //       page: () => const ios_profile(),
    //     ),
    //     GetPage(
    //       name: '/navigation',
    //       page: () => const ios_navigation(),
    //     ),
    //     GetPage(
    //       name: '/ios_filter',
    //       page: () => const ios_filter(),
    //     ),
    //     GetPage(
    //       name: '/ios_category',
    //       page: () => const ios_category(),
    //     ),
    //     GetPage(
    //       name: '/ios_promocode',
    //       page: () => const ios_promocode(),
    //     ),
    //     GetPage(
    //       name: '/edit_profile',
    //       page: () => const ios_edit_profile(),
    //     ),
    //     GetPage(
    //       name: '/ios_cart',
    //       page: () => const ios_cart(),
    //     ),
    //     GetPage(
    //       name: '/ios_support',
    //       page: () => const ios_support(),
    //     ),
    //     GetPage(
    //       name: '/ios_Ans',
    //       page: () => const ios_Ans(),
    //     ),
    //     GetPage(
    //       name: '/ios_qr',
    //       page: () => const ios_qr(),
    //     ),
    //     GetPage(
    //       name: '/ios_scan_qr',
    //       page: () => const ios_scan_qr(),
    //     ),
    //     GetPage(
    //       name: '/ios_address',
    //       page: () => const ios_Address(),
    //     ),
    //     GetPage(
    //       name: '/ios_add_address',
    //       page: () => const ios_add_address(),
    //     ),
    //   ],
    // );
  }
}

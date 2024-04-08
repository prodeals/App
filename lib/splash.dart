import 'dart:async';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'utils/colors.dart';
import 'utils/constunt.dart';

class splash extends StatelessWidget {
  const splash({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    Timer(const Duration(seconds: 3), () {
      bool? login = preferences.getBool('login');
      if (login == null) {
        login = false;
      }
      (login) ? Get.offNamed('/navigation') : Get.offNamed('/intro');
    });
    return Scaffold(
      body: Container(
        height: height,
        width: width,
        alignment: Alignment.center,
        color: AppColor.primary,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Pro',
              style: GoogleFonts.roboto(
                textStyle: TextStyle(
                  color: AppColor.white,
                  fontSize: 40,
                ),
              ),
            ),
            const Gap(8),
            Text(
              'Deals',
              style: GoogleFonts.roboto(
                textStyle: TextStyle(
                  color: AppColor.black300,
                  fontSize: 40,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

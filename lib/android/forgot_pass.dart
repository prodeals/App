import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pro_deals1/utils/colors.dart';

class forgot_pass extends StatelessWidget {
  const forgot_pass({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: height,
        width: width,
        color: AppColor.primary,
        child: Column(
          children: [
            const Gap(160),
            Text(
              'Reset Password Here!',
              style: GoogleFonts.roboto(
                color: AppColor.black300,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Gap(50),
            Text(
              'Enter Phone Number to \nReset Password',
              textAlign: TextAlign.center,
              style:
                  GoogleFonts.roboto(fontSize: 20, fontWeight: FontWeight.w200),
            ),
            const Gap(50),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: TextField(
                decoration: InputDecoration(
                  label: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: AppColor.white,
                      shape: BoxShape.circle,
                    ),
                    alignment: Alignment.center,
                    child: Icon(
                      Icons.call,
                      size: 20,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: 'Enter phone Number',
                ),
              ),
            ),
            const Gap(40),
            GestureDetector(
              onTap: () {
                Get.toNamed('/otp_verification');
              },
              child: Container(
                height: 40,
                width: 230,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColor.white,
                ),
                alignment: Alignment.center,
                child: Text(
                  'send',
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w600,
                    color: AppColor.primary,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';

import '../../utils/colors.dart';
import '../../utils/images.dart';

class otp_verification extends StatelessWidget {
  const otp_verification({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        height: height,
        width: width,
        child: Column(
          children: [
            Container(
              height: height / 1.5,
              width: width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(background),
                  fit: BoxFit.fill,
                ),
              ),
              child: Column(
                children: [
                  const Gap(140),
                  Text(
                    'OTP Verification',
                    style: GoogleFonts.roboto(
                      color: AppColor.black300,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Gap(50),
                  Text(
                    'We Will sent a verification code to\n +91 9992330222',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.roboto(
                        fontSize: 20, fontWeight: FontWeight.w200),
                  ),
                  const Gap(50),
                  OTPTextField(
                    length: 4,
                    width: width,
                    fieldWidth: 50,
                    keyboardType: TextInputType.number,
                    style: TextStyle(fontSize: 16),
                    otpFieldStyle: OtpFieldStyle(
                      backgroundColor: AppColor.white,
                    ),
                    textFieldAlignment: MainAxisAlignment.spaceAround,
                    fieldStyle: FieldStyle.box,
                    onCompleted: (pin) {
                      print("Completed: " + pin);
                    },
                  ),
                  const Gap(30),
                  Text(
                    'Resend OTP IN 27s',
                    style: GoogleFonts.roboto(),
                  ),
                ],
              ),
            ),
            const Gap(40),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: 50,
                width: width,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: AppColor.primary,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 2,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Continue',
                      style: GoogleFonts.roboto(
                        color: AppColor.black300,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

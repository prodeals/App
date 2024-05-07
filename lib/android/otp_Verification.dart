import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../utils/colors.dart';
import '../../utils/images.dart';

class otp_verification extends StatelessWidget {
  otp_verification({super.key});

  final data = Get.arguments;
  String? code;

  TextEditingController otp = TextEditingController();

  @override
  Widget build(BuildContext context) {
    code = data['code'];
    print(data['code']);
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
              child: Form(
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
                    CupertinoTextFormFieldRow(
                      obscureText: true,
                      style: GoogleFonts.poppins(
                        color: AppColor.black300,
                      ),
                      placeholder: '000000',
                      placeholderStyle: GoogleFonts.poppins(
                        color: AppColor.black300,
                      ),
                      validator: (pass) {
                        if (otp.text.isEmpty) {
                          return 'Enter otp';
                        } else if (otp.text.length == 6) {
                          return 'Enter valid otp';
                        }
                        return null;
                      },
                      controller: otp,
                      // for spacing between icon and text
                      padding: const EdgeInsets.symmetric(horizontal: 6),
                    ),
                    const Gap(30),
                    Text(
                      'Resend OTP IN 27s',
                      style: GoogleFonts.roboto(),
                    ),
                  ],
                ),
              ),
            ),
            const Gap(40),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: GestureDetector(
                onTap: () async {
                  try {
                    PhoneAuthCredential credential =
                        await PhoneAuthProvider.credential(
                            verificationId: code!,
                            smsCode: otp.text.toString());
                    FirebaseAuth.instance
                        .signInWithCredential(credential)
                        .then((value) async {
                      FirebaseFirestore.instance
                          .collection('Users')
                          .doc('${data['phone']}')
                          .set({
                        'name': data['username'],
                        'phoneNumber': data['phone'],
                      });
                      SharedPreferences preferences =
                          await SharedPreferences.getInstance();
                      preferences.setBool('login', true);
                      preferences.setString('uid', data['phone']);
                      preferences.setString('username', data['username']);
                      Get.offNamedUntil('/navigation', (route) => false);
                    });
                  } catch (ex) {
                    log(ex.toString());
                  }
                  // Get.toNamed('/confirm');
                },
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
            ),
          ],
        ),
      ),
    );
  }
}

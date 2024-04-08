import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';
import 'package:pro_deals1/utils/colors.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ios_otp extends StatelessWidget {
  ios_otp({super.key});

  final data = Get.arguments;
  String? code;

  TextEditingController otp = TextEditingController();

  @override
  Widget build(BuildContext context) {
    code = data['code'];
    print(data['code']);
    OtpFieldController otpController = OtpFieldController();
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return CupertinoPageScaffold(
      resizeToAvoidBottomInset: false,
      child: Container(
        height: height,
        width: width,
        color: AppColor.primary,
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_back,
                          color: AppColor.black300,
                        ),
                      ),
                      const Gap(60),
                      Text(
                        'OTP Verification',
                        style: GoogleFonts.inter(
                          color: AppColor.black300,
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 7,
              child: Container(
                height: height / 1.25,
                width: width,
                decoration: BoxDecoration(
                  color: AppColor.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(120),
                  ),
                ),
                child: Column(
                  children: [
                    Gap(height / 16),
                    Container(
                      height: height / 4,
                      width: width / 1.5,
                      child: SvgPicture.asset('assets/images/svg/otp_page.svg'),
                    ),
                    const Gap(10),
                    CupertinoFormRow(
                      prefix: Text('otp'),
                      child: CupertinoTextFormFieldRow(
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
                    ),
                    // OTPTextField(
                    //   length: 4,
                    //   controller: otpController,
                    //   width: MediaQuery.of(context).size.width,
                    //   fieldWidth: 80,
                    //   style: TextStyle(fontSize: 17),
                    //   textFieldAlignment: MainAxisAlignment.spaceAround,
                    //   fieldStyle: FieldStyle.underline,
                    //   onCompleted: (pin) {
                    //     print("Completed: " + pin);
                    //   },
                    // ),
                    const Gap(10),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
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
                              preferences.setString(
                                  'username', data['username']);
                              Get.offNamedUntil(
                                  '/navigation', (route) => false);
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
                                color: Colors.grey.shade400,
                                blurRadius: 2,
                                offset: Offset(0, 3),
                              ),
                            ],
                          ),
                          child: Text(
                            'Verify',
                            style: GoogleFonts.roboto(
                              color: AppColor.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const Gap(40),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 2,
                            width: width / 4,
                            color: AppColor.gray.withOpacity(0.2),
                          ),
                          Gap(10),
                          Text(
                            'or continue with',
                            style: GoogleFonts.poppins(
                              color: AppColor.black300,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          Gap(10),
                          Container(
                            height: 2,
                            width: width / 4,
                            color: AppColor.gray.withOpacity(0.2),
                          ),
                        ],
                      ),
                    ),
                    const Gap(30),
                    Container(
                      height: 50,
                      width: 120,
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.apple,
                        color: AppColor.black300,
                        size: 50,
                      ),
                    ),
                    const Gap(50),
                    GestureDetector(
                      onTap: () {
                        // Get.toNamed('/register');
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Already Have an a Account?',
                            style:
                                GoogleFonts.poppins(color: AppColor.black300),
                          ),
                          const Gap(6),
                          Text(
                            ' Sign in',
                            style: GoogleFonts.poppins(color: AppColor.primary),
                          ),
                        ],
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

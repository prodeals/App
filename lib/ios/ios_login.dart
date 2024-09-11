import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pro_deals1/utils/colors.dart';

import '../api/login.dart';

class ios_login extends StatelessWidget {
  ios_login({super.key});

  TextEditingController number = TextEditingController();
  TextEditingController password = TextEditingController();
  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
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
                  Text(
                    'Login',
                    style: GoogleFonts.inter(
                      color: AppColor.black300,
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                    ),
                  ),
                  const Gap(10),
                  Text(
                    'Please sign in to continue.',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.inter(
                      color: AppColor.white,
                      fontSize: 14,
                    ),
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
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(120),
                  ),
                ),
                child: Form(
                  key: formkey,
                  child: Column(
                    children: [
                      Gap(height / 9),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 3,
                                  color: AppColor.gray.withOpacity(0.4),
                                  offset: const Offset(0, 0)),
                            ],
                            color: AppColor.white.withOpacity(1),
                          ),
                          child: CupertinoFormRow(
                            prefix: SvgPicture.asset(
                                'assets/icons/account_circle.svg'),
                            child: CupertinoTextFormFieldRow(
                              style: GoogleFonts.poppins(
                                color: AppColor.black300,
                              ),
                              placeholder: 'number',
                              placeholderStyle: GoogleFonts.poppins(
                                color: AppColor.black300,
                              ),
                              validator: (num) {
                                if (number.text.isEmpty) {
                                  return 'Enter number';
                                } else if (number.text.length != 10) {
                                  return 'Enter a valid number';
                                }
                                return null;
                              },
                              controller: number,
                              // for spacing between icon and text
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 6),
                            ),
                          ),
                        ),
                      ),
                      const Gap(18),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 3,
                                  color: AppColor.gray.withOpacity(0.4),
                                  offset: const Offset(0, 0)),
                            ],
                            color: AppColor.white.withOpacity(1),
                          ),
                          child: CupertinoFormRow(
                            prefix: SvgPicture.asset(
                                'assets/icons/lock_circle.svg'),
                            child: CupertinoTextFormFieldRow(
                              obscureText: true,
                              style: GoogleFonts.poppins(
                                color: AppColor.black300,
                              ),
                              placeholder: 'Password',
                              placeholderStyle: GoogleFonts.poppins(
                                color: AppColor.black300,
                              ),
                              validator: (pass) {
                                if (password.text.isEmpty) {
                                  return 'Enter password';
                                } else if (password.text.length < 8) {
                                  return 'password length must be 8 or 8+';
                                }
                                return null;
                              },
                              controller: password,
                              // for spacing between icon and text
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 6),
                            ),
                          ),
                        ),
                      ),
                      const Gap(20),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: SizedBox(
                          width: width,
                          child: GestureDetector(
                            onTap: () {
                              // Get.toNamed('/forgot');
                            },
                            child: Text(
                              'Forgot Password?',
                              textAlign: TextAlign.right,
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w300,
                                fontSize: 16,
                                color: AppColor.black300,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const Gap(40),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: GestureDetector(
                          onTap: () async {
                            var key = formkey.currentState!;
                            if (key.validate()) {
                              // await FirebaseAuth.instance.verifyPhoneNumber(
                              //   phoneNumber: '+91${number.text.toString()}',
                              //   verificationCompleted:
                              //       (PhoneAuthCredential credential) async {
                              //         await FirebaseAuth.instance.signInWithCredential(credential);
                              //       },
                              //   verificationFailed:
                              //       (FirebaseAuthException e) {
                              //         if (e.code == 'invalid-phone-number') {
                              //           print('The provided phone number is not valid.');
                              //         }
                              //       },
                              //   codeSent: (String verificationId,
                              //       int? resendToken) {},
                              //   codeAutoRetrievalTimeout:
                              //       (String verificationId) {},
                              // );
                              loginUser(
                                  email: 'kenilkenil425@gmail.com',
                                  password: number.text.toString());
                            }
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
                                  offset: const Offset(0, 3),
                                ),
                              ],
                            ),
                            child: Text(
                              'Login',
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
                            const Gap(10),
                            Text(
                              'or continue with',
                              style: GoogleFonts.poppins(
                                color: AppColor.black300,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            const Gap(10),
                            Container(
                              height: 2,
                              width: width / 4,
                              color: AppColor.gray.withOpacity(0.2),
                            ),
                          ],
                        ),
                      ),
                      const Gap(30),
                      GestureDetector(
                        onTap: () {
                          Get.offNamedUntil('/navigation', (route) => false);
                        },
                        child: Container(
                          height: 50,
                          width: 120,
                          alignment: Alignment.center,
                          child: Icon(
                            Icons.apple,
                            color: AppColor.black300,
                            size: 50,
                          ),
                        ),
                      ),
                      const Gap(50),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed('/ios_sign_up');
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Don’t have an account?',
                              style:
                                  GoogleFonts.poppins(color: AppColor.black300),
                            ),
                            const Gap(6),
                            Text(
                              ' Sign up',
                              style:
                                  GoogleFonts.poppins(color: AppColor.primary),
                            ),
                          ],
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

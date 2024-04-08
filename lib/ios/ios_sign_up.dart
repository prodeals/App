import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pro_deals1/utils/colors.dart';

class ios_sign_up extends StatelessWidget {
  ios_sign_up({super.key});

  TextEditingController user = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController number = TextEditingController();

  final formKey = GlobalKey<FormState>();

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
                        'Create Account',
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
                child: Form(
                  key: formKey,
                  child: SingleChildScrollView(
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
                                placeholder: 'Enter username',
                                placeholderStyle: GoogleFonts.poppins(
                                  color: AppColor.black300,
                                ),
                                validator: (username) {
                                  if (user.text.isEmpty) {
                                    return 'Enter username';
                                  }
                                  return null;
                                },
                                controller: user,
                                // for spacing between icon and text
                                padding: EdgeInsets.symmetric(horizontal: 6),
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
                                  'assets/icons/call_circle.svg'),
                              child: CupertinoTextFormFieldRow(
                                style: GoogleFonts.poppins(
                                  color: AppColor.black300,
                                ),
                                placeholder: 'Enter phone number',
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
                                padding: EdgeInsets.symmetric(horizontal: 6),
                              ),
                            ),
                          ),
                        ),
                        const Gap(60),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: GestureDetector(
                            onTap: () async {
                              var key = formKey.currentState!;
                              if (key.validate() == true) {
                                await FirebaseAuth.instance.verifyPhoneNumber(
                                  verificationCompleted:
                                      (PhoneAuthCredential credential) {},
                                  verificationFailed:
                                      (FirebaseAuthException ex) {},
                                  codeSent: (String code, int? resendCode) {
                                    Get.toNamed('/ios_otp', arguments: {
                                      'code': code,
                                      'username': user.text.toString(),
                                      'phone': number.text.toString(),
                                      'password': password.text.toString(),
                                    });
                                  },
                                  codeAutoRetrievalTimeout: (verificationId) {},
                                  phoneNumber: '+91 ${number.text.toString()}',
                                );
                                print('valid');
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
                                    offset: Offset(0, 3),
                                  ),
                                ],
                              ),
                              child: Text(
                                'Sign up',
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
                                style: GoogleFonts.poppins(
                                    color: AppColor.black300),
                              ),
                              const Gap(6),
                              Text(
                                ' Sign in',
                                style: GoogleFonts.poppins(
                                    color: AppColor.primary),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
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

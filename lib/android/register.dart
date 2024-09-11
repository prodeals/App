import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/colors.dart';
import '../../utils/images.dart';
import '../api/register.dart';

class register extends StatelessWidget {
  register({super.key});

  TextEditingController user = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController password = TextEditingController();
  final formKey = GlobalKey<FormState>();

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
              child: Form(
                key: formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Gap(80),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        'Register',
                        style: GoogleFonts.roboto(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: AppColor.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        'Please Register to Login.',
                        style: GoogleFonts.roboto(
                          fontSize: 16,
                          // fontWeight: FontWeight.bold,
                          color: AppColor.white,
                        ),
                      ),
                    ),
                    const Gap(40),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: TextFormField(
                        controller: user,
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
                              Icons.person,
                              size: 20,
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          hintText: 'Create Username',
                        ),
                        validator: (username) {
                          if (user.text.isEmpty) {
                            return 'Enter username';
                          }
                          return null;
                        },
                      ),
                    ),
                    const Gap(14),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: TextFormField(
                        controller: phone,
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
                        validator: (num) {
                          if (phone.text.isEmpty) {
                            return 'Enter number';
                          } else if (phone.text.length != 10) {
                            return 'Enter a valid number';
                          }
                          return null;
                        },
                      ),
                    ),
                    const Gap(14),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: TextFormField(
                        controller: password,
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
                              Icons.lock,
                              size: 20,
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          hintText: 'Password',
                        ),
                        validator: (pass) {
                          if (password.text.isEmpty) {
                            return 'Enter password';
                          } else if (password.text.length < 8) {
                            return 'password length must be 8 or 8+';
                          }
                          return null;
                        },
                      ),
                    ),
                    const Gap(20),
                    GestureDetector(
                      onTap: () async {
                        var key = formKey.currentState;
                        if (key!.validate() == true) {
                          // await FirebaseAuth.instance.verifyPhoneNumber(
                          //   verificationCompleted:
                          //       (PhoneAuthCredential credential) {},
                          //   verificationFailed: (FirebaseAuthException ex) {},
                          //   codeSent: (String code, int? resendCode) {
                          //     Get.toNamed('/otp_verification', arguments: {
                          //       'code': code,
                          //       'username': user.text.toString(),
                          //       'phone': phone.text.toString(),
                          //       'password': password.text.toString(),
                          //     });
                          //   },
                          //   codeAutoRetrievalTimeout: (verificationId) {},
                          //   phoneNumber: '+91 ${phone.text.toString()}',
                          // );
                          await registerUser(
                            userName: user.text.toString(),
                            email: 'kenilkenil425@gmail.com',
                            phone: phone.text.toString(),
                            password: password.text.toString(),
                          ).then((value) {
                            print('valid');
                          });
                        }
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Container(
                          height: 50,
                          width: width,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: AppColor.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 2,
                                offset: Offset(0, 3),
                              ),
                            ],
                          ),
                          child: Text(
                            'Register',
                            style: GoogleFonts.roboto(
                              color: AppColor.primary,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Text('Or Login With'),
            const Gap(50),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
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
                    Image.asset(google),
                    const Gap(6),
                    Text('Continue With Google'),
                  ],
                ),
              ),
            ),
            const Gap(50),
            GestureDetector(
              onTap: () {
                Get.toNamed('/login');
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'already have an account?',
                    style: GoogleFonts.roboto(color: Colors.grey),
                  ),
                  const Gap(6),
                  Text(
                    'Login',
                    style: GoogleFonts.roboto(color: AppColor.primary),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

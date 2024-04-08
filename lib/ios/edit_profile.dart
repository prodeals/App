import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pro_deals1/utils/colors.dart';

class ios_edit_profile extends StatefulWidget {
  const ios_edit_profile({super.key});

  @override
  State<ios_edit_profile> createState() => _ios_edit_profileState();
}

class _ios_edit_profileState extends State<ios_edit_profile> {
  TextEditingController user = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController number = TextEditingController();
  TextEditingController address = TextEditingController();

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double hit = MediaQuery.of(context).size.height;
    double wid = MediaQuery.of(context).size.width;
    return CupertinoPageScaffold(
      backgroundColor: AppColor.white,
      child: Container(
        height: hit,
        width: wid,
        child: Stack(
          children: [
            Positioned(
              top: 220,
              left: -48,
              child: Container(
                height: 120,
                width: 120,
                decoration: const BoxDecoration(
                  color: Colors.yellow,
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Positioned(
              top: 170,
              left: -50,
              child: Container(
                height: 100,
                width: 100,
                decoration: const BoxDecoration(
                  color: Colors.deepOrange,
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Positioned(
              top: 250,
              left: -36,
              child: Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  // color: Colors.deepOrange,
                  shape: BoxShape.circle,
                  border: Border.all(width: 2),
                ),
              ),
            ),
            Positioned(
              top: 120,
              left: -66,
              child: Container(
                height: 130,
                width: 130,
                decoration: BoxDecoration(
                  // color: Colors.deepOrange,
                  shape: BoxShape.circle,
                  border: Border.all(width: 2),
                ),
              ),
            ),
            Positioned(
              top: 190,
              right: -70,
              child: Container(
                height: 100,
                width: 100,
                decoration: const BoxDecoration(
                  color: Colors.yellow,
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Positioned(
              top: 100,
              right: -48,
              child: Container(
                height: 120,
                width: 120,
                decoration: const BoxDecoration(
                  color: Colors.deepOrange,
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Positioned(
              top: 160,
              right: -70,
              child: Container(
                height: 130,
                width: 130,
                decoration: BoxDecoration(
                  // color: Colors.deepOrange,
                  shape: BoxShape.circle,
                  border: Border.all(width: 2),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const Gap(40),
                    Stack(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Get.back();
                          },
                          child: Container(
                            height: 24,
                            width: 24,
                            decoration: BoxDecoration(
                              color: AppColor.white,
                              borderRadius: BorderRadius.circular(4),
                              boxShadow: [
                                BoxShadow(
                                  offset: const Offset(0, 0),
                                  blurRadius: 2,
                                  spreadRadius: 0,
                                  color: AppColor.gray,
                                ),
                              ],
                            ),
                            child: Icon(
                              CupertinoIcons.arrow_left,
                              size: 16,
                              color: AppColor.black300,
                            ),
                          ),
                        ),
                        Center(
                          child: Text(
                            'Profile',
                            style: TextStyle(
                              color: AppColor.black300,
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Gap(30),
                    SizedBox(
                      height: 140,
                      width: 140,
                      child: Stack(
                        children: [
                          const Center(
                            child: CircleAvatar(
                              radius: 70,
                            ),
                          ),
                          Positioned(
                            bottom: -3,
                            right: -3,
                            child: Container(
                              padding: const EdgeInsets.all(1),
                              decoration: BoxDecoration(
                                color: AppColor.white,
                                shape: BoxShape.circle,
                              ),
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.edit,
                                  color: AppColor.white,
                                ),
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(AppColor.gray),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Gap(10),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        'John Lawis',
                        style: GoogleFonts.openSans(
                          color: AppColor.black300,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const Gap(50),
                    Form(
                      key: formKey,
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10.0, vertical: 4),
                              child: Text(
                                'Full Name',
                                style: GoogleFonts.openSans(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: AppColor.black300.withOpacity(0.7),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10.0),
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
                                  // prefix: SvgPicture.asset(
                                  //     'assets/icons/account_circle.svg'),
                                  child: CupertinoTextFormFieldRow(
                                    style: GoogleFonts.poppins(
                                      color: AppColor.black300,
                                    ),
                                    placeholder: 'John Lawis',
                                    placeholderStyle: GoogleFonts.poppins(
                                      color: AppColor.black300,
                                    ),
                                    // validator: (username) {
                                    //   if (user.text.isEmpty) {
                                    //     return 'Enter username';
                                    //   }
                                    //   return null;
                                    // },
                                    controller: user,
                                    // for spacing between icon and text
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 6),
                                  ),
                                ),
                              ),
                            ),
                            const Gap(10),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10.0, vertical: 4),
                              child: Text(
                                'Phone Number',
                                style: GoogleFonts.openSans(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: AppColor.black300.withOpacity(0.7),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10.0),
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
                                  // prefix: SvgPicture.asset(
                                  //     'assets/icons/call_circle.svg'),
                                  child: CupertinoTextFormFieldRow(
                                    style: GoogleFonts.poppins(
                                      color: AppColor.black300,
                                    ),
                                    placeholder: '334 455 343',
                                    placeholderStyle: GoogleFonts.poppins(
                                      color: AppColor.black300,
                                    ),
                                    // validator: (num) {
                                    //   if (number.text.isEmpty) {
                                    //     return 'Enter number';
                                    //   } else if (number.text.length != 10) {
                                    //     return 'Enter a valid number';
                                    //   }
                                    //   return null;
                                    // },
                                    controller: number,
                                    // for spacing between icon and text
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 6),
                                  ),
                                ),
                              ),
                            ),
                            const Gap(10),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10.0, vertical: 4),
                              child: Text(
                                'Email Address',
                                style: GoogleFonts.openSans(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: AppColor.black300.withOpacity(0.7),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10.0),
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
                                  // prefix: SvgPicture.asset(
                                  //     'assets/icons/lock_circle.svg'),
                                  child: CupertinoTextFormFieldRow(
                                    style: GoogleFonts.poppins(
                                      color: AppColor.black300,
                                    ),
                                    placeholder: 'johnlawis23@gmai.com',
                                    placeholderStyle: GoogleFonts.poppins(
                                      color: AppColor.black300,
                                    ),
                                    // validator: (pass) {
                                    //   if (email.text.isEmpty) {
                                    //     return 'Enter password';
                                    //   } else if (email.text.length < 8) {
                                    //     return 'password length must be 8 or 8+';
                                    //   }
                                    //   return null;
                                    // },
                                    controller: email,
                                    // for spacing between icon and text
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 6),
                                  ),
                                ),
                              ),
                            ),
                            const Gap(10),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10.0, vertical: 4),
                              child: Text(
                                'Address',
                                style: GoogleFonts.openSans(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: AppColor.black300.withOpacity(0.7),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10.0),
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
                                  // prefix: SvgPicture.asset(
                                  //     'assets/icons/lock_circle.svg'),
                                  child: CupertinoTextFormFieldRow(
                                    style: GoogleFonts.poppins(
                                      color: AppColor.black300,
                                    ),
                                    placeholder:
                                        '41 Elza avenue, Corner St.London,7867',
                                    placeholderStyle: GoogleFonts.poppins(
                                      color: AppColor.black300,
                                    ),
                                    // validator: (pass) {
                                    //   if (address.text.isEmpty) {
                                    //     return 'Enter password';
                                    //   } else if (address.text.length < 8) {
                                    //     return 'password length must be 8 or 8+';
                                    //   }
                                    //   return null;
                                    // },
                                    controller: address,
                                    // for spacing between icon and text
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 6),
                                  ),
                                ),
                              ),
                            ),
                            const Gap(20),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: GestureDetector(
                                onTap: () {
                                  Get.back();
                                },
                                child: Container(
                                  height: 40,
                                  width: wid,
                                  decoration: BoxDecoration(
                                    color: AppColor.primary,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  alignment: Alignment.center,
                                  child: Text('save'),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

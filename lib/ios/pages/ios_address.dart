import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/colors.dart';
import '../../widget/ios_button.dart';
import 'ios_create_account.dart';

class ios_address extends StatefulWidget {
  const ios_address({super.key});

  @override
  State<ios_address> createState() => _ios_addressState();
}

class _ios_addressState extends State<ios_address> {
  get _streetController => null;

  get _cityController => null;

  get _stateController => null;

  get _regionController => null;

  get _pinController => null;

  @override
  Widget build(BuildContext context) {
    double hit = MediaQuery.of(context).size.height;
    double wid = MediaQuery.of(context).size.width;
    return CupertinoPageScaffold(
        child: Container(
      height: hit,
      width: wid,
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
                      onPressed: () {
                        Get.back();
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                      ),
                    ),
                    const Gap(60),
                    Text(
                      'Create Account',
                      style: GoogleFonts.inter(
                        color: Colors.black,
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
              height: hit / 1.25,
              width: wid,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(120),
                ),
              ),
              child: Form(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Gap(hit / 15),
                      Text(
                        "Address",
                        style: GoogleFonts.inter(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                        ),
                      ),
                      const Gap(30),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 3,
                                  color: Colors.grey.withOpacity(0.4),
                                  offset: const Offset(0, 0)),
                            ],
                            color: Colors.white.withOpacity(1),
                          ),
                          padding: const EdgeInsets.all(8),
                          child: CupertinoTextField(
                            placeholder: 'Street Address',
                            placeholderStyle: const TextStyle(
                                color: CupertinoColors.systemGrey,
                                fontSize: 16),
                            decoration: const BoxDecoration(),
                            controller: _streetController,
                          ),
                        ),
                      ),
                      Gap(20),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 3,
                                  color: Colors.grey.withOpacity(0.4),
                                  offset: const Offset(0, 0)),
                            ],
                            color: Colors.white.withOpacity(1),
                          ),
                          padding: const EdgeInsets.all(8),
                          child: CupertinoTextField(
                            placeholder: 'City',
                            placeholderStyle: const TextStyle(
                                color: CupertinoColors.systemGrey,
                                fontSize: 16),
                            decoration: const BoxDecoration(),
                            controller: _cityController,
                          ),
                        ),
                      ),
                      Gap(20),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 3,
                                  color: Colors.grey.withOpacity(0.4),
                                  offset: const Offset(0, 0)),
                            ],
                            color: Colors.white.withOpacity(1),
                          ),
                          padding: const EdgeInsets.all(8),
                          child: CupertinoTextField(
                            placeholder: 'State',
                            placeholderStyle: const TextStyle(
                                color: CupertinoColors.systemGrey,
                                fontSize: 16),
                            decoration: const BoxDecoration(),
                            controller: _stateController,
                          ),
                        ),
                      ),
                      Gap(20),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 3,
                                  color: Colors.grey.withOpacity(0.4),
                                  offset: const Offset(0, 0)),
                            ],
                            color: Colors.white.withOpacity(1),
                          ),
                          padding: const EdgeInsets.all(8),
                          child: CupertinoTextField(
                            placeholder: 'Region',
                            placeholderStyle: const TextStyle(
                                color: CupertinoColors.systemGrey,
                                fontSize: 16),
                            decoration: const BoxDecoration(),
                            controller: _regionController,
                          ),
                        ),
                      ),
                      Gap(20),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 3,
                                  color: Colors.grey.withOpacity(0.4),
                                  offset: const Offset(0, 0)),
                            ],
                            color: Colors.white.withOpacity(1),
                          ),
                          padding: const EdgeInsets.all(8),
                          child: CupertinoTextField(
                            placeholder: 'Pincode',
                            placeholderStyle: const TextStyle(
                                color: CupertinoColors.systemGrey,
                                fontSize: 16),
                            decoration: const BoxDecoration(),
                            controller: _pinController,
                          ),
                        ),
                      ),
                      const Gap(30),
                      ios_button(
                        onTap: () {
                          Get.toNamed('/ios_detail');
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }
}

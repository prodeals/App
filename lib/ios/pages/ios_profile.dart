import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/colors.dart';
import '../../widget/ios_button.dart';

class ios_businessProfile extends StatefulWidget {
  const ios_businessProfile({super.key});

  @override
  State<ios_businessProfile> createState() => _ios_businessProfileState();
}

class _ios_businessProfileState extends State<ios_businessProfile> {
  get _DiscriptionController => null;

  get _daysController => null;

  get _AreaController => null;

  get _CloseController => null;

  get _openController => null;

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
                        // Navigator.pushReplacement(context,
                        //     MaterialPageRoute(builder: (_) => ios_detail()));
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
                        "Business / Profession Profile",
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
                            placeholder: 'Area In squre Feet',
                            placeholderStyle: const TextStyle(
                                color: CupertinoColors.systemGrey,
                                fontSize: 16),
                            decoration: const BoxDecoration(),
                            controller: _AreaController,
                          ),
                        ),
                      ),
                      Gap(20),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 3,
                                        color: Colors.grey.withOpacity(0.4),
                                        offset: const Offset(0, 0),
                                      ),
                                    ],
                                    color: Colors.white.withOpacity(1),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: CupertinoTextField(
                                      placeholder: 'Open Time',
                                      placeholderStyle: const TextStyle(
                                        color: CupertinoColors.systemGrey,
                                        fontSize: 16,
                                      ),
                                      decoration: const BoxDecoration(),
                                      controller: _openController,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 3,
                                        color: Colors.grey.withOpacity(0.4),
                                        offset: const Offset(0, 0),
                                      ),
                                    ],
                                    color: Colors.white.withOpacity(1),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: CupertinoTextField(
                                      placeholder: 'Close Time',
                                      placeholderStyle: const TextStyle(
                                        color: CupertinoColors.systemGrey,
                                        fontSize: 16,
                                      ),
                                      decoration: const BoxDecoration(),
                                      controller: _CloseController,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
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
                            placeholder: 'Close Days',
                            placeholderStyle: const TextStyle(
                                color: CupertinoColors.systemGrey,
                                fontSize: 16),
                            decoration: const BoxDecoration(),
                            controller: _daysController,
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
                            maxLines: 5,
                            placeholder: 'Discription (0/500)',
                            placeholderStyle: const TextStyle(
                                color: CupertinoColors.systemGrey,
                                fontSize: 16),
                            decoration: const BoxDecoration(),
                            controller: _DiscriptionController,
                          ),
                        ),
                      ),
                      const Gap(30),
                      ios_button(
                        onTap: () {
                          Get.toNamed('/ios_images');
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

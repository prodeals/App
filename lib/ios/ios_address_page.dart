import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/colors.dart';

class ios_Address extends StatelessWidget {
  const ios_Address({super.key});

  @override
  Widget build(BuildContext context) {
    double hit = MediaQuery.of(context).size.height;
    double wid = MediaQuery.of(context).size.width;
    return CupertinoPageScaffold(
      backgroundColor: const Color(0xfff9f9f9),
      child: Container(
        height: hit,
        width: wid,
        padding: EdgeInsets.all(16),
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
                    'Address',
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
            Expanded(
              flex: 1,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      height: 220,
                      width: wid,
                      decoration: BoxDecoration(
                        color: AppColor.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    AppColor.gray.withOpacity(0.00),
                                    AppColor.gray.withOpacity(0.06),
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                ),
                              ),
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      SvgPicture.asset(
                                          'assets/images/svg/home.svg'),
                                      const Gap(20),
                                      Text(
                                        'Home',
                                        style: TextStyle(
                                          color: AppColor.black300,
                                          fontWeight: FontWeight.w700,
                                          letterSpacing: 1.2,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Spacer(),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.more_vert,
                                      color: AppColor.gray,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 4,
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        CupertinoIcons.person_alt,
                                        color: AppColor.orange,
                                        size: 20,
                                      ),
                                      const Gap(10),
                                      Text(
                                        'John Lawis',
                                        style: GoogleFonts.openSans(
                                          color: AppColor.black300,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.call,
                                        color: AppColor.orange,
                                        size: 20,
                                      ),
                                      const Gap(10),
                                      Text(
                                        '334 455 343',
                                        style: GoogleFonts.openSans(
                                          color: AppColor.black300,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.mail,
                                        color: AppColor.orange,
                                        size: 20,
                                      ),
                                      const Gap(10),
                                      Text(
                                        'johnlawis23@gmai.com',
                                        style: GoogleFonts.openSans(
                                          color: AppColor.black300,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        CupertinoIcons.location_solid,
                                        color: AppColor.orange,
                                        size: 20,
                                      ),
                                      const Gap(10),
                                      Text(
                                        '41 Elza avenue, Corner St.London,7867',
                                        style: GoogleFonts.openSans(
                                          color: AppColor.black300,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Gap(30),
            GestureDetector(
              onTap: () {
                Get.toNamed('/ios_add_address');
              },
              child: Container(
                height: 50,
                width: wid,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColor.primary,
                ),
                alignment: Alignment.center,
                child: Text(
                  'Add New Address',
                  style: GoogleFonts.openSans(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const Gap(10),
          ],
        ),
      ),
    );
  }
}

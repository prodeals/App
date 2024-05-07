import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pro_deals1/utils/colors.dart';

class ios_profile extends StatelessWidget {
  const ios_profile({super.key});

  @override
  Widget build(BuildContext context) {
    double hit = MediaQuery.of(context).size.height;
    double wid = MediaQuery.of(context).size.width;
    return CupertinoPageScaffold(
      child: Container(
        height: hit,
        width: wid,
        color: AppColor.white,
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
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Gap(hit / 20),
                  Center(
                    child: Text(
                      'Profile',
                      style: GoogleFonts.openSans(
                        fontWeight: FontWeight.bold,
                        color: AppColor.black300,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Gap(hit / 20),
                  Center(
                    child: Column(
                      children: [
                        Container(
                          height: hit / 7,
                          width: wid / 2,
                          decoration: BoxDecoration(
                            color: AppColor.primary,
                            shape: BoxShape.circle,
                          ),
                        ),
                        const Gap(10),
                        Text(
                          'John Lawis',
                          style: GoogleFonts.openSans(
                            fontWeight: FontWeight.bold,
                            color: AppColor.black300,
                            fontSize: 20,
                          ),
                        ),
                        const Gap(2),
                        Text(
                          'Edit Profile',
                          style: GoogleFonts.openSans(
                            fontWeight: FontWeight.w500,
                            color: AppColor.gray,
                            fontSize: 14,
                          ),
                        ),
                        const Gap(60),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Container(
                                  height: wid / 4.5,
                                  width: wid / 4.5,
                                  decoration: BoxDecoration(
                                    color: AppColor.white,
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        offset: const Offset(1, 1),
                                        blurRadius: 3,
                                        color: AppColor.gray.withOpacity(0.5),
                                      ),
                                    ],
                                  ),
                                  alignment: Alignment.center,
                                  child: Icon(
                                    Icons.book,
                                    color: AppColor.black300,
                                    size: 30,
                                  ),
                                ),
                                const Gap(10),
                                Text(
                                  'Orders',
                                  style: GoogleFonts.openSans(
                                    fontWeight: FontWeight.w500,
                                    color: AppColor.black300,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                            GestureDetector(
                              onTap: () {
                                Get.toNamed('/edit_profile');
                              },
                              child: Column(
                                children: [
                                  Container(
                                    height: wid / 4.5,
                                    width: wid / 4.5,
                                    decoration: BoxDecoration(
                                      color: AppColor.white,
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: [
                                        BoxShadow(
                                          offset: const Offset(1, 1),
                                          blurRadius: 3,
                                          color: AppColor.gray.withOpacity(0.5),
                                        ),
                                      ],
                                    ),
                                    alignment: Alignment.center,
                                    child: Icon(
                                      Icons.person_outline_sharp,
                                      color: AppColor.black300,
                                      size: 30,
                                    ),
                                  ),
                                  const Gap(10),
                                  Text(
                                    'Profile',
                                    style: GoogleFonts.openSans(
                                      fontWeight: FontWeight.w500,
                                      color: AppColor.black300,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Get.toNamed('/ios_favourite');
                              },
                              child: Column(
                                children: [
                                  Container(
                                    height: wid / 4.5,
                                    width: wid / 4.5,
                                    decoration: BoxDecoration(
                                      color: AppColor.white,
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: [
                                        BoxShadow(
                                          offset: const Offset(1, 1),
                                          blurRadius: 3,
                                          color: AppColor.gray.withOpacity(0.5),
                                        ),
                                      ],
                                    ),
                                    alignment: Alignment.center,
                                    child: Icon(
                                      Icons.favorite_border,
                                      color: AppColor.black300,
                                      size: 30,
                                    ),
                                  ),
                                  const Gap(10),
                                  Text(
                                    'Favorites',
                                    style: GoogleFonts.openSans(
                                      fontWeight: FontWeight.w500,
                                      color: AppColor.black300,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const Gap(10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Get.toNamed('/ios_promocode');
                              },
                              child: Column(
                                children: [
                                  Container(
                                    height: wid / 4.5,
                                    width: wid / 4.5,
                                    decoration: BoxDecoration(
                                      color: AppColor.white,
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: [
                                        BoxShadow(
                                          offset: const Offset(1, 1),
                                          blurRadius: 3,
                                          color: AppColor.gray.withOpacity(0.5),
                                        ),
                                      ],
                                    ),
                                    alignment: Alignment.center,
                                    child: Icon(
                                      Icons.local_offer_outlined,
                                      color: AppColor.black300,
                                      size: 30,
                                    ),
                                  ),
                                  const Gap(10),
                                  Text(
                                    'Offers',
                                    style: GoogleFonts.openSans(
                                      fontWeight: FontWeight.w500,
                                      color: AppColor.black300,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              children: [
                                Container(
                                  height: wid / 4.5,
                                  width: wid / 4.5,
                                  decoration: BoxDecoration(
                                    color: AppColor.white,
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        offset: const Offset(1, 1),
                                        blurRadius: 3,
                                        color: AppColor.gray.withOpacity(0.5),
                                      ),
                                    ],
                                  ),
                                  alignment: Alignment.center,
                                  child: Icon(
                                    Icons.payment,
                                    color: AppColor.black300,
                                    size: 30,
                                  ),
                                ),
                                const Gap(10),
                                Text(
                                  'Payments',
                                  style: GoogleFonts.openSans(
                                    fontWeight: FontWeight.w500,
                                    color: AppColor.black300,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                            GestureDetector(
                              onTap: () {
                                Get.toNamed('/ios_address');
                              },
                              child: Column(
                                children: [
                                  Container(
                                    height: wid / 4.5,
                                    width: wid / 4.5,
                                    decoration: BoxDecoration(
                                      color: AppColor.white,
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: [
                                        BoxShadow(
                                          offset: const Offset(1, 1),
                                          blurRadius: 3,
                                          color: AppColor.gray.withOpacity(0.5),
                                        ),
                                      ],
                                    ),
                                    alignment: Alignment.center,
                                    child: Icon(
                                      Icons.location_on_outlined,
                                      color: AppColor.black300,
                                      size: 30,
                                    ),
                                  ),
                                  const Gap(10),
                                  Text(
                                    'Addresses',
                                    style: GoogleFonts.openSans(
                                      fontWeight: FontWeight.w500,
                                      color: AppColor.black300,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const Gap(60),
                        Center(
                          child: Container(
                            height: hit / 18,
                            width: wid / 2.4,
                            decoration: BoxDecoration(
                              color: AppColor.primary,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.logout,
                                  color: AppColor.white,
                                ),
                                const Gap(10),
                                Text(
                                  'SIGN OUT',
                                  style: GoogleFonts.openSans(
                                    fontWeight: FontWeight.bold,
                                  ),
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
          ],
        ),
      ),
    );
  }
}

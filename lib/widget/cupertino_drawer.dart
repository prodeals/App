import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/colors.dart';

Widget cupertino_drawer(double hit, double wid) {
  return Container(
    height: hit,
    width: wid / 1.3,
    decoration: const BoxDecoration(
      image: DecorationImage(
        image: AssetImage('assets/images/drower.png'),
        fit: BoxFit.fill,
      ),
    ),
    padding: const EdgeInsets.all(16),
    child: Column(
      children: [
        const Gap(10),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(
                Icons.close,
                color: AppColor.white,
              ),
            ),
          ],
        ),
        const Gap(10),
        Row(
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/profile_image.png'),
                ),
              ),
            ),
            const Gap(16),
            SizedBox(
              height: 50,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'John Lawis',
                    style: GoogleFonts.openSans(
                      color: AppColor.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    'johnlawis2@gmail.com',
                    style: GoogleFonts.openSans(
                      color: AppColor.white,
                      // fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const Gap(30),
        GestureDetector(
          onTap: () {
            Get.toNamed("/edit_profile");
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.person,
                    color: AppColor.white,
                  ),
                  const Gap(10),
                  Text(
                    'Edit Profile',
                    style: GoogleFonts.openSans(
                      fontSize: 16,
                      color: AppColor.white,
                    ),
                  ),
                ],
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: AppColor.white,
                size: 20,
              ),
            ],
          ),
        ),
        const Gap(20),
        GestureDetector(
          onTap: () {
            Get.toNamed("/ios_address");
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.location_on,
                    color: AppColor.white,
                  ),
                  const Gap(10),
                  Text(
                    'Shopping Address',
                    style: GoogleFonts.openSans(
                      fontSize: 16,
                      color: AppColor.white,
                    ),
                  ),
                ],
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: AppColor.white,
                size: 20,
              ),
            ],
          ),
        ),
        const Gap(20),
        GestureDetector(
          onTap: () {
            Get.toNamed("/ios_favourite");
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.favorite,
                    color: AppColor.white,
                  ),
                  const Gap(10),
                  Text(
                    'Wishlist',
                    style: GoogleFonts.openSans(
                      fontSize: 16,
                      color: AppColor.white,
                    ),
                  ),
                ],
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: AppColor.white,
                size: 20,
              ),
            ],
          ),
        ),
        const Gap(20),
        GestureDetector(
          onTap: () {
            Get.toNamed("/edit_profile");
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.history_edu,
                    color: AppColor.white,
                  ),
                  const Gap(10),
                  Text(
                    'Order History',
                    style: GoogleFonts.openSans(
                      fontSize: 16,
                      color: AppColor.white,
                    ),
                  ),
                ],
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: AppColor.white,
                size: 20,
              ),
            ],
          ),
        ),
        const Gap(20),
        GestureDetector(
          onTap: () {
            Get.toNamed("/ios_notification");
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.notifications,
                    color: AppColor.white,
                  ),
                  const Gap(10),
                  Text(
                    'Notification',
                    style: GoogleFonts.openSans(
                      fontSize: 16,
                      color: AppColor.white,
                    ),
                  ),
                ],
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: AppColor.white,
                size: 20,
              ),
            ],
          ),
        ),
        const Gap(20),
        GestureDetector(
          onTap: () {
            // Get.toNamed("/edit_profile");
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.credit_card_sharp,
                    color: AppColor.white,
                  ),
                  const Gap(10),
                  Text(
                    'Cards',
                    style: GoogleFonts.openSans(
                      fontSize: 16,
                      color: AppColor.white,
                    ),
                  ),
                ],
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: AppColor.white,
                size: 20,
              ),
            ],
          ),
        ),
        const Gap(20),
        GestureDetector(
          onTap: () {
            // Get.toNamed("/edit_profile");
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.settings,
                    color: AppColor.white,
                  ),
                  const Gap(10),
                  Text(
                    'Setting',
                    style: GoogleFonts.openSans(
                      fontSize: 16,
                      color: AppColor.white,
                    ),
                  ),
                ],
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: AppColor.white,
                size: 20,
              ),
            ],
          ),
        ),
        const Gap(20),
        GestureDetector(
          onTap: () {
            Get.toNamed("/ios_support");
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.support_outlined,
                    color: AppColor.white,
                  ),
                  const Gap(10),
                  Text(
                    'Support',
                    style: GoogleFonts.openSans(
                      fontSize: 16,
                      color: AppColor.white,
                    ),
                  ),
                ],
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: AppColor.white,
                size: 20,
              ),
            ],
          ),
        ),
        const Gap(20),
        GestureDetector(
          onTap: () {
            Get.toNamed("/ios_create_account");
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.edit_square,
                    color: AppColor.white,
                  ),
                  const Gap(10),
                  Text(
                    'Register your Business',
                    style: GoogleFonts.openSans(
                      fontSize: 16,
                      color: AppColor.white,
                    ),
                  ),
                ],
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: AppColor.white,
                size: 20,
              ),
            ],
          ),
        ),
        const Gap(30),
        Center(
          child: GestureDetector(
            onTap: () {
              Get.offNamedUntil("/login", (route) => false);
            },
            child: Container(
              height: 36,
              width: 156,
              decoration: BoxDecoration(
                color: AppColor.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.logout,
                    size: 20,
                    color: AppColor.primary,
                  ),
                  const Gap(10),
                  Text(
                    'Logout',
                    style: GoogleFonts.openSans(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: AppColor.primary,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

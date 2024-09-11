import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

Widget C_drawer(double hit, double wid) {
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
        const Gap(40),
        Row(
          children: [
            Image.asset("assets/images/profile_image.png"),
            const Gap(10),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "LA Pino'z Pizza",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
                ),
                Gap(4),
                Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      color: Colors.grey,
                      size: 14,
                    ),
                    Text(
                      "Varachha",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
                Gap(4),
                Row(
                  children: [
                    Text(
                      "4.9",
                      style: TextStyle(fontSize: 14),
                    ),
                    Gap(5),
                    Icon(
                      Icons.star,
                      color: Colors.black,
                      size: 16,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.black,
                      size: 16,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.black,
                      size: 16,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.black,
                      size: 16,
                    ),
                    Icon(
                      Icons.star_half,
                      color: Colors.black,
                      size: 16,
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
        const Gap(30),
        GestureDetector(
          onTap: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    'MANAGE PROFILE',
                    style: GoogleFonts.openSans(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
                size: 20,
              ),
            ],
          ),
        ),
        const Gap(20),
        GestureDetector(
          onTap: () {
            Get.offNamed('/ios_manageoffer');
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    'MANAGE OFFERS',
                    style: GoogleFonts.openSans(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
                size: 20,
              ),
            ],
          ),
        ),
        const Gap(20),
        GestureDetector(
          onTap: () {
            Get.toNamed('/order');
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    'TOTAL ORDERS',
                    style: GoogleFonts.openSans(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
                size: 20,
              ),
            ],
          ),
        ),
        const Gap(20),
        GestureDetector(
          onTap: () {
            Get.offNamed('/Earning_ios');
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    'TOTAL EARNINGS',
                    style: GoogleFonts.openSans(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
                size: 20,
              ),
            ],
          ),
        ),
        const Gap(20),
        GestureDetector(
          onTap: () {
            Get.offNamed('/total_reqeemed');
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    'TOTAL REDEEMED',
                    style: GoogleFonts.openSans(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
                size: 20,
              ),
            ],
          ),
        ),
        const Gap(20),
        GestureDetector(
          onTap: () {
            Get.offNamed('/ios_active');
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    'ACTIVE OFFERS',
                    style: GoogleFonts.openSans(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
                size: 20,
              ),
            ],
          ),
        ),
        const Gap(20),
        GestureDetector(
          onTap: () {
            Get.toNamed('/my_qr');
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    'QR CODE',
                    style: GoogleFonts.openSans(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
                size: 20,
              ),
            ],
          ),
        ),
        const Gap(20),
        Row(
          children: [
            Text(
              'SETTINGS',
              style: GoogleFonts.openSans(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
          ],
        ),
        const Divider(
          indent: 0,
          endIndent: 0,
          color: Colors.black,
          thickness: 0.2,
        ),
        const Gap(20),
        GestureDetector(
          onTap: () {
            Get.toNamed('/ios_about_us');
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    'ABOUT US',
                    style: GoogleFonts.openSans(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
                size: 20,
              ),
            ],
          ),
        ),
        const Gap(20),
        GestureDetector(
          onTap: () {
            Get.toNamed('/term_conditiom');
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    'TERMS & CONDITION',
                    style: GoogleFonts.openSans(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
                size: 20,
              ),
            ],
          ),
        ),
        const Gap(20),
        GestureDetector(
          onTap: () {
            Get.toNamed('/privacy_policy');
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    'PRIVACY POLICY',
                    style: GoogleFonts.openSans(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
                size: 20,
              ),
            ],
          ),
        ),
        const Gap(30),
        GestureDetector(
          onTap: () {
            Get.offNamedUntil('/navigation', (route) => false);
          },
          child: Center(
            child: Container(
              height: 36,
              width: 156,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.logout,
                    size: 20,
                    color: Colors.amber,
                  ),
                  const Gap(10),
                  Text(
                    'Logout',
                    style: GoogleFonts.openSans(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.amber,
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

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

Widget drawer(double hit, double wid) {
  return Container(
    height: hit,
    width: wid / 1.3,
    decoration: const BoxDecoration(
      image: DecorationImage(
        image: AssetImage('assets/image/image.png'),
        fit: BoxFit.fill,
      ),
    ),
    padding: const EdgeInsets.all(16),
    child: Column(
      children: [
        const Gap(40),
        Row(
          children: [
            Image.asset("assets/image/la.png"),
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
          onTap: () {},
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
          onTap: () {},
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
          onTap: () {},
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
          onTap: () {},
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
          onTap: () {},
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
          onTap: () {},
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
          onTap: () {},
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
          onTap: () {},
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
          onTap: () {},
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
          onTap: () {},
          child: Center(
            child: Container(
              height: 36,
              width: 156,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(15)),
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

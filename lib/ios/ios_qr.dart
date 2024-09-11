import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../../utils/colors.dart'; // Ensure you have defined your color constants here

class ios_qr extends StatelessWidget {
  const ios_qr({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return CupertinoPageScaffold(
      backgroundColor: const Color(0xfff9f9f9),
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Gap(20),
              Text(
                'Scan QR Code',
                style: TextStyle(
                  color: AppColor.black300,
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const Gap(30),
              Expanded(
                child: Container(
                  width: width,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: AppColor.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 8,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Text(
                        'My QR Code',
                        style: TextStyle(
                          color: AppColor.black300,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const Gap(20),
                      CircleAvatar(
                        radius: 60,
                        backgroundColor: AppColor.gray.withOpacity(0.2),
                        child: Icon(
                          Icons.person,
                          size: 60,
                          color: AppColor.black300,
                        ),
                      ),
                      const Gap(20),
                      Text(
                        'John Lawis',
                        style: TextStyle(
                          color: AppColor.black300,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Gap(30),
                      Container(
                        height: 160,
                        width: 160,
                        decoration: BoxDecoration(
                          color: AppColor.white,
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 8,
                              offset: const Offset(0, 4),
                            ),
                          ],
                        ),
                        child: SvgPicture.asset(
                          'assets/icons/qr_code.svg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      const Gap(40),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed('/ios_scan_qr');
                        },
                        child: Container(
                          height: 50,
                          width: width * 0.8,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: AppColor.primary,
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            'Scan QR Code',
                            style: TextStyle(
                              color: AppColor.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

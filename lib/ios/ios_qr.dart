import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../../utils/colors.dart';

class ios_qr extends StatelessWidget {
  const ios_qr({super.key});

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
                Center(
                  child: Text(
                    'Scan QR Code',
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
              child: Container(
                width: wid,
                decoration: BoxDecoration(
                    color: AppColor.white,
                    borderRadius: BorderRadius.circular(4)),
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Text(
                      'My QR Code',
                      style: TextStyle(color: AppColor.black300),
                    ),
                    const Gap(30),
                    CircleAvatar(
                      radius: 50,
                    ),
                    const Gap(20),
                    Text(
                      'John Lawis',
                      style: TextStyle(
                          color: AppColor.black300,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    const Gap(40),
                    Container(
                      height: 160,
                      width: 160,
                      child: SvgPicture.asset('assets/icons/qr_code.svg'),
                    ),
                    const Gap(50),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed('/ios_scan_qr');
                      },
                      child: Container(
                        height: 50,
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: AppColor.gray.withOpacity(0.2),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          'Scan QR Code',
                          style: TextStyle(
                            color: AppColor.black300,
                            fontWeight: FontWeight.bold,
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
    );
  }
}

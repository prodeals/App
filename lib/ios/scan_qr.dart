import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:pro_deals1/utils/colors.dart';

class ios_scan_qr extends StatelessWidget {
  const ios_scan_qr({super.key});

  @override
  Widget build(BuildContext context) {
    bool isCodeScanned = false;
    double hit = MediaQuery.of(context).size.height;
    double wid = MediaQuery.of(context).size.width;
    return CupertinoPageScaffold(
      backgroundColor: const Color(0xfff9f9f9),
      child: Container(
        height: hit,
        width: wid,
        padding: const EdgeInsets.all(16),
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
                      height: 180,
                      width: 180,
                      child: MobileScanner(
                        onDetect: (barcodes) {
                          if (!isCodeScanned) {
                            String code = barcodes.raw ?? '---';
                            print(code);
                          }
                        },
                      ),
                    ),
                    const Gap(10),
                    Text(
                      'Scannig the QR Code...',
                      style: TextStyle(
                        color: AppColor.black300,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Gap(20),
                    Text(
                      'Align QR Code within frame to scan\nwhich is in right side of camera ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AppColor.gray,
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                      ),
                    ),
                    const Gap(40),
                    Container(
                      height: 50,
                      width: wid / 1.6,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColor.primary,
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        'Scannig...',
                        style: TextStyle(
                            color: AppColor.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
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

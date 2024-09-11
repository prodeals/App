import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:qr_flutter/qr_flutter.dart';

import '../utils/colors.dart';

class QRcode extends StatelessWidget {
  const QRcode({super.key});

  @override
  Widget build(BuildContext context) {
    const String phone =
        'assets/images/2560103_camera_media_network_social_icon 1.svg';
    double wid = MediaQuery.of(context).size.width;
    double hit = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.primary,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.arrow_back),
        ),
        centerTitle: true,
        title: const Text(
          'My QR Code',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Gap(60),
          Container(
            width: 200,
            height: 100,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/profile_image.png'))),
          ),
          const Gap(8),
          const Center(
            child: Text(
              'John Lawis',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ),
          ),
          const Gap(40),
          QrImageView(
            data: '1234567890',
            version: QrVersions.auto,
            size: 200,
            gapless: true,
          ),
          const Gap(60),
          GestureDetector(
            onTap: () {},
            child: Container(
              height: 50,
              width: wid / 2,
              decoration: BoxDecoration(
                  border: Border.all(color: AppColor.primary, width: 2),
                  borderRadius: BorderRadius.circular(40),
                  color: AppColor.white),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      child: Image.asset(
                          'assets/images/2560103_camera_media_network_social_icon 1.png'),
                    ),
                    const Text(
                      'Scan QR Code',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
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
}

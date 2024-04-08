import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/colors.dart';

class ios_support extends StatelessWidget {
  const ios_support({super.key});

  @override
  Widget build(BuildContext context) {
    double hit = MediaQuery.of(context).size.height;
    double wid = MediaQuery.of(context).size.width;
    return CupertinoPageScaffold(
      backgroundColor: const Color(0xfff9f9f9),
      child: Container(
        width: wid,
        height: hit,
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
                    'Support Center',
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
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hi! How can we help?',
                        style: GoogleFonts.openSans(
                          color: AppColor.black300,
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        ),
                      ),
                      const Gap(20),
                      CupertinoTextField(
                        prefix: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Icon(
                            CupertinoIcons.search,
                            size: 20,
                            color: AppColor.black300,
                          ),
                        ),
                        placeholder: 'Search for help...',
                        placeholderStyle: GoogleFonts.openSansCondensed(
                          color: AppColor.black300,
                          fontWeight: FontWeight.w600,
                        ),
                        decoration: BoxDecoration(
                          color: AppColor.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      const Gap(20),
                      Container(
                        height: 120,
                        width: wid,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/support.png'),
                              fit: BoxFit.fill),
                        ),
                      ),
                      const Gap(20),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed('/ios_Ans');
                        },
                        child: Row(
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColor.white,
                                image: const DecorationImage(
                                  image:
                                      AssetImage('assets/images/Question.png'),
                                ),
                              ),
                            ),
                            const Gap(20),
                            Text(
                              'Frequently asked Questions',
                              style: GoogleFonts.openSans(
                                  color: AppColor.black300),
                            ),
                          ],
                        ),
                      ),
                      const Gap(30),
                      Row(
                        children: [
                          Text(
                            'My order didn’t received yet?',
                            style:
                                GoogleFonts.openSans(color: AppColor.primary),
                          ),
                          const Spacer(),
                          Icon(
                            CupertinoIcons.forward,
                            color: AppColor.primary,
                          )
                        ],
                      ),
                      const Divider(),
                      const Gap(10),
                      Row(
                        children: [
                          Text(
                            'My order came with missing items ',
                            style:
                                GoogleFonts.openSans(color: AppColor.black300),
                          ),
                          const Spacer(),
                          Icon(
                            CupertinoIcons.forward,
                            color: AppColor.black300,
                          )
                        ],
                      ),
                      const Divider(),
                      const Gap(10),
                      Row(
                        children: [
                          Text(
                            'Change my phone number',
                            style:
                                GoogleFonts.openSans(color: AppColor.black300),
                          ),
                          const Spacer(),
                          Icon(
                            CupertinoIcons.forward,
                            color: AppColor.black300,
                          )
                        ],
                      ),
                      const Divider(),
                      const Gap(10),
                      Row(
                        children: [
                          Text(
                            'Change my delivery address',
                            style:
                                GoogleFonts.openSans(color: AppColor.black300),
                          ),
                          const Spacer(),
                          Icon(
                            CupertinoIcons.forward,
                            color: AppColor.black300,
                          )
                        ],
                      ),
                      const Divider(),
                      const Gap(30),
                      Row(
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColor.white,
                            ),
                            padding: EdgeInsets.all(2),
                            child: SvgPicture.asset('assets/icons/pay.svg'),
                          ),
                          const Gap(20),
                          Text(
                            'Frequently asked Questions',
                            style:
                                GoogleFonts.openSans(color: AppColor.black300),
                          ),
                        ],
                      ),
                      const Gap(30),
                      Row(
                        children: [
                          Text(
                            'How do i change payment method?',
                            style:
                                GoogleFonts.openSans(color: AppColor.black300),
                          ),
                          const Spacer(),
                          Icon(
                            CupertinoIcons.forward,
                            color: AppColor.black300,
                          )
                        ],
                      ),
                      const Divider(),
                      const Gap(10),
                      Row(
                        children: [
                          Text(
                            'Can i refund my order?',
                            style:
                                GoogleFonts.openSans(color: AppColor.black300),
                          ),
                          const Spacer(),
                          Icon(
                            CupertinoIcons.forward,
                            color: AppColor.black300,
                          )
                        ],
                      ),
                      const Divider(),
                      const Gap(10),
                      Row(
                        children: [
                          Text(
                            'How can refund my money?',
                            style:
                                GoogleFonts.openSans(color: AppColor.black300),
                          ),
                          const Spacer(),
                          Icon(
                            CupertinoIcons.forward,
                            color: AppColor.black300,
                          )
                        ],
                      ),
                      const Divider(),
                      const Gap(10),
                      Row(
                        children: [
                          Text(
                            'Ordering',
                            style:
                                GoogleFonts.openSans(color: AppColor.black300),
                          ),
                          const Spacer(),
                          Icon(
                            CupertinoIcons.forward,
                            color: AppColor.black300,
                          )
                        ],
                      ),
                      const Divider(),
                      const Gap(10),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

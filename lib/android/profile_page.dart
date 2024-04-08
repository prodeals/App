import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pro_deals1/utils/colors.dart';

class profile_page extends StatelessWidget {
  const profile_page({super.key});

  @override
  Widget build(BuildContext context) {
    double hit = MediaQuery.of(context).size.height;
    double wid = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        centerTitle: true,
        backgroundColor: AppColor.primary,
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: hit / 3,
              width: wid,
              decoration: BoxDecoration(
                color: AppColor.primary,
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(60),
                    bottomLeft: Radius.circular(60)),
              ),
            ),
            Container(
              height: hit,
              width: wid,
              child: Column(
                children: [
                  const Gap(20),
                  SizedBox(
                    height: 110,
                    width: 110,
                    child: Stack(
                      children: [
                        Center(
                          child: CircleAvatar(
                            radius: 50,
                          ),
                        ),
                        Positioned(
                          bottom: -1,
                          right: -1,
                          child: Container(
                            padding: EdgeInsets.all(1),
                            decoration: BoxDecoration(
                              color: AppColor.primary,
                              shape: BoxShape.circle,
                            ),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.edit,
                                color: AppColor.white,
                              ),
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    AppColor.black300),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Gap(10),
                  Text(
                    'John Lawis',
                    style: GoogleFonts.openSans(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  const Gap(20),
                  Padding(
                    padding:
                        const EdgeInsets.only(bottom: 16, right: 16, left: 16),
                    child: Container(
                      height: hit / 1.6,
                      width: wid,
                      decoration: BoxDecoration(
                        color: AppColor.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 2,
                              offset: Offset(0, 0)),
                        ],
                      ),
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        children: [
                          InkWell(
                            onTap: () {
                              Get.toNamed('/edit_profile');
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.person,
                                      color: AppColor.gray,
                                    ),
                                    const Gap(10),
                                    Text(
                                      'Edit Profile',
                                      style: GoogleFonts.openSans(
                                        fontSize: 16,
                                        color: AppColor.gray,
                                      ),
                                    ),
                                  ],
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: AppColor.gray,
                                  size: 20,
                                ),
                              ],
                            ),
                          ),
                          const Gap(20),
                          InkWell(
                            onTap: () {
                              Get.toNamed('/address');
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.location_on,
                                      color: AppColor.gray,
                                    ),
                                    const Gap(10),
                                    Text(
                                      'Shopping Address',
                                      style: GoogleFonts.openSans(
                                        fontSize: 16,
                                        color: AppColor.gray,
                                      ),
                                    ),
                                  ],
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: AppColor.gray,
                                  size: 20,
                                ),
                              ],
                            ),
                          ),
                          const Gap(20),
                          GestureDetector(
                            onTap: () {
                              Get.toNamed('/Favourite');
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.favorite,
                                      color: AppColor.gray,
                                    ),
                                    const Gap(10),
                                    Text(
                                      'Wishlist',
                                      style: GoogleFonts.openSans(
                                        fontSize: 16,
                                        color: AppColor.gray,
                                      ),
                                    ),
                                  ],
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: AppColor.gray,
                                  size: 20,
                                ),
                              ],
                            ),
                          ),
                          const Gap(20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.history_edu,
                                    color: AppColor.gray,
                                  ),
                                  const Gap(10),
                                  Text(
                                    'Order History',
                                    style: GoogleFonts.openSans(
                                      fontSize: 16,
                                      color: AppColor.gray,
                                    ),
                                  ),
                                ],
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: AppColor.gray,
                                size: 20,
                              ),
                            ],
                          ),
                          const Gap(20),
                          InkWell(
                            onTap: () {
                              Get.toNamed('/notification');
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.notifications,
                                      color: AppColor.gray,
                                    ),
                                    const Gap(10),
                                    Text(
                                      'Notification',
                                      style: GoogleFonts.openSans(
                                        fontSize: 16,
                                        color: AppColor.gray,
                                      ),
                                    ),
                                  ],
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: AppColor.gray,
                                  size: 20,
                                ),
                              ],
                            ),
                          ),
                          const Gap(20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.credit_card_sharp,
                                    color: AppColor.gray,
                                  ),
                                  const Gap(10),
                                  Text(
                                    'Cards',
                                    style: GoogleFonts.openSans(
                                      fontSize: 16,
                                      color: AppColor.gray,
                                    ),
                                  ),
                                ],
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: AppColor.gray,
                                size: 20,
                              ),
                            ],
                          ),
                          const Gap(20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.settings,
                                    color: AppColor.gray,
                                  ),
                                  const Gap(10),
                                  Text(
                                    'Setting',
                                    style: GoogleFonts.openSans(
                                      fontSize: 16,
                                      color: AppColor.gray,
                                    ),
                                  ),
                                ],
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: AppColor.gray,
                                size: 20,
                              ),
                            ],
                          ),
                          const Gap(20),
                          InkWell(
                            onTap: () {
                              Get.toNamed('/Support');
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.support_outlined,
                                      color: AppColor.gray,
                                    ),
                                    const Gap(10),
                                    Text(
                                      'Support',
                                      style: GoogleFonts.openSans(
                                        fontSize: 16,
                                        color: AppColor.gray,
                                      ),
                                    ),
                                  ],
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: AppColor.gray,
                                  size: 20,
                                ),
                              ],
                            ),
                          ),
                          const Gap(20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.edit_square,
                                    color: AppColor.gray,
                                  ),
                                  const Gap(10),
                                  Text(
                                    'Register your Business',
                                    style: GoogleFonts.openSans(
                                      fontSize: 16,
                                      color: AppColor.gray,
                                    ),
                                  ),
                                ],
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: AppColor.gray,
                                size: 20,
                              ),
                            ],
                          ),
                          const Gap(40),
                          Center(
                            child: Container(
                              height: 36,
                              width: 156,
                              decoration: BoxDecoration(
                                color: AppColor.primary,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.logout,
                                    size: 20,
                                    color: AppColor.white,
                                  ),
                                  const Gap(10),
                                  Text(
                                    'Logout',
                                    style: GoogleFonts.openSans(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: AppColor.white,
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

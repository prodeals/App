import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../android/bar chart .dart';

class dashboard extends StatefulWidget {
  const dashboard({super.key});

  @override
  State<dashboard> createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
  @override
  Widget build(BuildContext context) {
    Color color7 = const Color(0xFF6BB5FA);
    Color color8 = const Color(0xFFFFFFFF);
    Color color6 = const Color(0xFFF3742D);
    Color color9 = const Color(0xFFD0DFEE);
    Color color5 = const Color(0xFF81D1FF);
    Color color = const Color(0xFF3C81C2);
    Color color1 = const Color(0xFFDAA520);
    Color color2 = const Color(0xFFFCE5AC);
    Color color3 = const Color(0xFF32801C);
    Color? mixedColor = Color.lerp(color7, color8, 0.5);
    double wid = MediaQuery.of(context).size.width;
    double hei = MediaQuery.of(context).size.height;
    return CupertinoPageScaffold(
        backgroundColor: const Color(0xfff9f9f9),
        resizeToAvoidBottomInset: true,
        child: Column(children: [
          const Gap(30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CupertinoButton(
                onPressed: () {
                  Get.toNamed('/order');
                },
                child: const Icon(
                  CupertinoIcons.bars,
                  size: 30,
                  color: CupertinoColors.black,
                ),
              ),

              //  Image.asset(
              //    'assets/images/Rectangle 5021 (1).png',
              //    width: 80,
              //    height: 80,
              //  ),
            ],
          ),
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Gap(20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    'MY DASHBOARD',
                    style: GoogleFonts.openSans(
                      textStyle: Theme.of(context).textTheme.displayLarge,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
                const Gap(20),
                Center(
                    child: Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: [
                    Container(
                      width: wid / 2.20,
                      height: wid / 2.46,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: CupertinoColors.white,
                          boxShadow: const [
                            BoxShadow(
                                blurStyle: BlurStyle.normal,
                                blurRadius: 0,
                                spreadRadius: 0)
                          ]),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Gap(20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                    color: color2,
                                    boxShadow: const [
                                      BoxShadow(
                                          blurStyle: BlurStyle.normal,
                                          blurRadius: 0,
                                          spreadRadius: 0)
                                    ],
                                    borderRadius: BorderRadius.circular(10),
                                    image: const DecorationImage(
                                        image: AssetImage(
                                            'assets/images/Received.png'))),
                              ),
                              Container(
                                width: 40,
                                height: 40,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                  'assets/images/Vector (1).png',
                                ))),
                              ),
                            ],
                          ),
                          const Gap(20),
                          Text(
                            '    ₹ 83,034',
                            style: GoogleFonts.openSans(
                              textStyle:
                                  Theme.of(context).textTheme.displayLarge,
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                          Text(
                            '    Total Earning',
                            style: GoogleFonts.openSans(
                              textStyle:
                                  Theme.of(context).textTheme.displayLarge,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: wid / 2.20,
                      height: wid / 2.46,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: CupertinoColors.white,
                          boxShadow: const [
                            BoxShadow(
                                blurStyle: BlurStyle.normal,
                                blurRadius: 0,
                                spreadRadius: 0)
                          ]),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Gap(20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                    color: color2,
                                    boxShadow: const [
                                      BoxShadow(
                                          blurStyle: BlurStyle.normal,
                                          blurRadius: 0,
                                          spreadRadius: 0)
                                    ],
                                    borderRadius: BorderRadius.circular(10),
                                    image: const DecorationImage(
                                        image: AssetImage(
                                            'assets/images/7952173_receipt_paper_transation_check_sale_icon 1.png'))),
                              ),
                              Container(
                                width: 40,
                                height: 40,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                  'assets/images/Vector.png',
                                ))),
                              ),
                            ],
                          ),
                          const Gap(20),
                          Text(
                            '    2,400',
                            style: GoogleFonts.openSans(
                              textStyle:
                                  Theme.of(context).textTheme.displayLarge,
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                          Text(
                            '    Total Orders',
                            style: GoogleFonts.openSans(
                              textStyle:
                                  Theme.of(context).textTheme.displayLarge,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: wid / 2.20,
                      height: wid / 2.46,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: CupertinoColors.white,
                          boxShadow: const [
                            BoxShadow(
                                blurStyle: BlurStyle.normal,
                                blurRadius: 0,
                                spreadRadius: 0)
                          ]),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Gap(20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                    color: color2,
                                    boxShadow: const [
                                      BoxShadow(
                                          blurStyle: BlurStyle.normal,
                                          blurRadius: 0,
                                          spreadRadius: 0)
                                    ],
                                    borderRadius: BorderRadius.circular(10),
                                    image: const DecorationImage(
                                        image: AssetImage(
                                            'assets/images/pngtree-gift-voucher-coupon-design-png-image_6097745 1.png'))),
                              ),
                              Container(
                                width: 40,
                                height: 40,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                  'assets/images/604490 1.png',
                                ))),
                              ),
                            ],
                          ),
                          const Gap(20),
                          Text(
                            '    2,400',
                            style: GoogleFonts.openSans(
                              textStyle:
                                  Theme.of(context).textTheme.displayLarge,
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                          Text(
                            '    Total Redeemed',
                            style: GoogleFonts.openSans(
                              textStyle:
                                  Theme.of(context).textTheme.displayLarge,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: wid / 2.20,
                      height: wid / 2.46,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: CupertinoColors.white,
                          boxShadow: const [
                            BoxShadow(
                                blurStyle: BlurStyle.normal,
                                blurRadius: 0,
                                spreadRadius: 0)
                          ]),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Gap(20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                    color: color2,
                                    boxShadow: const [
                                      BoxShadow(
                                          blurStyle: BlurStyle.normal,
                                          blurRadius: 0,
                                          spreadRadius: 0)
                                    ],
                                    borderRadius: BorderRadius.circular(10),
                                    image: const DecorationImage(
                                        image: AssetImage(
                                            'assets/images/5499587 1.png'))),
                              ),
                              Container(
                                width: 40,
                                height: 40,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                  'assets/images/4171256_day_discount_love_offer_sale_icon 1.png',
                                ))),
                              ),
                            ],
                          ),
                          const Gap(20),
                          Text(
                            '    70',
                            style: GoogleFonts.openSans(
                              textStyle:
                                  Theme.of(context).textTheme.displayLarge,
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                          Text(
                            '    Active 0ffers',
                            style: GoogleFonts.openSans(
                              textStyle:
                                  Theme.of(context).textTheme.displayLarge,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )),
                const Gap(20),
                Center(
                  child: Container(
                      width: wid / 1.08,
                      height: 350,
                      decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                                blurStyle: BlurStyle.normal,
                                blurRadius: 0,
                                spreadRadius: 0)
                          ],
                          borderRadius: BorderRadius.circular(10),
                          color: CupertinoColors.white),
                      child: Column(
                        children: [
                          const Gap(10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                ' Sales Chart ',
                                style: GoogleFonts.openSans(
                                  textStyle:
                                      Theme.of(context).textTheme.displayLarge,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                              Text(
                                '₹ 9,45,570  ',
                                style: GoogleFonts.openSans(
                                  textStyle:
                                      Theme.of(context).textTheme.displayLarge,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                            ],
                          ),
                          //                       Row(
                          //   children: [
                          //     Gap(16),
                          //     Container(
                          //                     height: 30,
                          //                     width: 100,
                          //                     padding: const EdgeInsets.symmetric(horizontal: 10),
                          //                     decoration: BoxDecoration(
                          //                     color: color2,
                          //                       borderRadius: BorderRadius.circular(10),
                          //                     ),
                          //                     child: DropdownButton<String>(
                          //                       value: countryValue,
                          //                       icon: Icon(Icons.keyboard_arrow_down,size: 14,),
                          //                       isExpanded: true,
                          //                       underline: SizedBox(),
                          //                       style: TextStyle(color: Colors.black, fontSize: 16),
                          //                       onChanged: (newValue) {
                          //                         setState(() {
                          //                           countryValue = newValue;
                          //                         });
                          //                       },
                          //                       items: country.map((valueItem) {
                          //                         return DropdownMenuItem<String>(
                          //                           value: valueItem,
                          //                           child: Text(valueItem),
                          //                         );
                          //                       }).toList(),
                          //                     ),
                          //                   ),
                          //   ],
                          // ),
                          const barchart(),
                        ],
                      )),
                ),
                const Gap(20),
              ],
            ),
          )),
        ]));
  }
}

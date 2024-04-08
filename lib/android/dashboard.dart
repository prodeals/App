import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import 'bar chart .dart';

class deshborad extends StatefulWidget {
  const deshborad({super.key});

  @override
  State<deshborad> createState() => _deshboradState();
}

class _deshboradState extends State<deshborad> {
  @override
  Widget build(BuildContext context) {
    Color color1 = Color(0xFFDAA520);
    Color color2 = Color(0xFFFCE5AC);
    double wid = MediaQuery.of(context).size.width;
    double hei = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
        actions: [
          Image.asset(
            'assets/images/Rectangle 5021 (1).png',
            width: 60,
            height: 60,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(20),
            Text(
              '    MY DASHBOARD',
              style: GoogleFonts.openSans(
                textStyle: Theme.of(context).textTheme.displayLarge,
                fontSize: 18,
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.normal,
              ),
            ),
            Gap(20),
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
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                              blurStyle: BlurStyle.normal,
                              blurRadius: 0,
                              spreadRadius: 0)
                        ]),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Gap(20),
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
                        Gap(20),
                        Text(
                          '    ₹ 83,034',
                          style: GoogleFonts.openSans(
                            textStyle: Theme.of(context).textTheme.displayLarge,
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                        Text(
                          '    Total Earning',
                          style: GoogleFonts.openSans(
                            textStyle: Theme.of(context).textTheme.displayLarge,
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
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
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                              blurStyle: BlurStyle.normal,
                              blurRadius: 0,
                              spreadRadius: 0)
                        ]),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Gap(20),
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
                        Gap(20),
                        Text(
                          '    2,400',
                          style: GoogleFonts.openSans(
                            textStyle: Theme.of(context).textTheme.displayLarge,
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                        Text(
                          '    Total Orders',
                          style: GoogleFonts.openSans(
                            textStyle: Theme.of(context).textTheme.displayLarge,
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
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
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                              blurStyle: BlurStyle.normal,
                              blurRadius: 0,
                              spreadRadius: 0)
                        ]),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Gap(20),
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
                        Gap(20),
                        Text(
                          '    2,400',
                          style: GoogleFonts.openSans(
                            textStyle: Theme.of(context).textTheme.displayLarge,
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                        Text(
                          '    Total Redeemed',
                          style: GoogleFonts.openSans(
                            textStyle: Theme.of(context).textTheme.displayLarge,
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
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
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                              blurStyle: BlurStyle.normal,
                              blurRadius: 0,
                              spreadRadius: 0)
                        ]),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Gap(20),
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
                        Gap(20),
                        Text(
                          '    70',
                          style: GoogleFonts.openSans(
                            textStyle: Theme.of(context).textTheme.displayLarge,
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                        Text(
                          '    Active 0ffers',
                          style: GoogleFonts.openSans(
                            textStyle: Theme.of(context).textTheme.displayLarge,
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Gap(20),
            Center(
              child: Container(
                  width: wid / 1.08,
                  height: hei / 2.46,
                  decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                            blurStyle: BlurStyle.normal,
                            blurRadius: 0,
                            spreadRadius: 0)
                      ],
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: Column(
                    children: [
                      Gap(10),
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
                      barchart()
                    ],
                  )),
            ),
            Gap(20),
          ],
        ),
      ),
    );
  }
}

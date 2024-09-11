import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pro_deals1/widget/separator.dart';

class Coupons extends StatefulWidget {
  const Coupons({Key? key}) : super(key: key);

  @override
  State<Coupons> createState() => _CouponsState();
}

class _CouponsState extends State<Coupons> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MY Coupons"),
        centerTitle: true,
        backgroundColor: Colors.amber,
        leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: const Icon(Icons.arrow_back)),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            child: CarouselSlider(
              options: CarouselOptions(
                enableInfiniteScroll: false,
                height: 315,
                scrollDirection: Axis.horizontal,
              ),
              items: [
                Stack(
                  children: [
                    Container(
                      height: 315,
                      width: 238,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.purple[200],
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 3,
                            offset: Offset(0, 3),
                            color: Colors.grey,
                          ),
                        ],
                      ),
                      child: Stack(
                        children: [
                          const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 45, vertical: 35),
                            child: Opacity(
                              opacity: 0.2,
                              child: Text(
                                "25",
                                style: TextStyle(
                                  fontSize: 120,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Gap(20),
                              const Text(
                                "DIWALI SALE",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const Gap(25),
                              const Text(
                                "25%",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 70),
                              ),
                              const Text(
                                "OFF",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                              ),
                              const Gap(15),
                              const MySeparator(
                                color: Colors.deepPurple,
                              ),
                              const Gap(25),
                              GestureDetector(
                                child: Container(
                                  height: 35,
                                  width: 130,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15)),
                                  child: const Center(
                                      child: Text(
                                    "Redeem",
                                    style: TextStyle(color: Colors.deepPurple),
                                  )),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      right: -10,
                      bottom: 75,
                      child:
                          SvgPicture.asset("assets/images/svg/Ellipse 212.svg"),
                    ),
                    Positioned(
                      left: -10,
                      bottom: 75,
                      child:
                          SvgPicture.asset("assets/images/svg/Ellipse 212.svg"),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      height: 315,
                      width: 238,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.teal[200],
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 3,
                            offset: Offset(0, 3),
                            color: Colors.grey,
                          ),
                        ],
                      ),
                      child: Stack(
                        children: [
                          const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 45, vertical: 35),
                            child: Opacity(
                              opacity: 0.2,
                              child: Text(
                                "30",
                                style: TextStyle(
                                  fontSize: 120,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Gap(20),
                              const Text(
                                "DIWALI SALE",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const Gap(25),
                              const Text(
                                "30%",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 70),
                              ),
                              const Text(
                                "OFF",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                              ),
                              const Gap(15),
                              const MySeparator(
                                color: Colors.teal,
                              ),
                              const Gap(25),
                              GestureDetector(
                                child: Container(
                                  height: 35,
                                  width: 130,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15)),
                                  child: const Center(
                                      child: Text(
                                    "Redeem",
                                    style: TextStyle(color: Colors.teal),
                                  )),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      right: -10,
                      bottom: 75,
                      child:
                          SvgPicture.asset("assets/images/svg/Ellipse 212.svg"),
                    ),
                    Positioned(
                      left: -10,
                      bottom: 75,
                      child:
                          SvgPicture.asset("assets/images/svg/Ellipse 212.svg"),
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Personal Care Product",
                style: GoogleFonts.openSans(
                    fontSize: 22, fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Get 25% off on all personal care product\nwhen you purchase \$35 or more in our\nstore.",
                style: GoogleFonts.openSans(
                  color: Colors.grey,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                "Exp: 7 Apr,2024",
                style: GoogleFonts.openSans(
                    fontSize: 16, fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

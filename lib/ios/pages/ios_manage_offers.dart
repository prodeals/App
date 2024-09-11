import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pro_deals1/widget/cupertino_my_drawer.dart';

import '../../utils/colors.dart';

class ios_manageoffer extends StatefulWidget {
  const ios_manageoffer({super.key});

  @override
  State<ios_manageoffer> createState() => _ios_manageofferState();
}

class _ios_manageofferState extends State<ios_manageoffer> {
  @override
  Widget build(BuildContext context) {
    double hit = MediaQuery.of(context).size.height;
    double wid = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        actions: [
          Image.asset(
            'assets/images/profile_image.png',
            width: 60,
            height: 60,
          ),
          Gap(20),
        ],
      ),
      drawer: C_drawer(hit, wid),
      body: CupertinoPageScaffold(
        child: Container(
          height: hit,
          width: wid,
          color: AppColor.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Gap(20),
                Text(
                  "MANAGE OFFERS",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: AppColor.black300),
                ),
                const Gap(20),
                CupertinoFormRow(
                  child: Row(
                    children: [
                      Image.asset("assets/images/profile_image.png"),
                      const Gap(10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "LA Pino'z Pizza",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.normal,
                                color: AppColor.black300),
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
                                style: TextStyle(
                                    fontSize: 14, color: AppColor.black300),
                              ),
                              Gap(5),
                              Icon(
                                Icons.star,
                                color: Color.fromARGB(255, 214, 170, 38),
                                size: 16,
                              ),
                              Icon(
                                Icons.star,
                                color: Color.fromARGB(255, 214, 170, 38),
                                size: 16,
                              ),
                              Icon(
                                Icons.star,
                                color: Color.fromARGB(255, 214, 170, 38),
                                size: 16,
                              ),
                              Icon(
                                Icons.star,
                                color: Color.fromARGB(255, 214, 170, 38),
                                size: 16,
                              ),
                              Icon(
                                Icons.star_half,
                                color: Color.fromARGB(255, 214, 170, 38),
                                size: 16,
                              ),
                            ],
                          )
                        ],
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child:
                            SvgPicture.asset('assets/images/svg/Group3766.svg'),
                      ),
                    ],
                  ),
                ),
                const Gap(10),
                Card(
                  elevation: 1,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Just Arrived",
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.w600),
                            ),
                            Container(
                              height: 18,
                              width: 36,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color:
                                      const Color.fromARGB(255, 214, 170, 38),
                                ),
                                borderRadius: BorderRadius.circular(3),
                              ),
                              child: const Center(
                                child: Text(
                                  "25% off",
                                  style: TextStyle(
                                      fontSize: 8,
                                      color:
                                          Color.fromARGB(2255, 214, 170, 38)),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Gap(8),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Get Any Choco Lava at Rs.99\nworth Rs.121",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                            Column(
                              children: [
                                Text(
                                  "₹ 99/-",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  "₹ 121/-",
                                  style: TextStyle(
                                      fontSize: 14,
                                      decoration: TextDecoration.lineThrough,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.grey),
                                )
                              ],
                            )
                          ],
                        ),
                        const Gap(10),
                        const Text(
                          "Valid on : All Days",
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w600),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Timings : Sat, 11:00 AM-11:30 PM",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w600),
                            ),
                            GestureDetector(
                              child: SvgPicture.asset(
                                  "assets/images/Frame 3587.svg"),
                            ),
                            GestureDetector(
                              child:
                                  SvgPicture.asset("assets/images/Frame.svg"),
                            ),
                            GestureDetector(
                              child: SvgPicture.asset(
                                  "assets/images/Frame 1000003093.svg"),
                            ),
                            GestureDetector(
                              child: SvgPicture.asset(
                                  "assets/images/Frame 1000003096.svg"),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                const Gap(10),
                Card(
                  elevation: 1,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Just Arrived",
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.w600),
                            ),
                            Container(
                              height: 18,
                              width: 36,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color:
                                      const Color.fromARGB(255, 214, 170, 38),
                                ),
                                borderRadius: BorderRadius.circular(3),
                              ),
                              child: const Center(
                                child: Text(
                                  "25% off",
                                  style: TextStyle(
                                      fontSize: 8,
                                      color:
                                          Color.fromARGB(2255, 214, 170, 38)),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Gap(8),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Get Any Choco Lava at Rs.99\nworth Rs.121",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                            Column(
                              children: [
                                Text(
                                  "₹ 99/-",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  "₹ 121/-",
                                  style: TextStyle(
                                      fontSize: 14,
                                      decoration: TextDecoration.lineThrough,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.grey),
                                )
                              ],
                            )
                          ],
                        ),
                        const Gap(10),
                        const Text(
                          "Valid on : All Days",
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w600),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Timings : Sat, 11:00 AM-11:30 PM",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w600),
                            ),
                            GestureDetector(
                              child: SvgPicture.asset(
                                  "assets/images/Frame 3587.svg"),
                            ),
                            GestureDetector(
                              child:
                                  SvgPicture.asset("assets/images/Frame.svg"),
                            ),
                            GestureDetector(
                              child: SvgPicture.asset(
                                  "assets/images/Frame 1000003093.svg"),
                            ),
                            GestureDetector(
                              child: SvgPicture.asset(
                                  "assets/images/Frame 1000003096.svg"),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                const Gap(10),
                Card(
                  elevation: 1,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Just Arrived",
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.w600),
                            ),
                            Container(
                              height: 18,
                              width: 36,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color:
                                      const Color.fromARGB(255, 214, 170, 38),
                                ),
                                borderRadius: BorderRadius.circular(3),
                              ),
                              child: const Center(
                                child: Text(
                                  "25% off",
                                  style: TextStyle(
                                      fontSize: 8,
                                      color:
                                          Color.fromARGB(2255, 214, 170, 38)),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Gap(8),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Get Any Choco Lava at Rs.99\nworth Rs.121",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                            Column(
                              children: [
                                Text(
                                  "₹ 99/-",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  "₹ 121/-",
                                  style: TextStyle(
                                      fontSize: 14,
                                      decoration: TextDecoration.lineThrough,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.grey),
                                )
                              ],
                            )
                          ],
                        ),
                        const Gap(10),
                        const Text(
                          "Valid on : All Days",
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w600),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Timings : Sat, 11:00 AM-11:30 PM",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w600),
                            ),
                            GestureDetector(
                              child: SvgPicture.asset(
                                  "assets/images/Frame 3587.svg"),
                            ),
                            GestureDetector(
                              child:
                                  SvgPicture.asset("assets/images/Frame.svg"),
                            ),
                            GestureDetector(
                              child: SvgPicture.asset(
                                  "assets/images/Frame 1000003093.svg"),
                            ),
                            GestureDetector(
                              child: SvgPicture.asset(
                                  "assets/images/Frame 1000003096.svg"),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

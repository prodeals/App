import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widget/my_drawer.dart';

class Manage_offer extends StatefulWidget {
  const Manage_offer({Key? key});

  @override
  State<Manage_offer> createState() => _Manage_offerState();
}

class _Manage_offerState extends State<Manage_offer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Image.asset("assets/image/s_la-pinoz.png"),
        ],
      ),
      drawer: drawer(900, 350),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "MANAGE OFFERS",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const Gap(20),
              Row(
                children: [
                  Image.asset("assets/image/image 55.png"),
                  const Gap(10),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "LA Pino'z Pizza",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.normal),
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
                            style: TextStyle(fontSize: 14),
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
                    child: Image.asset(
                      "assets/image/Group 3765.png",
                    ),
                  ),
                ],
              ),
              const Gap(20),
              Card(
                elevation: 1,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                color: const Color.fromARGB(255, 255, 255, 255),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
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
                                color: const Color.fromARGB(255, 214, 170, 38),
                              ),
                              borderRadius: BorderRadius.circular(3),
                            ),
                            child: const Center(
                              child: Text(
                                "25% off",
                                style: TextStyle(
                                    fontSize: 8,
                                    color: Color.fromARGB(2255, 214, 170, 38)),
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
                                    fontSize: 16, fontWeight: FontWeight.w600),
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
                            child:
                                SvgPicture.asset("assets/image/Frame 3587.svg"),
                          ),
                          GestureDetector(
                            child: SvgPicture.asset(
                                "assets/image/Frame 1000003093.svg"),
                          ),
                          GestureDetector(
                            child: SvgPicture.asset("assets/image/Frame.svg"),
                          ),
                          GestureDetector(
                            child: SvgPicture.asset(
                                "assets/image/Frame 1000003096.svg"),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const Gap(15),
              Card(
                elevation: 1,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                color: const Color.fromARGB(255, 255, 255, 255),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
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
                                color: const Color.fromARGB(255, 214, 170, 38),
                              ),
                              borderRadius: BorderRadius.circular(3),
                            ),
                            child: const Center(
                              child: Text(
                                "33% off",
                                style: TextStyle(
                                    fontSize: 8,
                                    color: Color.fromARGB(2255, 214, 170, 38)),
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
                            "Get Any taco's at Rs.99\nworth Rs.104",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          Column(
                            children: [
                              Text(
                                "₹ 104/-",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w600),
                              ),
                              Text(
                                "₹ 156/-",
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
                            child:
                                SvgPicture.asset("assets/image/Frame 3587.svg"),
                          ),
                          GestureDetector(
                            child: SvgPicture.asset(
                                "assets/image/Frame 1000003093.svg"),
                          ),
                          GestureDetector(
                            child: SvgPicture.asset("assets/image/Frame.svg"),
                          ),
                          GestureDetector(
                            child: SvgPicture.asset(
                                "assets/image/Frame 1000003096.svg"),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const Gap(15),
              Card(
                elevation: 1,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                color: const Color.fromARGB(255, 255, 255, 255),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
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
                                color: const Color.fromARGB(255, 214, 170, 38),
                              ),
                              borderRadius: BorderRadius.circular(3),
                            ),
                            child: const Center(
                              child: Text(
                                "25% off",
                                style: TextStyle(
                                    fontSize: 8,
                                    color: Color.fromARGB(2255, 214, 170, 38)),
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
                                    fontSize: 16, fontWeight: FontWeight.w600),
                              ),
                              Text(
                                "₹ 121/-",
                                style: TextStyle(
                                    decoration: TextDecoration.lineThrough,
                                    fontSize: 14,
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
                            child:
                                SvgPicture.asset("assets/image/Frame 3587.svg"),
                          ),
                          GestureDetector(
                            child: SvgPicture.asset(
                                "assets/image/Frame 1000003093.svg"),
                          ),
                          GestureDetector(
                            child: SvgPicture.asset("assets/image/Frame.svg"),
                          ),
                          GestureDetector(
                            child: SvgPicture.asset(
                                "assets/image/Frame 1000003096.svg"),
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
    );
  }
}

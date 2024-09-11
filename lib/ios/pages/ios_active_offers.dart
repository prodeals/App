import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import '../../utils/colors.dart';
import '../../widget/cupertino_my_drawer.dart';
import '../../widget/ios/offerCard.dart';

class IosActive extends StatefulWidget {
  const IosActive({super.key});

  @override
  State<IosActive> createState() => _IosActiveState();
}

class _IosActiveState extends State<IosActive> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        actions: [
          Image.asset(
            'assets/images/profile_image.png',
            width: 60,
            height: 60,
          ),
          const Gap(20),
        ],
      ),
      drawer: C_drawer(height, width),
      body: CupertinoPageScaffold(
        child: Container(
          height: height,
          width: width,
          color: AppColor.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Gap(20),
                Text(
                  "ACTIVE OFFERS",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: AppColor.black300,
                  ),
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
                              color: AppColor.black300,
                            ),
                          ),
                          const Gap(4),
                          Row(
                            children: [
                              const Icon(
                                Icons.location_on,
                                color: Colors.grey,
                                size: 14,
                              ),
                              Text(
                                "Varachha",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                          const Gap(4),
                          Row(
                            children: [
                              Text(
                                "4.9",
                                style: TextStyle(
                                    fontSize: 14, color: AppColor.black300),
                              ),
                              const Gap(5),
                              ...List.generate(
                                4,
                                (index) => const Icon(
                                  Icons.star,
                                  color: Color.fromARGB(255, 214, 170, 38),
                                  size: 16,
                                ),
                              ),
                              const Icon(
                                Icons.star_half,
                                color: Color.fromARGB(255, 214, 170, 38),
                                size: 16,
                              ),
                            ],
                          ),
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
                buildOfferCard(
                  title: "Just Arrived",
                  offer: "25% off",
                  description: "Get Any Choco Lava at Rs.99\nworth Rs.121",
                  discountPrice: "₹ 99/-",
                  originalPrice: "₹ 121/-",
                  validity: "All Days",
                  timings: "Sat, 11:00 AM-11:30 PM",
                ),
                const Gap(10),
                buildOfferCard(
                  title: "Just Arrived",
                  offer: "25% off",
                  description: "Get Any Choco Lava at Rs.99\nworth Rs.121",
                  discountPrice: "₹ 99/-",
                  originalPrice: "₹ 121/-",
                  validity: "All Days",
                  timings: "Sat, 11:00 AM-11:30 PM",
                ),
                const Gap(10),
                buildOfferCard2(
                  title: "Special Offer",
                  offer: "SAVE",
                  description: "Get 50% off on your next purchase!",
                  discountPrice: "\$25.00",
                  originalPrice: "\$50.00",
                  validity: "Until Dec 31, 2024",
                  timings: "9 AM - 9 PM",
                  discountPercentage: "50",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

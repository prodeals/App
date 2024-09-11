import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pro_deals1/utils/colors.dart';

import '../widget/my_drawer.dart';

class total_reqeemed extends StatefulWidget {
  const total_reqeemed({super.key});

  @override
  State<total_reqeemed> createState() => _total_reqeemedState();
}

class _total_reqeemedState extends State<total_reqeemed> {
  @override
  Widget build(BuildContext context) {
    double hit = MediaQuery.of(context).size.height;
    double wid = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: [
          Container(
            height: 40,
            width: 40,
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage('assets/images/profile_image.png'))),
          ),
          const Gap(16),
        ],
        elevation: 0,
      ),
      drawer: drawer(hit, wid),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "TOTAL REDEEMED",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const Gap(20),
              Row(
                children: [
                  Image.asset("assets/images/profile_image.png"),
                  const Gap(10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "LA Pino'z Pizza",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.normal),
                      ),
                      const Gap(4),
                      const Row(
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
                      const Gap(4),
                      Row(
                        children: [
                          const Text(
                            "4.9",
                            style: TextStyle(fontSize: 14),
                          ),
                          const Gap(5),
                          Icon(
                            Icons.star,
                            color: AppColor.primary,
                            size: 16,
                          ),
                          Icon(
                            Icons.star,
                            color: AppColor.primary,
                            size: 16,
                          ),
                          Icon(
                            Icons.star,
                            color: AppColor.primary,
                            size: 16,
                          ),
                          Icon(
                            Icons.star,
                            color: AppColor.primary,
                            size: 16,
                          ),
                          Icon(
                            Icons.star_half,
                            color: AppColor.primary,
                            size: 16,
                          ),
                        ],
                      )
                    ],
                  ),
                  const Spacer(),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 20),
                    // child: Image.asset(
                    //   "assets/image/Group 3765.png",
                    // ),
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
                      const Row(
                        children: [
                          Expanded(
                            flex: 4,
                            child: Row(
                              children: [
                                Text("Take by"),
                                Spacer(),
                                Text('-'),
                              ],
                            ),
                          ),
                          Gap(10),
                          Expanded(
                            flex: 5,
                            child: Text('Gaurav Butani'),
                          ),
                        ],
                      ),
                      const Row(
                        children: [
                          Expanded(
                            flex: 4,
                            child: Row(
                              children: [
                                Text("Coupon code"),
                                Spacer(),
                                Text('-'),
                              ],
                            ),
                          ),
                          Gap(10),
                          Expanded(
                            flex: 5,
                            child: Text('xxxxxxxxxxxxxx'),
                          ),
                        ],
                      ),
                      const Row(
                        children: [
                          Expanded(
                            flex: 4,
                            child: Row(
                              children: [
                                Text("Take Date"),
                                Spacer(),
                                Text('-'),
                              ],
                            ),
                          ),
                          Gap(10),
                          Expanded(
                            flex: 5,
                            child: Text('15 feb 2024'),
                          ),
                        ],
                      ),
                      const Row(
                        children: [
                          Expanded(
                            flex: 4,
                            child: Row(
                              children: [
                                Text("Created Date"),
                                Spacer(),
                                Text('-'),
                              ],
                            ),
                          ),
                          Gap(10),
                          Expanded(
                            flex: 5,
                            child: Text('3 feb 2024'),
                          ),
                        ],
                      ),
                      const Row(
                        children: [
                          Expanded(
                            flex: 4,
                            child: Row(
                              children: [
                                Text("Expire Date"),
                                Spacer(),
                                Text('-'),
                              ],
                            ),
                          ),
                          Gap(10),
                          Expanded(
                            flex: 5,
                            child: Text('20 feb 2024'),
                          ),
                        ],
                      ),
                      const Gap(6),
                      const Divider(),
                      const Gap(6),
                      Row(
                        children: [
                          Expanded(
                            flex: 5,
                            child: Container(
                              height: 30,
                              width: 100,
                              decoration: BoxDecoration(
                                color: const Color(0xff406B21),
                                borderRadius: BorderRadius.circular(6),
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                'REDEEMED',
                                style: TextStyle(color: AppColor.white),
                              ),
                            ),
                          ),
                          const Gap(100),
                          Expanded(
                            flex: 4,
                            child: Row(
                              children: [
                                Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                      color: const Color(0xff1376AD),
                                      borderRadius: BorderRadius.circular(4)),
                                  padding: const EdgeInsets.all(4),
                                  child: Icon(
                                    CupertinoIcons.eye,
                                    size: 16,
                                    color: AppColor.white,
                                  ),
                                ),
                                const Gap(10),
                                Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                      color: const Color(0xffC01212),
                                      borderRadius: BorderRadius.circular(4)),
                                  padding: const EdgeInsets.all(4),
                                  child: Icon(
                                    CupertinoIcons.delete,
                                    size: 16,
                                    color: AppColor.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
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
                      const Row(
                        children: [
                          Expanded(
                            flex: 4,
                            child: Row(
                              children: [
                                Text("Take by"),
                                Spacer(),
                                Text('-'),
                              ],
                            ),
                          ),
                          Gap(10),
                          Expanded(
                            flex: 5,
                            child: Text('Gaurav Butani'),
                          ),
                        ],
                      ),
                      const Row(
                        children: [
                          Expanded(
                            flex: 4,
                            child: Row(
                              children: [
                                Text("Coupon code"),
                                Spacer(),
                                Text('-'),
                              ],
                            ),
                          ),
                          Gap(10),
                          Expanded(
                            flex: 5,
                            child: Text('xxxxxxxxxxxxxx'),
                          ),
                        ],
                      ),
                      const Row(
                        children: [
                          Expanded(
                            flex: 4,
                            child: Row(
                              children: [
                                Text("Take Date"),
                                Spacer(),
                                Text('-'),
                              ],
                            ),
                          ),
                          Gap(10),
                          Expanded(
                            flex: 5,
                            child: Text('15 feb 2024'),
                          ),
                        ],
                      ),
                      const Row(
                        children: [
                          Expanded(
                            flex: 4,
                            child: Row(
                              children: [
                                Text("Created Date"),
                                Spacer(),
                                Text('-'),
                              ],
                            ),
                          ),
                          Gap(10),
                          Expanded(
                            flex: 5,
                            child: Text('3 feb 2024'),
                          ),
                        ],
                      ),
                      const Row(
                        children: [
                          Expanded(
                            flex: 4,
                            child: Row(
                              children: [
                                Text("Expire Date"),
                                Spacer(),
                                Text('-'),
                              ],
                            ),
                          ),
                          Gap(10),
                          Expanded(
                            flex: 5,
                            child: Text('20 feb 2024'),
                          ),
                        ],
                      ),
                      const Gap(6),
                      const Divider(),
                      const Gap(6),
                      Row(
                        children: [
                          Expanded(
                            flex: 5,
                            child: Container(
                              height: 30,
                              width: 100,
                              decoration: BoxDecoration(
                                color: const Color(0xff406B21),
                                borderRadius: BorderRadius.circular(6),
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                'REDEEMED',
                                style: TextStyle(color: AppColor.white),
                              ),
                            ),
                          ),
                          const Gap(100),
                          Expanded(
                            flex: 4,
                            child: Row(
                              children: [
                                Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                      color: const Color(0xff1376AD),
                                      borderRadius: BorderRadius.circular(4)),
                                  padding: const EdgeInsets.all(4),
                                  child: Icon(
                                    CupertinoIcons.eye,
                                    size: 16,
                                    color: AppColor.white,
                                  ),
                                ),
                                const Gap(10),
                                Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                      color: const Color(0xffC01212),
                                      borderRadius: BorderRadius.circular(4)),
                                  padding: const EdgeInsets.all(4),
                                  child: Icon(
                                    CupertinoIcons.delete,
                                    size: 16,
                                    color: AppColor.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const Gap(15),
            ],
          ),
        ),
      ),
    );
  }
}

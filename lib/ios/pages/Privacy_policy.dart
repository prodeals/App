import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/colors.dart';

class privacy_policy extends StatefulWidget {
  const privacy_policy({super.key});

  @override
  State<privacy_policy> createState() => _privacy_policyState();
}

class _privacy_policyState extends State<privacy_policy> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    double hit = MediaQuery.of(context).size.height;
    double wid = MediaQuery.of(context).size.width;
    return CupertinoPageScaffold(
      child: Container(
        height: hit,
        width: wid,
        color: AppColor.white,
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CupertinoFormRow(
                padding: const EdgeInsets.symmetric(horizontal: 0),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          color: AppColor.white,
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 3,
                              color: Colors.grey.withOpacity(0.5),
                              offset: const Offset(0, 0),
                            ),
                          ],
                        ),
                        child: const Icon(
                          Icons.arrow_back,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Gap(wid / 4),
                    Text(
                      'Privacy Policy',
                      style: GoogleFonts.openSans(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              const Gap(20),
              Text(
                "Privacy Policy",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: AppColor.black300),
              ),
              const Gap(20),
              const Text(
                "The design of this gym website by primal7 is a complete gem, incorporating the About Us page template based on Four sections.",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey),
              ),
              const Gap(20),
              const Text(
                "They described who they were in a single line on the headings. They welcome their visitors by personalizing their website with a refreshing visual. You will find a perfect example of the 15-second rule on the cards that outlines their descriptions and is designed in a unique way that will grab your attention within seconds.",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey),
              ),
              const Gap(20),
              const Text(
                "Researchers say visitors stick to your website for around 15 seconds. And within this short time, if you can capture their attention, you can expect them to stick to your website for an extended visit. Besides, within this period of time, if you cannot grab their attention, you will lose your potential customers. This rule is called the 15 seconds rule.",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey),
              ),
              const Gap(30),
              CupertinoFormRow(
                padding: EdgeInsetsDirectional.symmetric(horizontal: 0),
                child: Row(
                  children: [
                    Transform.scale(
                      scale: 1.2,
                      child: CupertinoCheckbox(
                        checkColor: AppColor.white,
                        activeColor: AppColor.primary,
                        value: isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked = value!;
                          });
                        },
                      ),
                    ),
                    Text(
                      "i agree with the",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: AppColor.black300,
                      ),
                    ),
                    const Gap(4),
                    const Text(
                      "Privacy Policy",
                      style: TextStyle(
                          fontSize: 14,
                          color: Color.fromARGB(255, 214, 170, 38),
                          decoration: TextDecoration.underline,
                          decorationColor: Color.fromARGB(255, 214, 170, 38)),
                    ),
                  ],
                ),
              ),
              Gap(40),
              CupertinoFormRow(
                padding: EdgeInsetsDirectional.symmetric(horizontal: 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 50,
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: AppColor.primary)),
                        child: const Center(
                          child: Text(
                            "Decline",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 50,
                        width: 150,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 214, 170, 38),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Center(
                          child: Text(
                            "Accept",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}

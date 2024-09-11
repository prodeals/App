import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/colors.dart';

class term_conditiom extends StatefulWidget {
  const term_conditiom({super.key});

  @override
  State<term_conditiom> createState() => _term_conditiomState();
}

class _term_conditiomState extends State<term_conditiom> {
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
                      Gap(wid / 6),
                      Text(
                        'Terms & Condition',
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
                  "General site usage last revlsed \nDecember 12-01-2020",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: AppColor.black300),
                ),
                const Gap(20),
                const Text(
                  "The design of this gym website by primal7 is a complete gem, incorporating the About Us page template based on Four sections.",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey),
                ),
                const Gap(10),
                Text(
                  "1. Agreement",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: AppColor.black300),
                ),
                const Gap(10),
                const Text(
                  "They described who they were in a single line on the headings. They welcome their visitors by personalizing their website with a refreshing visual.",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey),
                ),
                const Gap(10),
                Text(
                  "2. Account",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: AppColor.black300),
                ),
                const Gap(10),
                const Text(
                  "They described who they were in a single line on the headings. They welcome their visitors by personalizing their website with a refreshing visual.",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey),
                ),
                const Gap(10),
                Text(
                  "3. RelationShip With Groceries",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: AppColor.black300),
                ),
                const Gap(10),
                const Text(
                  "They described who they were in a single line on the headings. They welcome their visitors by personalizing their website with a refreshing visual.",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

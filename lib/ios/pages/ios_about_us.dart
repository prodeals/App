import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/colors.dart';

class ios_about_us extends StatefulWidget {
  const ios_about_us({super.key});

  @override
  State<ios_about_us> createState() => _ios_about_usState();
}

class _ios_about_usState extends State<ios_about_us> {
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
                      onTap: () {},
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
                      'About Us',
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
              const Text(
                "About Us",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const Gap(20),
              const Text(
                "The design of this gym website by primal7 is a complete gem, incorporating the About Us page template based on Four sections.",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey),
              ),
              const Gap(20),
              const Text(
                "They described who they were in a single line on the headings. They welcome their visitors by personalizing their website with a refreshing visual. You will find a perfect example of the 15-second rule on the cards that outlines their descriptions and is designed in a unique way that will grab your attention within seconds.",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey),
              ),
              const Gap(20),
              const Text(
                "Researchers say visitors stick to your website for around 15 seconds. And within this short time, if you can capture their attention, you can expect them to stick to your website for an extended visit. Besides, within this period of time, if you cannot grab their attention, you will lose your potential customers. This rule is called the 15 seconds rule.",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey),
              ),
            ],
          ),
        )),
      ),
    );
  }
}

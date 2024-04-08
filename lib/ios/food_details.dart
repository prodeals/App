import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pro_deals1/utils/colors.dart';

class food_details extends StatelessWidget {
  const food_details({super.key});

  @override
  Widget build(BuildContext context) {
    double hit = MediaQuery.of(context).size.height;
    double wid = MediaQuery.of(context).size.width;
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            CupertinoIcons.arrow_left,
            size: 20,
            color: AppColor.black300,
          ),
        ),
        middle: Text(
          'Details',
          style: GoogleFonts.openSans(
            color: AppColor.black300,
          ),
        ),
        backgroundColor: AppColor.white,
      ),
      child: Container(
        height: hit,
        width: wid,
        padding: const EdgeInsets.all(16),
        color: AppColor.white,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: hit / 3.2,
                width: wid,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage('assets/images/detail_image.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              const Gap(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Double cheese',
                        style: GoogleFonts.openSans(
                          color: AppColor.gray,
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        'Cheese Pizza',
                        style: GoogleFonts.openSans(
                          color: AppColor.gray,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    '\$5.10',
                    style: GoogleFonts.openSans(
                      color: AppColor.primary,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              const Gap(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Ratings',
                        style: GoogleFonts.openSans(
                          color: AppColor.gray,
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                        ),
                      ),
                      const Gap(10),
                      Row(
                        children: [
                          Icon(
                            Icons.star_rate_rounded,
                            color: AppColor.black300,
                          ),
                          Text(
                            '4.5',
                            style: GoogleFonts.openSans(
                              color: AppColor.gray,
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Calories',
                        style: GoogleFonts.openSans(
                          color: AppColor.gray,
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                        ),
                      ),
                      const Gap(10),
                      Row(
                        children: [
                          Icon(
                            Icons.local_fire_department,
                            color: AppColor.black300,
                          ),
                          Text(
                            '140Kcal',
                            style: GoogleFonts.openSans(
                              color: AppColor.gray,
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Time',
                        style: GoogleFonts.openSans(
                          color: AppColor.gray,
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                        ),
                      ),
                      const Gap(10),
                      Row(
                        children: [
                          Icon(
                            Icons.access_time_filled,
                            color: AppColor.black300,
                          ),
                          Text(
                            '20m',
                            style: GoogleFonts.openSans(
                              color: AppColor.gray,
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              const Gap(20),
              Text(
                'Description',
                style: GoogleFonts.openSans(
                  color: AppColor.black300,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              const Gap(10),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text:
                          'Real cheese made from mozzarella on top of our signature pizza sauce with your choice of crust, then baked to a golden brown...',
                      style: GoogleFonts.openSans(color: AppColor.black300),
                    ),
                    TextSpan(
                      text: 'Read More',
                      style: GoogleFonts.openSans(color: AppColor.primary),
                    ),
                  ],
                ),
              ),
              const Gap(20),
              Text(
                'Ingradiatns',
                style: GoogleFonts.openSans(
                  color: AppColor.black300,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              const Gap(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: AppColor.white,
                          boxShadow: [
                            BoxShadow(
                              color: AppColor.gray.withOpacity(0.4),
                              blurRadius: 2,
                              offset: Offset(0, 1),
                            ),
                          ],
                        ),
                      ),
                      const Gap(4),
                      Text(
                        'Food',
                        style: GoogleFonts.openSans(
                          color: AppColor.black300,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: AppColor.white,
                          boxShadow: [
                            BoxShadow(
                              color: AppColor.gray.withOpacity(0.4),
                              blurRadius: 2,
                              offset: Offset(0, 1),
                            ),
                          ],
                        ),
                      ),
                      const Gap(4),
                      Text(
                        'Drink',
                        style: GoogleFonts.openSans(
                          color: AppColor.black300,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: AppColor.white,
                          boxShadow: [
                            BoxShadow(
                              color: AppColor.gray.withOpacity(0.4),
                              blurRadius: 2,
                              offset: Offset(0, 1),
                            ),
                          ],
                        ),
                      ),
                      const Gap(4),
                      Text(
                        'Cake',
                        style: GoogleFonts.openSans(
                          color: AppColor.black300,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: AppColor.white,
                          boxShadow: [
                            BoxShadow(
                              color: AppColor.gray.withOpacity(0.4),
                              blurRadius: 2,
                              offset: Offset(0, 1),
                            ),
                          ],
                        ),
                      ),
                      const Gap(4),
                      Text(
                        'Snacks',
                        style: GoogleFonts.openSans(
                          color: AppColor.black300,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

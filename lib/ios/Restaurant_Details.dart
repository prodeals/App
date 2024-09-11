import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pro_deals1/utils/colors.dart';

import '../utils/images.dart';
import '../widget/ios/offerCard.dart';

class RestaurantDetails extends StatefulWidget {
  const RestaurantDetails({super.key});

  @override
  State<RestaurantDetails> createState() => _RestaurantDetailsState();
}

class _RestaurantDetailsState extends State<RestaurantDetails> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return CupertinoPageScaffold(
      child: Container(
        height: height,
        width: width,
        color: AppColor.white,
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(height / 26),
            Stack(
              children: [
                GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: Container(
                    height: 24,
                    width: 24,
                    decoration: BoxDecoration(
                      color: AppColor.white,
                      borderRadius: BorderRadius.circular(4),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 0),
                          blurRadius: 2,
                          color: AppColor.gray,
                        ),
                      ],
                    ),
                    child: Icon(
                      CupertinoIcons.arrow_left,
                      size: 16,
                      color: AppColor.black300,
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    'Store',
                    style: TextStyle(
                      color: AppColor.black300,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
            Gap(20),
            Expanded(
              child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 300),
                child: (selectedIndex == 0)
                    ? SingleChildScrollView(
                        key: ValueKey<int>(selectedIndex),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: height / 3.8,
                              width: width,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: const DecorationImage(
                                  image: AssetImage('assets/images/cc2.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              alignment: Alignment.bottomRight,
                              padding: const EdgeInsets.all(10),
                              child: Container(
                                height: 30,
                                width: 100,
                                decoration: BoxDecoration(
                                  color: AppColor.white,
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                  ),
                                ),
                                alignment: Alignment.center,
                                child: RatingBar.builder(
                                  initialRating: 4.5,
                                  minRating: 0.5,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  itemPadding: const EdgeInsets.symmetric(
                                      horizontal: 1.0),
                                  itemBuilder: (context, _) =>
                                      Icon(Icons.star, color: AppColor.primary),
                                  onRatingUpdate: (rating) {},
                                  itemSize: 16,
                                ),
                              ),
                            ),
                            const Gap(10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Coffee Culture',
                                  style: GoogleFonts.openSans(
                                    color: AppColor.black300,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  '\$5 - \$15',
                                  style: GoogleFonts.openSans(
                                    color: AppColor.primary,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              'The Ristorante Lounge',
                              style: GoogleFonts.openSans(
                                color: AppColor.gray,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            const Gap(30),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                _buildInfoCard(
                                  height,
                                  width,
                                  Icons.access_alarm_rounded,
                                  '10AM -11PM',
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Get.toNamed('/locationios');
                                  },
                                  child: _buildInfoCard(
                                    height,
                                    width,
                                    Icons.location_on_outlined,
                                    '3.5 KM',
                                  ),
                                ),
                                _buildInfoCard(
                                  height,
                                  width,
                                  Icons.phone_in_talk,
                                  '+91 455 878 9990',
                                ),
                              ],
                            ),
                            const Gap(10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                _buildInfoCard(
                                  height,
                                  width,
                                  Icons.moped_outlined,
                                  'DELIVERY',
                                ),
                                _buildInfoCard(
                                  height,
                                  width,
                                  Icons.ac_unit_outlined,
                                  'Air conditioning',
                                ),
                                _buildInfoCard(
                                  height,
                                  width,
                                  Icons.live_tv_outlined,
                                  'Live Screening',
                                ),
                              ],
                            ),
                            const Gap(10),
                            Container(
                              height: height / 20,
                              width: width / 3.2,
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(12),
                                  bottomRight: Radius.circular(12),
                                ),
                              ),
                              alignment: Alignment.center,
                              child: Text('Open Now'),
                            ),
                            const Gap(20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                _buildTabButton(height, width, 'About', 0),
                                _buildTabButton(height, width, 'Offers', 1),
                                _buildTabButton(height, width, 'Gallery', 2),
                                _buildTabButton(height, width, 'Menu', 3),
                              ],
                            ),
                            const Gap(20),
                            _buildTabContent(),
                          ],
                        ),
                      )
                    : Column(
                        key: ValueKey<int>(selectedIndex),
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              _buildTabButton(height, width, 'About', 0),
                              _buildTabButton(height, width, 'Offers', 1),
                              _buildTabButton(height, width, 'Gallery', 2),
                              _buildTabButton(height, width, 'Menu', 3),
                            ],
                          ),
                          const Gap(20),
                          _buildTabContent(),
                        ],
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoCard(
      double height, double width, IconData icon, String text) {
    return Container(
      height: height / 12,
      width: width / 4,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(icon, color: AppColor.primary),
          Text(
            text,
            textAlign: TextAlign.center,
            style: GoogleFonts.openSans(
              color: AppColor.black300,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTabButton(double height, double width, String text, int index) {
    bool isActive = selectedIndex == index;
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        height: height / 20,
        width: width / 4.8,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: isActive ? AppColor.primary : AppColor.white,
          border: Border.all(color: AppColor.primary),
        ),
        alignment: Alignment.center,
        child: Text(
          text,
          style: GoogleFonts.openSans(
            color: isActive ? AppColor.white : AppColor.primary,
          ),
        ),
      ),
    );
  }

  Widget _buildTabContent() {
    switch (selectedIndex) {
      case 1:
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildOfferCard(
              title: "Just Arrived",
              offer: "25% off",
              description: "Get Any Choco Lava at Rs.99\nworth Rs.121",
              discountPrice: "₹ 99/-",
              originalPrice: "₹ 121/-",
              validity: "All Days",
              timings: "Sat, 11:00 AM-11:30 PM",
            ),
            buildOfferCard(
              title: "Just Arrived",
              offer: "25% off",
              description: "Get Any Choco Lava at Rs.99\nworth Rs.121",
              discountPrice: "₹ 99/-",
              originalPrice: "₹ 121/-",
              validity: "All Days",
              timings: "Sat, 11:00 AM-11:30 PM",
            ),
          ],
        );
      case 2:
        return MasonryGridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemCount: images.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(4.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  images[index]['image'],
                ),
              ),
            );
          },
        );
      case 3:
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [],
        );
      default:
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text:
                        'Coffee Culture The Ristorante Lounge is located off road in the heart of the main highstreet in the city...',
                    style: GoogleFonts.openSans(
                      color: AppColor.black300,
                    ),
                  ),
                  TextSpan(
                    text: 'Read More',
                    style: GoogleFonts.openSans(
                      color: AppColor.primary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const Gap(10),
            Text(
              'Address',
              style: GoogleFonts.openSans(
                color: AppColor.black300,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            const Gap(5),
            Text(
              'Nr. Raj Mandir, City Light, \nSurat, Gujarat 395007',
              style: GoogleFonts.openSans(
                color: AppColor.black300,
              ),
            ),
            const Gap(10),
            Text(
              'Open Hours',
              style: GoogleFonts.openSans(
                color: AppColor.black300,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            const Gap(5),
            Text(
              'Everyday, 10AM - 11PM',
              style: GoogleFonts.openSans(
                color: AppColor.black300,
              ),
            ),
          ],
        );
    }
  }
}

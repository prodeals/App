import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pro_deals1/utils/colors.dart';

class restaurant_details extends StatelessWidget {
  const restaurant_details({super.key});

  @override
  Widget build(BuildContext context) {
    double hit = MediaQuery.of(context).size.height;
    double wid = MediaQuery.of(context).size.width;
    return CupertinoPageScaffold(
      child: Container(
        height: hit,
        width: wid,
        color: AppColor.white,
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gap(hit / 26),
              Container(
                height: hit / 3.8,
                width: wid,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage('assets/images/cc2.png'),
                    fit: BoxFit.fill,
                  ),
                ),
                alignment: Alignment.bottomRight,
                padding: EdgeInsets.all(10),
                child: Container(
                  height: 30,
                  width: 100,
                  decoration: BoxDecoration(
                    color: AppColor.white,
                    borderRadius: BorderRadius.only(
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
                    itemPadding: const EdgeInsets.symmetric(horizontal: 1.0),
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
                  Container(
                    height: hit / 12,
                    width: wid / 4,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.access_alarm_rounded,
                          color: AppColor.primary,
                        ),
                        Text(
                          '10AM -11PM',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.openSans(
                            color: AppColor.black300,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: hit / 12,
                    width: wid / 4,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.location_on_outlined,
                          color: AppColor.primary,
                        ),
                        Text(
                          '3.5 KM',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.openSans(
                            color: AppColor.black300,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: hit / 12,
                    width: wid / 4,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.phone_in_talk,
                          color: AppColor.primary,
                        ),
                        Text(
                          '+91 455 878 9990',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.openSans(
                            color: AppColor.black300,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const Gap(10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: hit / 12,
                    width: wid / 4,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.moped_outlined,
                          color: AppColor.primary,
                        ),
                        Text(
                          'DELIVERY',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.openSans(
                            color: AppColor.black300,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: hit / 12,
                    width: wid / 4,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.ac_unit_outlined,
                          color: AppColor.primary,
                        ),
                        Text(
                          'Air conditioning',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.openSans(
                            color: AppColor.black300,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: hit / 12,
                    width: wid / 4,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.live_tv_outlined,
                          color: AppColor.primary,
                        ),
                        Text(
                          'Live Screening',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.openSans(
                            color: AppColor.black300,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const Gap(10),
              // todo: if shop is open then open now and if close then close.
              Container(
                height: hit / 20,
                width: wid / 3.2,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.only(
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
                  Container(
                    height: hit / 20,
                    width: wid / 4.8,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: AppColor.primary,
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      'About',
                      style: GoogleFonts.openSans(color: AppColor.black300),
                    ),
                  ),
                  Container(
                    height: hit / 20,
                    width: wid / 4.8,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: AppColor.primary),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      'Menu',
                      style: GoogleFonts.openSans(color: AppColor.black300),
                    ),
                  ),
                  Container(
                    height: hit / 20,
                    width: wid / 4.8,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: AppColor.primary),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      'Offers',
                      style: GoogleFonts.openSans(color: AppColor.black300),
                    ),
                  ),
                  Container(
                    height: hit / 20,
                    width: wid / 4.8,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: AppColor.primary),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      'Gallary',
                      style: GoogleFonts.openSans(color: AppColor.black300),
                    ),
                  ),
                ],
              ),
              const Gap(20),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text:
                          'Coffe Culture The Ristorante Lounge is located of road in the heart of the heart of the main highstreet in the city...',
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
              Row(
                children: [
                  Text(
                    'Cuisines :',
                    style: GoogleFonts.openSans(
                      color: AppColor.primary,
                    ),
                  ),
                  const Gap(10),
                  Text(
                    'Cafe, Mexican, Fusion',
                    style: GoogleFonts.openSans(color: AppColor.gray),
                  ),
                ],
              ),
              const Gap(10),
              Row(
                children: [
                  Text(
                    'Special Diets :',
                    style: GoogleFonts.openSans(color: AppColor.primary),
                  ),
                  const Gap(10),
                  Text(
                    'Vegetarian',
                    style: GoogleFonts.openSans(color: AppColor.gray),
                  ),
                ],
              ),
              const Gap(10),
              Text(
                'top Selling Iteams :',
                style: GoogleFonts.openSans(color: AppColor.primary),
              ),
              const Gap(10),
              Text(
                'coffees, unique mocktails, pizzas...',
                style: GoogleFonts.openSans(color: AppColor.gray),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

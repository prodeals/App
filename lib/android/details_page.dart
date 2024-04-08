import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pro_deals1/utils/colors.dart';

class details extends StatelessWidget {
  const details({super.key});

  @override
  Widget build(BuildContext context) {
    double hit = MediaQuery.of(context).size.height;
    double wid = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Details'),
        centerTitle: true,
        backgroundColor: AppColor.primary,
      ),
      body: Container(
        height: hit,
        width: wid,
        // color: AppColor.gray.withOpacity(0.01),
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  height: hit / 3,
                  width: wid,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/burger2.png'),
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hamburger',
                        style: GoogleFonts.openSans(color: AppColor.gray),
                      ),
                      Text(
                        'Delicious Burger',
                        style: GoogleFonts.openSans(
                          fontWeight: FontWeight.bold,
                          color: AppColor.black300,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Container(
                    height: hit / 17,
                    width: wid / 3,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColor.gray.withOpacity(0.1),
                    ),
                    padding: EdgeInsets.all(6),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: wid / 10,
                          width: wid / 10,
                          decoration: BoxDecoration(
                            color: AppColor.white,
                            borderRadius: BorderRadius.circular(6),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 2,
                                offset: Offset(2, 2),
                              ),
                            ],
                          ),
                          child: Icon(Icons.remove),
                        ),
                        Text('1'),
                        Container(
                          height: wid / 10,
                          width: wid / 10,
                          decoration: BoxDecoration(
                            color: AppColor.white,
                            borderRadius: BorderRadius.circular(6),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 2,
                                offset: Offset(2, 2),
                              ),
                            ],
                          ),
                          child: Icon(
                            Icons.add,
                            color: AppColor.primary,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Gap(10),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '\$5.10',
                    style: GoogleFonts.openSans(
                      color: AppColor.primary,
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                    ),
                  ),
                  const Gap(10),
                  Text(
                    '(\$7.0)',
                    style: GoogleFonts.openSans(
                      color: Colors.red,
                    ),
                  )
                ],
              ),
              const Gap(10),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    '4.3',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  RatingBar.builder(
                    initialRating: 4.3,
                    minRating: 0.5,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemPadding: const EdgeInsets.symmetric(horizontal: 1.0),
                    itemBuilder: (context, _) =>
                        Icon(Icons.star, color: AppColor.primary),
                    onRatingUpdate: (rating) {},
                    itemSize: 22,
                  ),
                  const Text(
                    '(89 Reviews)',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const Gap(10),
              Text(
                'Description',
                style: GoogleFonts.openSans(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Gap(10),
              const Text(
                'Real cheese made from mozzarella on top of our signature pizza sauce with your choice of crust, then baked to a golden brown...Read More',
              ),
              const Gap(10),
              Text(
                'Ingradiatns',
                style: GoogleFonts.openSans(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Gap(10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Container(
                        height: wid / 5,
                        width: wid / 5,
                        decoration: BoxDecoration(
                          color: Colors.purpleAccent.shade100,
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                      const Text('Cheese'),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: wid / 5,
                        width: wid / 5,
                        decoration: BoxDecoration(
                          color: Colors.orangeAccent.shade100,
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                      const Text('Onion'),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: wid / 5,
                        width: wid / 5,
                        decoration: BoxDecoration(
                          color: Colors.blueAccent.shade100,
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                      const Text('Capsicum'),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: wid / 5,
                        width: wid / 5,
                        decoration: BoxDecoration(
                          color: Colors.red.shade100,
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                      const Text('Tomato'),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        width: wid,
        height: hit / 14,
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '2 items',
                  style: GoogleFonts.openSans(
                    color: AppColor.gray,
                  ),
                ),
                Text(
                  '\$ 10.20',
                  style: GoogleFonts.openSans(
                    color: AppColor.black300,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            Center(
              child: Text(
                '(\$ 15.20)',
                style: GoogleFonts.openSans(
                  color: Colors.red.withOpacity(0.6),
                  fontSize: 18,
                ),
              ),
            ),
            const Gap(10),
            Container(
              height: hit / 16,
              width: wid / 2.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColor.primary,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Icon(Icons.shopping_cart_rounded),
                  Text(
                    'Add To Cart',
                    style: GoogleFonts.openSans(
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
//CarouselSlider(
//                     options: CarouselOptions(
//                       disableCenter: false,
//                       pageSnapping: true,
//                       // animateToClosest: false,
//                       enableInfiniteScroll: false,
//                     ),
//                     items: [1, 2, 3, 4, 5].map((i) {
//                       return Builder(
//                         builder: (BuildContext context) {
//                           return Container(
//                               width: MediaQuery.of(context).size.width,
//                               margin: EdgeInsets.symmetric(horizontal: 5.0),
//                               decoration: BoxDecoration(color: Colors.amber),
//                               child: Text(
//                                 'text $i',
//                                 style: TextStyle(fontSize: 16.0),
//                               ));
//                         },
//                       );
//                     }).toList(),
//                   )

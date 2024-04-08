import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pro_deals1/utils/colors.dart';

class shope_page extends StatefulWidget {
  const shope_page({super.key});

  @override
  State<shope_page> createState() => _shope_pageState();
}

class _shope_pageState extends State<shope_page>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  PageController page = PageController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    double hit = MediaQuery.of(context).size.height;
    double wid = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shope'),
        centerTitle: true,
        backgroundColor: AppColor.primary,
      ),
      body: SizedBox(
        height: hit,
        width: wid,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 3,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: hit / 2.3,
                      width: wid,
                      child: Stack(
                        children: [
                          Container(
                            height: hit / 3,
                            width: wid,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/CC.png'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            right: 16,
                            child: Container(
                              height: hit / 4,
                              width: wid - 32,
                              decoration: BoxDecoration(
                                color: AppColor.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 3,
                                    color: AppColor.gray.withOpacity(0.5),
                                    offset: const Offset(1, 1),
                                  ),
                                ],
                              ),
                              padding: const EdgeInsets.all(6),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Cofee Culture',
                                        style: GoogleFonts.openSans(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                        ),
                                      ),
                                      const Text('- Range ₹200 - ₹400'),
                                    ],
                                  ),
                                  Text(
                                    'The Ristorante Lounge',
                                    style: GoogleFonts.openSans(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        height: 30,
                                        width: 100,
                                        decoration: BoxDecoration(
                                          color: Colors.green,
                                          borderRadius:
                                              BorderRadius.circular(4),
                                        ),
                                        alignment: Alignment.center,
                                        child: Text(
                                          'Open Now',
                                          style: GoogleFonts.openSans(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 16,
                                            color: AppColor.white,
                                          ),
                                        ),
                                      ),
                                      const Gap(4),
                                      Text(
                                        '10:00 AM -11:00 PM',
                                        style: GoogleFonts.openSans(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16,
                                        ),
                                      )
                                    ],
                                  ),
                                  const Row(
                                    children: [
                                      Icon(Icons.location_on),
                                      Gap(4),
                                      Text('Khodiyar Nivas, Vesu, Surat'),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.wifi_calling_3_sharp,
                                        color: AppColor.primary,
                                      ),
                                      const Gap(4),
                                      const Text('+91 223 234 6789'),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Gap(10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: TabBar(
                        onTap: (value) {
                          page.jumpToPage(value);
                        },
                        controller: tabController,
                        labelColor: AppColor.primary,
                        dividerColor: Colors.transparent,
                        indicatorColor: AppColor.primary,
                        tabs: [
                          Tab(
                            text: 'About',
                          ),
                          Tab(
                            text: 'Menu',
                          ),
                          Tab(
                            text: 'Offers',
                          ),
                          Tab(
                            text: 'Gallary',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Gap(10),
            Expanded(
              flex: 2,
              child: PageView(
                controller: page,
                onPageChanged: (value) {
                  tabController.index = value;
                },
                children: [
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: SizedBox(
                            width: wid,
                            child: const Text(
                                'Coffee Culture The Ristorante Lounge is located off road in the heart of the heart of the main highstreet in the city...Read More '),
                          ),
                        ),
                        const Gap(10),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Text(
                            'Cuisines :',
                            style: GoogleFonts.openSans(
                              color: AppColor.primary,
                            ),
                          ),
                        ),
                        const Gap(10),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Text(
                            'Cafe, Mexican, Fusion',
                            style: GoogleFonts.openSans(
                                // color: AppColor.primary,
                                ),
                          ),
                        ),
                        const Gap(10),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Text(
                            'Special Diets :',
                            style: GoogleFonts.openSans(
                              color: AppColor.primary,
                            ),
                          ),
                        ),
                        const Gap(10),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Text(
                            'Vegetarian',
                            style: GoogleFonts.openSans(
                                // color: AppColor.primary,
                                ),
                          ),
                        ),
                        const Gap(10),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Text(
                            'Best Selling Iteams :',
                            style: GoogleFonts.openSans(
                              color: AppColor.primary,
                            ),
                          ),
                        ),
                        const Gap(10),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Text(
                            'coffees, unique mocktails, pizzas',
                            style: GoogleFonts.openSans(
                                // color: AppColor.primary,
                                ),
                          ),
                        ),
                        const Gap(10),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Text(
                            'Features :',
                            style: GoogleFonts.openSans(
                              color: AppColor.primary,
                            ),
                          ),
                        ),
                        const Gap(10),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Row(
                            children: [
                              Container(
                                height: 30,
                                width: wid / 2 - 16,
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.delivery_dining_sharp,
                                      color: AppColor.primary,
                                    ),
                                    const Gap(10),
                                    Text('Delivery'),
                                  ],
                                ),
                              ),
                              Container(
                                height: 30,
                                width: wid / 2 - 16,
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.ac_unit,
                                      color: AppColor.primary,
                                    ),
                                    const Gap(10),
                                    Text('Air Conditioned'),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Gap(10),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Container(
                            height: 30,
                            width: wid / 2 - 16,
                            child: Row(
                              children: [
                                Icon(
                                  Icons.tv,
                                  color: AppColor.primary,
                                ),
                                const Gap(10),
                                Text('Live Screening'),
                              ],
                            ),
                          ),
                        ),
                        const Gap(10),
                      ],
                      crossAxisAlignment: CrossAxisAlignment.start,
                    ),
                  ),
                  MasonryGridView(
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    children: [
                      Container(
                        height: 230,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColor.white,
                          boxShadow: [
                            // BoxShadow(
                            //   color: AppColor.gray,
                            //   blurRadius: 2,
                            //   offset: const Offset(1, 1),
                            // ),
                          ],
                        ),
                        child: Container(
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                'assets/images/menu1.png',
                              ),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 230,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColor.white,
                          boxShadow: [
                            // BoxShadow(
                            //   color: AppColor.gray,
                            //   blurRadius: 2,
                            //   offset: const Offset(1, 1),
                            // ),
                          ],
                        ),
                        child: Container(
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                'assets/images/menu2.png',
                              ),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 230,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColor.white,
                          boxShadow: [
                            // BoxShadow(
                            //   color: AppColor.gray,
                            //   blurRadius: 2,
                            //   offset: const Offset(1, 1),
                            // ),
                          ],
                        ),
                        child: Container(
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                'assets/images/menu3.png',
                              ),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SingleChildScrollView(
                    child: Container(
                      height: 300,
                      width: wid,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ListTile(
                            dense: true,
                            leading: Container(
                              height: 80,
                              width: 100,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/images/cc2.png'),
                                ),
                              ),
                            ),
                            title: Text('Coffee Culture'),
                            subtitle: Column(
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.location_on,
                                      size: 14,
                                    ),
                                    const Gap(6),
                                    Text(
                                      'Vesu',
                                      style: TextStyle(fontSize: 14),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      '4.5',
                                      style: TextStyle(fontSize: 14),
                                    ),
                                    const Gap(4),
                                    RatingBar.builder(
                                      initialRating: 4.3,
                                      minRating: 0.5,
                                      direction: Axis.horizontal,
                                      allowHalfRating: true,
                                      itemCount: 5,
                                      itemPadding: const EdgeInsets.symmetric(
                                          horizontal: 1.0),
                                      itemBuilder: (context, _) => Icon(
                                          Icons.star,
                                          color: AppColor.primary),
                                      onRatingUpdate: (rating) {},
                                      itemSize: 18,
                                    ),
                                    const Gap(4),
                                    Text(
                                      '(205 Reviews)',
                                      style: TextStyle(fontSize: 10),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Text(
                            'Rs.250 Off On A Minimum\nBilling Of Rs.1000',
                            textAlign: TextAlign.start,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

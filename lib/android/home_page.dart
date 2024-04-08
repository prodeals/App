import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pro_deals1/utils/colors.dart';
import 'package:pro_deals1/utils/constunt.dart';

import '../widget/android_drawer.dart';

class home_page extends StatelessWidget {
  const home_page({super.key});

  @override
  Widget build(BuildContext context) {
    double hit = MediaQuery.of(context).size.height;
    double wid = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text('Surat'), Icon(Icons.keyboard_arrow_down)],
        ),
        backgroundColor: AppColor.primary,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Get.toNamed('/Search');
            },
            icon: const Icon(Icons.search_rounded),
          ),
        ],
      ),
      drawer: drawer(hit, wid),
      body: SizedBox(
        height: hit,
        width: wid,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: hit / 3.4,
                width: wid,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/image.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              const Gap(20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Category',
                      style: GoogleFonts.openSans(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Get.toNamed('/Categories');
                      },
                      child: Text(
                        'See All',
                        style: GoogleFonts.openSans(
                          fontSize: 14,
                          color: AppColor.primary,
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Gap(20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: hit / 6,
                      width: wid / 3.6,
                      decoration: BoxDecoration(
                        color: AppColor.white,
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 1,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Fruits &\nVegetables',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.openSans(
                                  color: const Color(0xff477D32),
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            flex: 2,
                          ),
                          Expanded(
                            flex: 3,
                            child: SizedBox(
                              height: (hit / 6) / 2,
                              width: wid / 3.6,
                              child: Stack(
                                children: [
                                  Positioned(
                                    child: SizedBox(
                                      height: (hit / 6) / 2.6,
                                      width: wid / 3.6,
                                      child: Image.asset(
                                        'assets/images/Fruits.png',
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    bottom: 0,
                                  ),
                                  Positioned(
                                    top: 8,
                                    child: Container(
                                      height: (hit / 6) / 3.4,
                                      width: wid / 3.6,
                                      decoration: BoxDecoration(
                                        color: AppColor.white,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 10,
                                    child: Container(
                                      height: (hit / 6) / 3.9,
                                      width: wid / 3.6,
                                      padding: const EdgeInsets.all(6),
                                      child: SvgPicture.asset(
                                          'assets/images/svg/vegetables.svg'),
                                      decoration: const BoxDecoration(
                                        color: Color(0xff477D32),
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: hit / 6,
                      width: wid / 3.6,
                      decoration: BoxDecoration(
                        color: AppColor.white,
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 1,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Dairy &\nBakery',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.openSans(
                                  color: const Color(0xffCF8009),
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            flex: 2,
                          ),
                          Expanded(
                            flex: 3,
                            child: SizedBox(
                              height: (hit / 6) / 2,
                              width: wid / 3.6,
                              child: Stack(
                                children: [
                                  Positioned(
                                    child: SizedBox(
                                      height: (hit / 6) / 2.6,
                                      width: wid / 3.6,
                                      child: Image.asset(
                                        'assets/images/Bakery.png',
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    bottom: 0,
                                  ),
                                  Positioned(
                                    top: 8,
                                    child: Container(
                                      height: (hit / 6) / 3.4,
                                      width: wid / 3.6,
                                      decoration: BoxDecoration(
                                        color: AppColor.white,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 10,
                                    child: Container(
                                      height: (hit / 6) / 3.9,
                                      width: wid / 3.6,
                                      padding: const EdgeInsets.all(6),
                                      alignment: Alignment.center,
                                      child: SvgPicture.asset(
                                          'assets/images/svg/Dairy.svg'),
                                      decoration: const BoxDecoration(
                                        color: Color(0xffCF8009),
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: hit / 6,
                      width: wid / 3.6,
                      decoration: BoxDecoration(
                        color: AppColor.white,
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 1,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Beverages',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.openSans(
                                  color: const Color(0xff636B8A),
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            flex: 2,
                          ),
                          Expanded(
                            flex: 3,
                            child: SizedBox(
                              height: (hit / 6) / 2,
                              width: wid / 3.6,
                              child: Stack(
                                children: [
                                  Positioned(
                                    child: SizedBox(
                                      height: (hit / 6) / 2.6,
                                      width: wid / 3.6,
                                      child: Image.asset(
                                        'assets/images/Beverages.png',
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    bottom: 0,
                                  ),
                                  Positioned(
                                    top: 8,
                                    child: Container(
                                      height: (hit / 6) / 3.4,
                                      width: wid / 3.6,
                                      decoration: BoxDecoration(
                                        color: AppColor.white,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 10,
                                    child: Container(
                                      height: (hit / 6) / 3.9,
                                      width: wid / 3.6,
                                      padding: const EdgeInsets.all(6),
                                      decoration: const BoxDecoration(
                                        color: Color(0xff636B8A),
                                        shape: BoxShape.circle,
                                      ),
                                      child: SvgPicture.asset(
                                          'assets/images/svg/beverages_cup.svg'),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const Gap(10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: hit / 6,
                      width: wid / 3.6,
                      decoration: BoxDecoration(
                        color: AppColor.white,
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 1,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Fruits &\nVegetables',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.openSans(
                                  color: const Color(0xffB34F2D),
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: SizedBox(
                              height: (hit / 6) / 2,
                              width: wid / 3.6,
                              child: Stack(
                                children: [
                                  Positioned(
                                    bottom: 0,
                                    child: SizedBox(
                                      height: (hit / 6) / 2.6,
                                      width: wid / 3.6,
                                      child: Image.asset(
                                        'assets/images/Snacks.png',
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 8,
                                    child: Container(
                                      height: (hit / 6) / 3.4,
                                      width: wid / 3.6,
                                      decoration: BoxDecoration(
                                        color: AppColor.white,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 10,
                                    child: Container(
                                      height: (hit / 6) / 3.9,
                                      width: wid / 3.6,
                                      padding: const EdgeInsets.all(6),
                                      decoration: const BoxDecoration(
                                        color: Color(0xffB34F2D),
                                        shape: BoxShape.circle,
                                      ),
                                      child: SvgPicture.asset(
                                          'assets/images/svg/BrandedFoods.svg'),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: hit / 6,
                      width: wid / 3.6,
                      decoration: BoxDecoration(
                        color: AppColor.white,
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 1,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Personal\nCare',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.openSans(
                                  color: const Color(0xff945DA1),
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: SizedBox(
                              height: (hit / 6) / 2,
                              width: wid / 3.6,
                              child: Stack(
                                children: [
                                  Positioned(
                                    bottom: 0,
                                    child: SizedBox(
                                      height: (hit / 6) / 2.6,
                                      width: wid / 3.6,
                                      child: Image.asset(
                                        'assets/images/Personal_Care.png',
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 8,
                                    child: Container(
                                      height: (hit / 6) / 3.4,
                                      width: wid / 3.6,
                                      decoration: BoxDecoration(
                                        color: AppColor.white,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 10,
                                    child: Container(
                                      height: (hit / 6) / 3.9,
                                      width: wid / 3.6,
                                      padding: const EdgeInsets.all(6),
                                      alignment: Alignment.center,
                                      decoration: const BoxDecoration(
                                        color: Color(0xff945DA1),
                                        shape: BoxShape.circle,
                                      ),
                                      child: SvgPicture.asset(
                                          'assets/images/svg/PersonalCare.svg'),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: hit / 6,
                      width: wid / 3.6,
                      decoration: BoxDecoration(
                        color: AppColor.white,
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 1,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Fashion &\nlifestyle',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.openSans(
                                  color: const Color(0xff7D7049),
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: SizedBox(
                              height: (hit / 6) / 2,
                              width: wid / 3.6,
                              child: Stack(
                                children: [
                                  Positioned(
                                    bottom: 0,
                                    child: SizedBox(
                                      height: (hit / 6) / 2.6,
                                      width: wid / 3.6,
                                      child: Image.asset(
                                        'assets/images/Fashion.png',
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 8,
                                    child: Container(
                                      height: (hit / 6) / 3.4,
                                      width: wid / 3.6,
                                      decoration: BoxDecoration(
                                        color: AppColor.white,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 10,
                                    child: Container(
                                      height: (hit / 6) / 3.9,
                                      width: wid / 3.6,
                                      padding: const EdgeInsets.all(6),
                                      decoration: const BoxDecoration(
                                        color: Color(0xff7D7049),
                                        shape: BoxShape.circle,
                                      ),
                                      child: SvgPicture.asset(
                                          'assets/images/svg/lifestyle.svg'),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const Gap(30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Container(
                  height: 160,
                  width: wid,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      image: AssetImage('assets/images/Rectangle_backg.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Discover',
                            style: GoogleFonts.openSans(
                              fontSize: 16,
                              color: AppColor.white,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          const Gap(10),
                          Text(
                            'Best Buffet Launch\nOf The Day',
                            style: GoogleFonts.openSans(
                              fontSize: 16,
                              color: AppColor.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const Gap(10),
                          Container(
                            height: 30,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: AppColor.primary,
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              'Try too',
                              style: GoogleFonts.openSans(
                                fontSize: 14,
                                color: AppColor.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 130,
                        width: 150,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/cake_image.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Gap(30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Popular Items',
                      style: GoogleFonts.openSans(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'See All',
                      style: GoogleFonts.openSans(
                        fontSize: 14,
                        color: AppColor.primary,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const Gap(20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: MasonryGridView(
                  shrinkWrap: true,
                  gridDelegate:
                      const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  children: [
                    InkWell(
                      onTap: () {
                        Get.toNamed('/details');
                      },
                      child: Container(
                        height: 230,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColor.white,
                          boxShadow: [
                            BoxShadow(
                              color: AppColor.gray,
                              blurRadius: 2,
                              offset: const Offset(1, 1),
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Align(
                              alignment: Alignment.topRight,
                              child: SvgPicture.asset(
                                  'assets/icons/like_icon.svg'),
                            ),
                            Expanded(
                              flex: 3,
                              child: Container(
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      'https://img.freepik.com/free-photo/tasty-burger-isolated-white-background-fresh-hamburger-fastfood-with-beef-cheese_90220-1063.jpg?size=338&ext=jpg&ga=GA1.1.1930204137.1711497600&semt=sph',
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            const Gap(2),
                            Expanded(
                              flex: 2,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Hamburger',
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w300,
                                      color: AppColor.gray,
                                    ),
                                  ),
                                  Text(
                                    'Delicious Burger',
                                    overflow: TextOverflow.ellipsis,
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      color: AppColor.black300,
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        '\$5.10',
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: AppColor.primary,
                                        ),
                                      ),
                                      Container(
                                        height: 20,
                                        width: 50,
                                        decoration: BoxDecoration(
                                          color: AppColor.primary,
                                          borderRadius:
                                              BorderRadius.circular(6),
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.star,
                                              size: 16,
                                            ),
                                            Text('4.5'),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Gap(20)
            ],
          ),
        ),
      ),
      floatingActionButton: Theme(
        data: ThemeData(
          useMaterial3: false,
        ),
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: AppColor.primary,
          child: SvgPicture.asset('assets/icons/Vector.svg'),
        ),
      ),
    );
  }
}

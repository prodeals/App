import 'package:anydrawer/anydrawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pro_deals1/utils/colors.dart';

class ios_home extends StatelessWidget {
  const ios_home({super.key});

  @override
  Widget build(BuildContext context) {
    AnyDrawerController drawerController = AnyDrawerController();
    double hit = MediaQuery.of(context).size.height;
    double wid = MediaQuery.of(context).size.width;
    TextEditingController search = TextEditingController();
    return CupertinoPageScaffold(
      backgroundColor: AppColor.white,
      resizeToAvoidBottomInset: false,
      child: Container(
        height: hit,
        width: wid,
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    showDrawer(
                      context,
                      builder: (context) {
                        return const Center(
                          child: Text('Left Drawer'),
                        );
                      },
                      config: const DrawerConfig(
                        side: DrawerSide.right,
                        closeOnClickOutside: true,
                        closeOnEscapeKey: true,
                        closeOnResume: true,
                        // (Android only)
                        closeOnBackButton: true,
                        // (Requires a route navigator)
                        backdropOpacity: 0.5,
                        borderRadius: 24,
                      ),
                      onOpen: () {
                        // Optional callback when the drawer is opened
                      },
                      onClose: () {
                        // Optional callback when the drawer is closed
                      },
                      controller:
                          drawerController, // Optional controller to programmatically close the drawer
                    );
                  },
                  child: SvgPicture.asset('assets/icons/manu.svg'),
                ),
                Row(
                  children: [
                    SvgPicture.asset('assets/icons/location.svg'),
                    Text(
                      'Surat',
                      style: GoogleFonts.openSans(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: AppColor.black300,
                      ),
                    ),
                  ],
                ),
                const CircleAvatar(
                  maxRadius: 20,
                ),
              ],
            ),
            const Gap(20),
            //
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Let’s eat',
                      style: GoogleFonts.openSans(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: AppColor.black300,
                      ),
                    ),
                    Text(
                      'Nutritious food.',
                      style: GoogleFonts.openSans(
                        fontWeight: FontWeight.w400,
                        fontSize: 24,
                        color: AppColor.black300,
                      ),
                    ),
                    const Gap(20),
                    Row(
                      children: [
                        SizedBox(
                          width: wid - 90,
                          child: CupertinoTextField(
                            prefix: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Icon(
                                Icons.search_rounded,
                                color: AppColor.black300,
                              ),
                            ),
                            placeholder: 'Search food...',
                            placeholderStyle: GoogleFonts.openSans(
                              color: AppColor.black300,
                            ),
                            style: GoogleFonts.openSans(
                              color: AppColor.black300,
                            ),
                            controller: search,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 3,
                                    color: AppColor.gray.withOpacity(0.4),
                                    offset: const Offset(0, 0)),
                              ],
                              color: AppColor.white.withOpacity(1),
                              // border: Border.all(
                              //   color: AppColor.black300.withOpacity(0.3),
                              // ),
                            ),
                          ),
                        ),
                        const Gap(8),
                        GestureDetector(
                          onTap: () {
                            Get.toNamed('/ios_filter');
                          },
                          child: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              color: AppColor.primary,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Icon(
                              Icons.filter_alt_outlined,
                              color: AppColor.white,
                              size: 30,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Gap(30),
                    Container(
                      height: 151,
                      width: wid,
                      decoration: BoxDecoration(
                        color: const Color(0xff091219),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Stack(
                        children: [
                          const Positioned(
                            right: 0,
                            child: CustomShape(),
                          ),
                          Positioned(
                            right: 20,
                            bottom: 10,
                            child: Image.asset('assets/images/fruts.png'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(14.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'UPTO',
                                  style: GoogleFonts.openSans(
                                    color: AppColor.white,
                                    fontSize: 14,
                                  ),
                                ),
                                Gap(2),
                                Text(
                                  '30% OFF',
                                  style: GoogleFonts.openSans(
                                    color: AppColor.primary,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const Gap(16),
                                const Text('On your first order'),
                                const Gap(10),
                                Container(
                                  height: 30,
                                  width: 90,
                                  decoration: BoxDecoration(
                                    color: AppColor.white,
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Order Now',
                                    style: GoogleFonts.openSans(
                                      color: AppColor.black300,
                                      fontSize: 14,
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Categories',
                          style: GoogleFonts.openSans(
                            color: AppColor.black300,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.toNamed('/ios_category');
                          },
                          child: Text(
                            'See All',
                            style: GoogleFonts.openSans(
                              color: AppColor.primary,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Gap(20),
                    const Material(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Chip(
                              label: Text('Fast Food'),
                            ),
                            Gap(6),
                            Chip(
                              label: Text('Fruits'),
                            ),
                            Gap(6),
                            Chip(
                              label: Text('Vegetables'),
                            ),
                            Gap(6),
                            Chip(
                              label: Text('Fast Food'),
                            ),
                            Gap(6),
                          ],
                        ),
                      ),
                    ),
                    const Gap(30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Popular Items',
                          style: GoogleFonts.openSans(
                            color: AppColor.black300,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'See All',
                          style: GoogleFonts.openSans(
                            color: AppColor.primary,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const Gap(20),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          SizedBox(
                            height: hit / 5,
                            width: wid / 2.5,
                            child: Stack(
                              children: [
                                Positioned(
                                  bottom: 2,
                                  left: 0,
                                  child: Container(
                                    height: hit / 6.5,
                                    width: wid / 3,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: AppColor.white,
                                      boxShadow: [
                                        BoxShadow(
                                          offset: const Offset(1, 1),
                                          blurRadius: 2,
                                          color: AppColor.gray.withOpacity(0.4),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 0,
                                  right: 0,
                                  child: Container(
                                    height: wid / 3.4,
                                    width: wid / 3.4,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/pizza2.png'),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 4,
                                  left: 4,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Tomato Pizza',
                                        style: GoogleFonts.openSans(
                                          color: AppColor.black300,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const Gap(6),
                                      Row(
                                        children: [
                                          Text(
                                            '\$3.8',
                                            style: GoogleFonts.openSans(
                                              fontSize: 16,
                                              color: AppColor.black300,
                                            ),
                                          ),
                                          const Gap(2),
                                          RatingBar.builder(
                                            initialRating: 4.5,
                                            minRating: 0.5,
                                            direction: Axis.horizontal,
                                            allowHalfRating: true,
                                            itemCount: 5,
                                            itemPadding:
                                                const EdgeInsets.symmetric(
                                                    horizontal: 1.0),
                                            itemBuilder: (context, _) => Icon(
                                                Icons.star,
                                                color: AppColor.primary),
                                            onRatingUpdate: (rating) {},
                                            itemSize: 14,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Gap(6),
                          SizedBox(
                            height: hit / 5,
                            width: wid / 2.5,
                            child: Stack(
                              children: [
                                Positioned(
                                  bottom: 2,
                                  left: 0,
                                  child: Container(
                                    height: hit / 6.5,
                                    width: wid / 3,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: AppColor.white,
                                      boxShadow: [
                                        BoxShadow(
                                          offset: const Offset(1, 1),
                                          blurRadius: 2,
                                          color: AppColor.gray.withOpacity(0.4),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 0,
                                  right: 0,
                                  child: Container(
                                    height: wid / 3.4,
                                    width: wid / 3.4,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/burger3.png'),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 4,
                                  left: 4,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Burger',
                                        style: GoogleFonts.openSans(
                                          color: AppColor.black300,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const Gap(6),
                                      Row(
                                        children: [
                                          Text(
                                            '\$3.8',
                                            style: GoogleFonts.openSans(
                                              fontSize: 16,
                                              color: AppColor.black300,
                                            ),
                                          ),
                                          const Gap(2),
                                          RatingBar.builder(
                                            initialRating: 4.5,
                                            minRating: 0.5,
                                            direction: Axis.horizontal,
                                            allowHalfRating: true,
                                            itemCount: 5,
                                            itemPadding:
                                                const EdgeInsets.symmetric(
                                                    horizontal: 1.0),
                                            itemBuilder: (context, _) => Icon(
                                                Icons.star,
                                                color: AppColor.primary),
                                            onRatingUpdate: (rating) {},
                                            itemSize: 14,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Gap(6),
                          SizedBox(
                            height: hit / 5,
                            width: wid / 2.5,
                            child: Stack(
                              children: [
                                Positioned(
                                  bottom: 2,
                                  left: 0,
                                  child: Container(
                                    height: hit / 6.5,
                                    width: wid / 3,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: AppColor.white,
                                      boxShadow: [
                                        BoxShadow(
                                          offset: const Offset(1, 1),
                                          blurRadius: 2,
                                          color: AppColor.gray.withOpacity(0.4),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 0,
                                  right: 0,
                                  child: Container(
                                    height: wid / 3.4,
                                    width: wid / 3.4,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/pizza2.png'),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 4,
                                  left: 4,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Frenc',
                                        style: GoogleFonts.openSans(
                                          color: AppColor.black300,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const Gap(6),
                                      Row(
                                        children: [
                                          Text(
                                            '\$3.8',
                                            style: GoogleFonts.openSans(
                                              fontSize: 16,
                                              color: AppColor.black300,
                                            ),
                                          ),
                                          const Gap(2),
                                          RatingBar.builder(
                                            initialRating: 5,
                                            minRating: 0.5,
                                            direction: Axis.horizontal,
                                            allowHalfRating: true,
                                            itemCount: 5,
                                            itemPadding:
                                                const EdgeInsets.symmetric(
                                                    horizontal: 1.0),
                                            itemBuilder: (context, _) => Icon(
                                                Icons.star,
                                                color: AppColor.primary),
                                            onRatingUpdate: (rating) {},
                                            itemSize: 14,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Gap(20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Top Restaurants',
                          style: GoogleFonts.openSans(
                            color: AppColor.black300,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'See All',
                          style: GoogleFonts.openSans(
                            color: AppColor.primary,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const Gap(20),
                    // todo: Top Restaurants.
                    Center(
                      child: Container(
                        height: hit / 9.4,
                        width: wid - 34,
                        decoration: BoxDecoration(
                          color: AppColor.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: AppColor.gray.withOpacity(0.4),
                              blurRadius: 1,
                              offset: const Offset(0, 1),
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            children: [
                              Container(
                                width: wid / 4,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  image: const DecorationImage(
                                    image: AssetImage('assets/images/cc2.png'),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              const Gap(10),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Coffee Culture',
                                    style: GoogleFonts.openSans(
                                      color: AppColor.black300,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Row(
                                        children: [
                                          SvgPicture.asset(
                                              'assets/icons/location_gray.svg'),
                                          const Gap(6),
                                          Text(
                                            'Vesu',
                                            style: GoogleFonts.openSans(
                                              color: AppColor.black300,
                                              fontSize: 14,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const Gap(8),
                                      Row(
                                        children: [
                                          SvgPicture.asset(
                                              'assets/icons/clock_gray.svg'),
                                          const Gap(6),
                                          Text(
                                            '30 minutes',
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
                              const Gap(8),
                              Container(
                                width: 1,
                                color: Colors.grey.withOpacity(0.5),
                              ),
                              const Gap(8),
                              Container(
                                width: wid / 11,
                                height: hit,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset('assets/icons/Star.svg'),
                                    Text(
                                      '4.5',
                                      style: GoogleFonts.openSans(
                                        color: AppColor.black300,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const Gap(20),
                    Center(
                      child: Container(
                        height: hit / 9.4,
                        width: wid - 34,
                        decoration: BoxDecoration(
                          color: AppColor.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: AppColor.gray.withOpacity(0.4),
                              blurRadius: 1,
                              offset: Offset(0, 1),
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            children: [
                              Container(
                                width: wid / 4,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  image: const DecorationImage(
                                    image: AssetImage(
                                        'assets/images/DotiwalaBakery.png'),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              const Gap(10),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Dotiwala Bakery',
                                    style: GoogleFonts.openSans(
                                      color: AppColor.black300,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Row(
                                        children: [
                                          SvgPicture.asset(
                                              'assets/icons/location_gray.svg'),
                                          const Gap(6),
                                          Text(
                                            'Vesu',
                                            style: GoogleFonts.openSans(
                                              color: AppColor.black300,
                                              fontSize: 14,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const Gap(8),
                                      Row(
                                        children: [
                                          SvgPicture.asset(
                                              'assets/icons/clock_gray.svg'),
                                          const Gap(6),
                                          Text(
                                            '30 minutes',
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
                              const Gap(8),
                              Container(
                                width: 1,
                                color: Colors.grey.withOpacity(0.5),
                              ),
                              const Gap(8),
                              SizedBox(
                                width: wid / 11,
                                height: hit,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset('assets/icons/Star.svg'),
                                    Text(
                                      '4.5',
                                      style: GoogleFonts.openSans(
                                        color: AppColor.black300,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
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
    );
  }
}

class CustomShape extends StatelessWidget {
  const CustomShape({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: const Size(125, 151),
      painter: MyPainter(),
    );
  }
}

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = const Color(0xFF21272C);
    Path path = Path()
      ..moveTo(79, 0)
      ..lineTo(109, 0)
      ..cubicTo(116.542, 0, 120.314, 0, 122.657, 2.34315)
      ..cubicTo(125, 4.68629, 125, 8.45753, 125, 16)
      ..lineTo(125, 135)
      ..cubicTo(125, 142.542, 125, 146.314, 122.657, 148.657)
      ..cubicTo(120.314, 151, 116.542, 151, 109, 151)
      ..lineTo(0, 151)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

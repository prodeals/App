import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pro_deals1/utils/colors.dart';

import '../../controller/order_page_controller.dart';

class order extends StatelessWidget {
  order({super.key});

  page controller = page();
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    Color color1 = const Color(0xFFDAA520);
    Color color2 = const Color(0xFFFCE5AC);
    Color flutterColor = const Color(0xFF32801C);

    double wid = MediaQuery.of(context).size.width;
    double hei = MediaQuery.of(context).size.height;
    return CupertinoPageScaffold(
      backgroundColor: const Color(0xfff9f9f9),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Gap(30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  Get.toNamed('/overview_ios');
                },
                icon: const Icon(
                  Icons.menu,
                  color: Colors.black,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/images/profile_image.png'),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const Gap(10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    'TOTAL ORDER',
                    style: GoogleFonts.openSans(
                      textStyle: Theme.of(context).textTheme.displayLarge,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
                const Gap(20),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                    width: wid / 2.20,
                    height: wid / 2.46,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                              blurStyle: BlurStyle.normal,
                              blurRadius: 0,
                              spreadRadius: 0)
                        ]),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Gap(20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                  color: color2,
                                  boxShadow: const [
                                    BoxShadow(
                                        blurStyle: BlurStyle.normal,
                                        blurRadius: 0,
                                        spreadRadius: 0)
                                  ],
                                  borderRadius: BorderRadius.circular(10),
                                  image: const DecorationImage(
                                      image: AssetImage(
                                          'assets/images/7952173_receipt_paper_transation_check_sale_icon 1.png'))),
                            ),
                            Container(
                              width: 40,
                              height: 40,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                'assets/images/Vector.png',
                              ))),
                            ),
                          ],
                        ),
                        const Gap(20),
                        Text(
                          '    2,400',
                          style: GoogleFonts.openSans(
                            textStyle: Theme.of(context).textTheme.displayLarge,
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                        Text(
                          '    Total Orders',
                          style: GoogleFonts.openSans(
                            textStyle: Theme.of(context).textTheme.displayLarge,
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Gap(20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    'RECENT ORDERS',
                    style: GoogleFonts.openSans(
                      textStyle: Theme.of(context).textTheme.displayLarge,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
                const Gap(20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Obx(
                          () => GestureDetector(
                            onTap: () {
                              controller.changePage(0);
                              _pageController.jumpToPage(0);
                            },
                            child: Container(
                              width: 100,
                              height: 40,
                              decoration: BoxDecoration(
                                  color: (controller.Page.value == 0)
                                      ? AppColor.primary
                                      : Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: color1, width: 2)),
                              child: Center(
                                child: Text(
                                  'All',
                                  style: TextStyle(
                                    color: (controller.Page.value == 0)
                                        ? AppColor.white
                                        : AppColor.primary,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Gap(10),
                        Obx(
                          () => GestureDetector(
                            onTap: () {
                              controller.changePage(1);
                              _pageController.jumpToPage(1);
                            },
                            child: Container(
                              width: 120,
                              height: 40,
                              decoration: BoxDecoration(
                                  color: (controller.Page.value == 1)
                                      ? AppColor.primary
                                      : Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: color1, width: 2)),
                              child: Center(
                                child: Text(
                                  'Pending',
                                  style: TextStyle(
                                    color: (controller.Page.value == 1)
                                        ? AppColor.white
                                        : AppColor.primary,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Gap(10),
                        Obx(
                          () => GestureDetector(
                            onTap: () {
                              controller.changePage(2);
                              _pageController.jumpToPage(2);
                            },
                            child: Container(
                                width: 130,
                                height: 40,
                                decoration: BoxDecoration(
                                    color: (controller.Page.value == 2)
                                        ? AppColor.primary
                                        : Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    border:
                                        Border.all(color: color1, width: 2)),
                                child: Center(
                                  child: Text(
                                    'Accepted',
                                    style: TextStyle(
                                      color: (controller.Page.value == 2)
                                          ? AppColor.white
                                          : AppColor.primary,
                                    ),
                                  ),
                                )),
                          ),
                        ),
                        const Gap(10),
                        Obx(
                          () => GestureDetector(
                            onTap: () {
                              controller.changePage(3);
                              _pageController.jumpToPage(3);
                            },
                            child: Container(
                              width: 130,
                              height: 40,
                              decoration: BoxDecoration(
                                  color: (controller.Page.value == 3)
                                      ? AppColor.primary
                                      : Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: color1, width: 2)),
                              child: Center(
                                child: Text(
                                  'Completed',
                                  style: TextStyle(
                                    color: (controller.Page.value == 3)
                                        ? AppColor.white
                                        : AppColor.primary,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Gap(5),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: PageView(
                    controller: _pageController,
                    children: [
                      cardList(),
                      pendingList(),
                      AcceptedList(),
                      CompletedList(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// For interoperability with Material widgets
Widget cardList() {
  bool selectedvalue = false;
  Color Color3 = const Color(0xFF32801C);
  return ListView(
    children: [
      Row(
        children: [
          CupertinoCheckbox(
            value: selectedvalue,
            onChanged: (value) {
              selectedvalue = false;
            },
          ),
          Text(
            'Click to accept your order',
            style: TextStyle(
              fontSize: 18,
              color: AppColor.black300,
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.normal,
            ),
          ),
        ],
      ),
      Card(
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: GestureDetector(
          onTap: () {},
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                leading: Container(
                  width: 60,
                  height: 60,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/images/pizza2.png',
                      ),
                    ),
                  ),
                ),
                title: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Cheese Pizza',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    Text(
                      '12 feb 2024',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ],
                ),
                subtitle: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'OID - 663423756342',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    Text(
                      '₹ 399',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  children: [
                    CupertinoCheckbox(
                      value: selectedvalue,
                      onChanged: (value) {
                        selectedvalue = false;
                      },
                    ),
                    const Text(
                      'Accept',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    const Spacer(),
                    Container(
                      width: 90,
                      height: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color3,
                      ),
                      child: const Center(
                        child: Text(
                          'CONFIRM',
                          style: TextStyle(fontSize: 14, color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      Card(
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: GestureDetector(
          onTap: () {},
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                leading: Container(
                  width: 60,
                  height: 60,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/images/pizza2.png',
                      ),
                    ),
                  ),
                ),
                title: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Cheese Pizza',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    Text(
                      '12 feb 2024',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ],
                ),
                subtitle: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'OID - 663423756342',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    Text(
                      '₹ 399',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  children: [
                    CupertinoCheckbox(
                      value: selectedvalue,
                      onChanged: (value) {
                        selectedvalue = false;
                      },
                    ),
                    const Text(
                      'Accept',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    const Spacer(),
                    Container(
                      width: 90,
                      height: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color3,
                      ),
                      child: const Center(
                        child: Text(
                          'CONFIRM',
                          style: TextStyle(fontSize: 14, color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ],
  );
}

Widget pendingList() {
  Color color1 = const Color(0xFFDAA520);
  Color Color3 = const Color(0xFF32801C);
  return ListView.builder(
      itemCount: 3,
      itemBuilder: (context, index) {
        return Card(
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: GestureDetector(
            onTap: () {},
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  leading: Container(
                    width: 60,
                    height: 60,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/images/pizza2.png',
                        ),
                      ),
                    ),
                  ),
                  title: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Cheese Pizza',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                      Text(
                        '12 feb 2024',
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ],
                  ),
                  subtitle: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'OID - 663423756342',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                      Text(
                        '₹ 399',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ],
                  ),
                ),
                const Divider(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    children: [
                      Text(
                        'Pending Order',
                        style: TextStyle(
                          color: color1,
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ],
                  ),
                ),
                const Gap(4),
              ],
            ),
          ),
        );
      });
}

Widget AcceptedList() {
  Color color1 = const Color(0xFFDAA520);
  Color Color3 = const Color(0xFF32801C);
  return ListView.builder(
      itemCount: 3,
      itemBuilder: (context, index) {
        return Card(
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: GestureDetector(
              onTap: () {},
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    leading: Container(
                      width: 70,
                      height: 70,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                        'assets/images/Rectangle 5043.png',
                      ))),
                    ),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Cheese Pizza',
                          style: GoogleFonts.openSans(
                            textStyle: Theme.of(context).textTheme.displayLarge,
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                        Text(
                          '12 feb 2024',
                          style: GoogleFonts.openSans(
                            textStyle: Theme.of(context).textTheme.displayLarge,
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                      ],
                    ),
                    subtitle: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'OID - 663423756342',
                          style: GoogleFonts.openSans(
                            textStyle: Theme.of(context).textTheme.displayLarge,
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                        Text(
                          '₹ 399',
                          style: GoogleFonts.openSans(
                            textStyle: Theme.of(context).textTheme.displayLarge,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Divider(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      children: [
                        Container(
                          width: 8,
                          height: 8,
                          decoration: BoxDecoration(
                              color: Color3, shape: BoxShape.circle),
                        ),
                        const Gap(6),
                        Text(
                          'Accepted',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color3,
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                        const Spacer(),
                        const Text(
                          'Payment',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                        const Gap(6),
                        Container(
                          width: 8,
                          height: 8,
                          decoration: BoxDecoration(
                              color: color1, shape: BoxShape.circle),
                        ),
                        const Gap(6),
                        Text(
                          'Pending ',
                          style: TextStyle(
                            fontSize: 14,
                            color: color1,
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Gap(10),
                ],
              )),
        );
      });
}

Widget CompletedList() {
  Color color1 = const Color(0xFFDAA520);
  Color Color3 = const Color(0xFF32801C);
  return ListView.builder(
      itemCount: 3,
      itemBuilder: (context, index) {
        return Card(
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: GestureDetector(
            onTap: () {},
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  leading: Container(
                    width: 70,
                    height: 70,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                      'assets/images/Rectangle 5043.png',
                    ))),
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Cheese Pizza',
                        style: GoogleFonts.openSans(
                          textStyle: Theme.of(context).textTheme.displayLarge,
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                      Text(
                        '12 feb 2024',
                        style: GoogleFonts.openSans(
                          textStyle: Theme.of(context).textTheme.displayLarge,
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ],
                  ),
                  subtitle: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'OID - 663423756342',
                        style: GoogleFonts.openSans(
                          textStyle: Theme.of(context).textTheme.displayLarge,
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                      Text(
                        '₹ 399',
                        style: GoogleFonts.openSans(
                          textStyle: Theme.of(context).textTheme.displayLarge,
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ],
                  ),
                ),
                const Divider(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    children: [
                      Container(
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                            color: Color3, shape: BoxShape.circle),
                      ),
                      const Gap(6),
                      Text(
                        'Deliverred',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color3,
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                      const Spacer(),
                      const Text(
                        'Payment',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                      const Gap(6),
                      Container(
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                            color: Color3, shape: BoxShape.circle),
                      ),
                      const Gap(6),
                      Text(
                        'Paid ',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color3,
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ],
                  ),
                ),
                const Gap(10),
              ],
            ),
          ),
        );
      });
}

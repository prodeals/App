import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class order_deshboard extends StatefulWidget {
  const order_deshboard({super.key});

  @override
  State<order_deshboard> createState() => _order_deshboardState();
}

class _order_deshboardState extends State<order_deshboard> {
  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    bool selectedvalue = false;

    bool isPressed = false;
    Color color1 = Color(0xFFDAA520);
    Color color2 = Color(0xFFFCE5AC);
    Color flutterColor = Color(0xFF32801C);

    double wid = MediaQuery.of(context).size.width;
    double hei = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
          actions: [
            Image.asset(
              'assets/images/Rectangle 5021.png',
              width: 60,
              height: 60,
            ),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Gap(20),
            Text(
              '   TOTAL ORDER',
              style: GoogleFonts.openSans(
                textStyle: Theme.of(context).textTheme.displayLarge,
                fontSize: 18,
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.normal,
              ),
            ),
            Gap(20),
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
                    Gap(20),
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
                    Gap(20),
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
            Gap(20),
            Text(
              '     RECENT ORDERS',
              style: GoogleFonts.openSans(
                textStyle: Theme.of(context).textTheme.displayLarge,
                fontSize: 18,
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.normal,
              ),
            ),
            Gap(20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Gap(10),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (_) => cardList()));
                    },
                    child: Container(
                        width: 100,
                        height: 40,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(40),
                            border: Border.all(color: color1, width: 2)),
                        child: Center(
                          child: Text(
                            'All',
                            style: TextStyle(color: color1),
                          ),
                        )),
                  ),
                  Gap(10),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                        width: 120,
                        height: 40,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(40),
                            border: Border.all(color: color1, width: 2)),
                        child: Center(
                          child: Text(
                            'Pending',
                            style: TextStyle(color: color1),
                          ),
                        )),
                  ),
                  Gap(10),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                        width: 130,
                        height: 40,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(40),
                            border: Border.all(color: color1, width: 2)),
                        child: Center(
                          child: Text(
                            'Accepted',
                            style: TextStyle(color: color1),
                          ),
                        )),
                  ),
                  Gap(10),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                        width: 130,
                        height: 40,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(40),
                            border: Border.all(color: color1, width: 2)),
                        child: Center(
                          child: Text(
                            'Completed',
                            style: TextStyle(color: color1),
                          ),
                        )),
                  ),
                  Gap(5),
                ],
              ),
            ),
            Gap(30),
            Expanded(
              child: PageView(
                controller: _pageController,
                children: [
                  cardList(),
                  PendingList(),
                  AcceptedList(),
                  CompletedList(),
                ],
              ),
            ),
          ],
        ));
  }
}

Widget cardList() {
  bool selectedvalue = false;
  Color Color3 = Color(0xFF32801C);
  return ListView(
    children: [
      Row(
        children: [
          Checkbox(
            value: selectedvalue,
            onChanged: (value) {
              selectedvalue = false;
            },
          ),
          const Text(
            'Click to accept your order',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.normal,
            ),
          ),
        ],
      ),
      Card(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
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
                Divider(),
                Row(
                  children: [
                    Checkbox(
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
                    Gap(180),
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
              ],
            )),
      ),
      Card(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
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
                Divider(),
                Row(
                  children: [
                    Checkbox(
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
                    Gap(180),
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
              ],
            )),
      ),
      Card(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
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
                Divider(),
                Row(
                  children: [
                    Checkbox(
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
                    Gap(180),
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
              ],
            )),
      ),
    ],
  );
}

Widget PendingList() {
  bool selectedvalue = false;
  Color color1 = Color(0xFFDAA520);
  Color Color3 = Color(0xFF32801C);
  return ListView.builder(
      itemCount: 3,
      itemBuilder: (context, index) {
        return Card(
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
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
                  Divider(),
                  Row(
                    children: [
                      Gap(20),
                      Container(
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                            color: color1, shape: BoxShape.circle),
                      ),
                      Gap(6),
                      Text(
                        'Pending order',
                        style: TextStyle(
                          fontSize: 14,
                          color: color1,
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ],
                  ),
                  Gap(0),
                ],
              )),
        );
      });
}

Widget AcceptedList() {
  bool selectedvalue = false;
  Color color1 = Color(0xFFDAA520);
  Color Color3 = Color(0xFF32801C);
  return ListView.builder(
      itemCount: 3,
      itemBuilder: (context, index) {
        return Card(
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
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
                  Divider(),
                  Row(
                    children: [
                      Gap(20),
                      Container(
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                            color: Color3, shape: BoxShape.circle),
                      ),
                      Gap(6),
                      Text(
                        'Accepted',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color3,
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                      Gap(140),
                      const Text(
                        'Payment',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                      Gap(6),
                      Container(
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                            color: color1, shape: BoxShape.circle),
                      ),
                      Gap(6),
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
                  Gap(10),
                ],
              )),
        );
      });
}

Widget CompletedList() {
  bool selectedvalue = false;
  Color color1 = Color(0xFFDAA520);
  Color Color3 = Color(0xFF32801C);
  return ListView.builder(
      itemCount: 3,
      itemBuilder: (context, index) {
        return Card(
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
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
                  Divider(),
                  Row(
                    children: [
                      Gap(20),
                      Container(
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                            color: Color3, shape: BoxShape.circle),
                      ),
                      Gap(6),
                      Text(
                        'Deliverred',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color3,
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                      Gap(160),
                      const Text(
                        'Payment',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                      Gap(6),
                      Container(
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                            color: Color3, shape: BoxShape.circle),
                      ),
                      Gap(6),
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
                  Gap(10),
                ],
              )),
        );
      });
}

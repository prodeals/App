import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pro_deals1/utils/colors.dart';

import '../utils/constant.dart';

class cart extends StatelessWidget {
  const cart({super.key});

  @override
  Widget build(BuildContext context) {
    double hit = MediaQuery.of(context).size.height;
    double wid = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Cart'),
        centerTitle: true,
        backgroundColor: AppColor.primary,
      ),
      body: Container(
        height: hit,
        width: wid,
        padding: const EdgeInsets.all(16),
        child: ListView.builder(
          itemCount: orders.length,
          itemBuilder: (context, index) {
            final order = orders[index];

            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              child: Slidable(
                closeOnScroll: true,
                endActionPane: ActionPane(
                  dragDismissible: true,
                  motion: const StretchMotion(),
                  children: [
                    SlidableAction(
                      backgroundColor: Colors.red,
                      icon: Icons.delete,
                      label: 'Delete',
                      borderRadius: BorderRadius.circular(10),
                      spacing: 10,
                      flex: 3,
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                      onPressed: (context) {},
                    ),
                  ],
                ),
                child: buildListTile(order),
              ),
            );
          },
        ),
      ),
      // body: Container(
      //   height: hit,
      //   width: wid,
      //   padding: const EdgeInsets.all(16),
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     crossAxisAlignment: CrossAxisAlignment.center,
      //     children: [
      //       Container(
      //         height: 200,
      //         width: 200,
      //         decoration: BoxDecoration(
      //           image: DecorationImage(
      //               image: AssetImage('assets/images/cart_images.png')),
      //         ),
      //       ),
      //       const Gap(20),
      //       Text(
      //         "Your Cart is Empty",
      //         style: GoogleFonts.openSans(
      //           fontSize: 26,
      //           fontWeight: FontWeight.bold,
      //         ),
      //       ),
      //       const Gap(10),
      //       Text(
      //         "Good Food is Always Cooking.!\nGo ahead, Order some Yummy items the Menu Food",
      //         textAlign: TextAlign.center,
      //         style: GoogleFonts.openSans(
      //           fontSize: 12,
      //           fontWeight: FontWeight.bold,
      //           color: AppColor.gray,
      //         ),
      //       ),
      //       const Gap(20),
      //       Container(
      //         height: 60,
      //         width: 220,
      //         decoration: BoxDecoration(
      //           color: AppColor.primary,
      //           borderRadius: BorderRadius.circular(10),
      //         ),
      //         alignment: Alignment.center,
      //         child: Text(
      //           'Back to Shopping',
      //           style: TextStyle(
      //             fontSize: 16,
      //             fontWeight: FontWeight.bold,
      //             color: AppColor.white,
      //           ),
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }

  Widget buildListTile(final order) {
    return Card(
      child: ListTile(
        title: Text(order['name']),
        trailing: Text(order['prize']),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../../utils/colors.dart';

class ios_cart extends StatelessWidget {
  const ios_cart({super.key});

  @override
  Widget build(BuildContext context) {
    double hit = MediaQuery.of(context).size.height;
    double wid = MediaQuery.of(context).size.width;
    return CupertinoPageScaffold(
      backgroundColor: const Color(0xfff9f9f9),
      child: Container(
        height: hit,
        width: wid,
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Gap(40),
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
                          offset: const Offset(0, 0),
                          blurRadius: 2,
                          spreadRadius: 0,
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
                    'My Cart',
                    style: TextStyle(
                      color: AppColor.black300,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
            const Gap(10),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 200,
                    width: wid,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/empty-cart.png'),
                      ),
                    ),
                  ),
                  const Gap(20),
                  Text(
                    'Your Cart is Empty',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: AppColor.black300,
                    ),
                  ),
                  const Gap(20),
                  Text(
                    'Good Food is Always Cooking.!\nGo ahead, Order some Yummy items the Menu Food ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: AppColor.gray,
                      fontSize: 12,
                    ),
                  ),
                  const Gap(20),
                  Container(
                    height: 50,
                    width: wid / 1.6,
                    decoration: BoxDecoration(
                      color: AppColor.primary,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      'Back to Shopping',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

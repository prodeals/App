import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:pro_deals1/utils/colors.dart';

class DeliveryAddress extends StatelessWidget {
  const DeliveryAddress({super.key});

  @override
  Widget build(BuildContext context) {
    double hit = MediaQuery.of(context).size.height;
    double wid = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Delivery Address'),
        centerTitle: true,
        backgroundColor: AppColor.primary,
      ),
      body: Container(
        height: hit,
        width: wid,
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              height: 200,
              width: wid,
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        CupertinoIcons.building_2_fill,
                        size: 30,
                      ),
                      const Gap(20),
                      Text(
                        'Home',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w700),
                      ),
                      Spacer(),
                      Icon(
                        Icons.keyboard_control,
                        color: AppColor.gray,
                      ),
                    ],
                  ),
                  const Gap(10),
                  Row(
                    children: [
                      Icon(
                        Icons.person,
                        color: AppColor.primary,
                      ),
                      const Gap(10),
                      Text('John Lawis')
                    ],
                  ),
                  const Gap(10),
                  Row(
                    children: [
                      Icon(
                        Icons.add_call,
                        color: AppColor.primary,
                      ),
                      const Gap(10),
                      Text('+19 334 455 343')
                    ],
                  ),
                  const Gap(10),
                  Row(
                    children: [
                      Icon(
                        Icons.email,
                        color: AppColor.primary,
                      ),
                      const Gap(10),
                      Text('johnlawis23@gmai.com')
                    ],
                  ),
                  const Gap(10),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: AppColor.primary,
                      ),
                      const Gap(10),
                      Text('41 Elza avenue, Corner St.London,7867')
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed('/add_address');
        },
        child: const Icon(CupertinoIcons.add),
        backgroundColor: AppColor.primary,
      ),
    );
  }
}

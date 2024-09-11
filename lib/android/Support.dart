import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:pro_deals1/utils/colors.dart';

class support extends StatelessWidget {
  const support({super.key});

  @override
  Widget build(BuildContext context) {
    double hit = MediaQuery.of(context).size.height;
    double wid = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Support Center"),
        centerTitle: true,
        backgroundColor: AppColor.primary,
      ),
      body: Container(
        height: hit,
        width: wid,
        padding: EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 200,
                width: wid,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    image: AssetImage('assets/images/support.png'),
                  ),
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  child: Icon(Icons.question_mark),
                ),
                dense: true,
                title: Text(
                  'Frequently asked Questions',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              const Gap(10),
              Card(
                color: AppColor.white,
                child: Column(
                  children: [
                    ListTile(
                      title: Text(
                        'My order didn’t received yet?',
                        style: TextStyle(color: AppColor.primary, fontSize: 14),
                      ),
                      trailing: Container(
                        height: 26,
                        width: 26,
                        decoration: BoxDecoration(
                          color: AppColor.black300,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: AppColor.white,
                          size: 16,
                        ),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        'My order came with missing items',
                        style:
                            TextStyle(color: AppColor.black300, fontSize: 14),
                      ),
                      trailing: Container(
                        height: 26,
                        width: 26,
                        decoration: BoxDecoration(
                          color: AppColor.white,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: AppColor.black300,
                          size: 16,
                        ),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        'Change my phone number',
                        style:
                            TextStyle(color: AppColor.black300, fontSize: 14),
                      ),
                      trailing: Container(
                        height: 26,
                        width: 26,
                        decoration: BoxDecoration(
                          color: AppColor.white,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: AppColor.black300,
                          size: 16,
                        ),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        'Change my delivery address',
                        style:
                            TextStyle(color: AppColor.black300, fontSize: 14),
                      ),
                      trailing: Container(
                        height: 26,
                        width: 26,
                        decoration: BoxDecoration(
                          color: AppColor.white,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: AppColor.black300,
                          size: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Gap(10),
              ListTile(
                onTap: () {
                  Get.toNamed('/support_details');
                },
                leading: CircleAvatar(
                  radius: 30,
                  backgroundColor: AppColor.white,
                  child: SvgPicture.asset('assets/icons/pay.svg'),
                ),
                dense: true,
                title: Text(
                  'Payment Method',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              const Gap(10),
              Card(
                color: AppColor.white,
                child: Column(
                  children: [
                    ListTile(
                      title: Text(
                        'How do i change payment method?',
                        style:
                            TextStyle(color: AppColor.black300, fontSize: 14),
                      ),
                      trailing: Container(
                        height: 26,
                        width: 26,
                        decoration: BoxDecoration(
                          color: AppColor.white,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: AppColor.black300,
                          size: 16,
                        ),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        'Can i refund my order?',
                        style:
                            TextStyle(color: AppColor.black300, fontSize: 14),
                      ),
                      trailing: Container(
                        height: 26,
                        width: 26,
                        decoration: BoxDecoration(
                          color: AppColor.white,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: AppColor.black300,
                          size: 16,
                        ),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        'How can refund my money?',
                        style:
                            TextStyle(color: AppColor.black300, fontSize: 14),
                      ),
                      trailing: Container(
                        height: 26,
                        width: 26,
                        decoration: BoxDecoration(
                          color: AppColor.white,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: AppColor.black300,
                          size: 16,
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
    );
  }
}

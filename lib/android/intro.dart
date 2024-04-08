import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pro_deals1/utils/colors.dart';
import 'package:pro_deals1/utils/images.dart';

class intro extends StatelessWidget {
  const intro({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: height,
        width: width,
        child: Column(
          children: [
            Container(
              height: height / 1.7,
              width: width,
              padding: const EdgeInsets.all(30),
              decoration: BoxDecoration(
                color: AppColor.primary,
                borderRadius: const BorderRadius.vertical(
                  bottom: Radius.circular(46),
                ),
              ),
              child: SvgPicture.asset(Intro1),
            ),
            const Gap(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColor.black300,
                  ),
                ),
                const Gap(10),
                Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColor.primary,
                  ),
                ),
                const Gap(10),
                Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColor.primary,
                  ),
                ),
              ],
            ),
            const Gap(20),
            Text(
              'Welcome to Pro Deals',
              style: GoogleFonts.roboto(
                fontSize: 20,
              ),
            ),
            const Gap(20),
            Text(
              'Unlock exclusive deals and personalized \ndiscounts tailored to your preferences instantly',
              textAlign: TextAlign.center,
              style: GoogleFonts.roboto(
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Text(
              'Skip',
              style: GoogleFonts.roboto(
                color: AppColor.primary,
                fontSize: 24,
              ),
            ),
            Spacer(),
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColor.primary,
              ),
              alignment: Alignment.center,
              child: IconButton(
                onPressed: () {
                  Get.to(
                    const intro2(),
                  );
                },
                icon: Icon(
                  Icons.arrow_forward_sharp,
                  color: AppColor.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class intro2 extends StatelessWidget {
  const intro2({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: height,
        width: width,
        child: Column(
          children: [
            Container(
              height: height / 1.7,
              width: width,
              padding: const EdgeInsets.all(30),
              decoration: BoxDecoration(
                color: AppColor.black300,
                borderRadius: const BorderRadius.vertical(
                  bottom: Radius.circular(46),
                ),
              ),
              child: SvgPicture.asset(Intro2),
            ),
            const Gap(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColor.primary,
                  ),
                ),
                const Gap(10),
                Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColor.black300,
                  ),
                ),
                const Gap(10),
                Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColor.primary,
                  ),
                ),
              ],
            ),
            const Gap(20),
            Text(
              'Become affiliate marketer',
              style: GoogleFonts.roboto(
                fontSize: 20,
              ),
            ),
            const Gap(20),
            Text(
              'Affiliate marketing is a performance-based \n online business',
              textAlign: TextAlign.center,
              style: GoogleFonts.roboto(
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Text(
              'Skip',
              style: GoogleFonts.roboto(
                color: AppColor.primary,
                fontSize: 24,
              ),
            ),
            Spacer(),
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColor.primary,
              ),
              alignment: Alignment.center,
              child: IconButton(
                onPressed: () {
                  Get.to(const intro3());
                },
                icon: Icon(
                  Icons.arrow_forward_sharp,
                  color: AppColor.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class intro3 extends StatelessWidget {
  const intro3({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: height,
        width: width,
        child: Column(
          children: [
            Container(
              height: height / 1.7,
              width: width,
              padding: const EdgeInsets.all(30),
              decoration: BoxDecoration(
                color: AppColor.primary,
                borderRadius: const BorderRadius.vertical(
                  bottom: Radius.circular(46),
                ),
              ),
              child: SvgPicture.asset(Intro3),
            ),
            const Gap(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColor.primary,
                  ),
                ),
                const Gap(10),
                Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColor.primary,
                  ),
                ),
                const Gap(10),
                Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColor.black300,
                  ),
                ),
              ],
            ),
            const Gap(20),
            Text(
              'end to end encrypted',
              style: GoogleFonts.roboto(
                fontSize: 20,
              ),
            ),
            const Gap(20),
            Text(
              'security method that keeps your \ncommunications secure',
              textAlign: TextAlign.center,
              style: GoogleFonts.roboto(
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Text(
              'Skip',
              style: GoogleFonts.roboto(
                color: AppColor.primary,
                fontSize: 24,
              ),
            ),
            Spacer(),
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColor.primary,
              ),
              alignment: Alignment.center,
              child: IconButton(
                onPressed: () {
                  Get.offNamed('/login');
                },
                icon: Icon(
                  Icons.arrow_forward_sharp,
                  color: AppColor.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

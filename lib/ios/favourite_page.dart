import 'package:flutter/cupertino.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pro_deals1/controller/page_controller.dart';
import 'package:pro_deals1/utils/colors.dart';

import '../widget/ios/ProductWidget.dart';
import '../widget/ios_restaurant_widget.dart';

class iosFavourite extends StatelessWidget {
  const iosFavourite({super.key});

  @override
  Widget build(BuildContext context) {
    final pageController = Get.put(page_controller());
    double hit = MediaQuery.of(context).size.height;
    double wid = MediaQuery.of(context).size.width;

    return CupertinoPageScaffold(
      child: Container(
        height: hit,
        width: wid,
        color: AppColor.white,
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Gap(hit / 26),
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
                    'Favourite',
                    style: TextStyle(
                      color: AppColor.black300,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
            const Gap(20),
            Obx(
              () => Container(
                height: 66,
                width: wid,
                decoration: BoxDecoration(
                  color: AppColor.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: AppColor.gray.withOpacity(0.4),
                      blurRadius: 3,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: () {
                            pageController.Update(true);
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: (pageController.isfood.value)
                                  ? AppColor.primary
                                  : AppColor.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              'Product',
                              style: GoogleFonts.openSans(
                                color: (pageController.isfood.value)
                                    ? AppColor.white
                                    : AppColor.black300,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: () {
                            pageController.Update(false);
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: (pageController.isfood.value)
                                  ? AppColor.white
                                  : AppColor.primary,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              'Restaurant',
                              style: GoogleFonts.openSans(
                                color: (pageController.isfood.value)
                                    ? AppColor.black300
                                    : AppColor.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Obx(
              () => (pageController.isfood.value)
                  ? Expanded(
                      child: MasonryGridView.builder(
                        gridDelegate:
                            SliverSimpleGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                        ),
                        itemCount: 3, // Adjust item count as needed
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: ProductWidget(
                              image: 'assets/images/burger2.png',
                              // Replace with actual image
                              title: 'Product ${index + 1}',

                              price: 70, // Example price
                            ),
                          );
                        },
                      ),
                    )
                  : Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            const Gap(20),
                            ios_restaurant(
                              hit: hit / 2.6,
                              wid: wid,
                              title: 'Coffee Culture',
                              location: 'Khodiyar Nivas, Vesu, Surat',
                              rating: 4.5,
                              time: '10-15',
                              image: 'assets/images/cc2.png',
                            ),
                            const Gap(20),
                            ios_restaurant(
                              hit: hit / 2.6,
                              wid: wid,
                              title: 'Coffee Culture',
                              location: 'Khodiyar Nivas, Vesu, Surat',
                              rating: 4.5,
                              time: '10-15',
                              image: 'assets/images/cc2.png',
                            ),
                          ],
                        ),
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}

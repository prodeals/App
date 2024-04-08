import 'package:flutter/cupertino.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pro_deals1/controller/page_controller.dart';
import 'package:pro_deals1/utils/colors.dart';

import '../../utils/constunt.dart';
import '../widget/ios_restaurant_widget.dart';

class favourite extends StatelessWidget {
  const favourite({super.key});

  @override
  Widget build(BuildContext context) {
    page_controller page = page_controller();
    double hit = MediaQuery.of(context).size.height;
    double wid = MediaQuery.of(context).size.width;
    return CupertinoPageScaffold(
      child: Container(
        height: hit,
        width: wid,
        color: AppColor.white,
        padding: EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Gap(hit / 26),
              Center(
                child: Text(
                  'Filter',
                  style: GoogleFonts.openSans(
                    color: AppColor.black300,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
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
                              page.Update(true);
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: (page.isfood.value)
                                    ? AppColor.primary
                                    : AppColor.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                'Food',
                                style: GoogleFonts.openSans(
                                  color: AppColor.black300,
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
                              page.Update(false);
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: (page.isfood.value)
                                    ? AppColor.white
                                    : AppColor.primary,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                'Restaurant',
                                style: GoogleFonts.openSans(
                                  color: AppColor.black300,
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
                () => (page.isfood.value)
                    ? SizedBox(
                        height: hit / 1.4,
                        child: MasonryGridView.builder(
                          gridDelegate:
                              SliverSimpleGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                          ),
                          itemCount: 3,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
                                height: hit / 3.6,
                                width: wid / 2,
                                decoration: BoxDecoration(
                                  color: AppColor.primary,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            );
                          },
                        ),
                      )
                    : Column(
                        children: [
                          const Gap(20),
                          ios_restaurant(
                            hit: hit / 2.6,
                            wid: wid,
                            tital: 'Coffee Culture',
                            location: 'Khodiyar Nivas, Vesu, Surat',
                            rating: 4.5,
                            time: '10-15',
                            image: 'assets/images/cc2.png',
                          ),
                          const Gap(20),
                          ios_restaurant(
                            hit: hit / 2.6,
                            wid: wid,
                            tital: 'Coffee Culture',
                            location: 'Khodiyar Nivas, Vesu, Surat',
                            rating: 4.5,
                            time: '10-15',
                            image: 'assets/images/cc2.png',
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

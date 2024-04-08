import 'package:container_tab_indicator/container_tab_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pro_deals1/controller/page_controller.dart';
import 'package:pro_deals1/utils/colors.dart';

class Favourite extends StatefulWidget {
  const Favourite({super.key});

  @override
  State<Favourite> createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 2, vsync: this);
    tabController.index = 0;
  }

  @override
  Widget build(BuildContext context) {
    PageController page = PageController();
    double hit = MediaQuery.of(context).size.height;
    double wid = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Favourite'),
        centerTitle: true,
        backgroundColor: AppColor.primary,
      ),
      body: Container(
        height: hit,
        width: wid,
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                height: 60,
                width: wid,
                decoration: BoxDecoration(
                    color: AppColor.gray.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(30)),
                padding: const EdgeInsets.all(10),
                child: TabBar(
                  controller: tabController,
                  onTap: (value) {
                    setState(() {
                      tabController.index = value;
                      page.jumpToPage(value);
                    });
                  },
                  tabs: [
                    Text('Place',
                        style: TextStyle(
                            color: (tabController.index == 0)
                                ? Colors.white
                                : Colors.black)),
                    Text('Food',
                        style: TextStyle(
                            color: (tabController.index == 1)
                                ? Colors.white
                                : Colors.black)),
                  ],
                  indicator: ContainerTabIndicator(
                    width: 150,
                    height: 40,
                    radius: BorderRadius.circular(20.0),

                    // padding: const EdgeInsets.only(left: 36),

                    color: AppColor.primary,
                  ),
                ),
              ),
            ),
            Gap(20),
            Expanded(
              flex: 10,
              child: PageView(
                controller: page,
                onPageChanged: (value) {
                  setState(() {
                    tabController.index = value;
                  });
                },
                children: [
                  ListView.builder(
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 6.0),
                        child: Card(
                          child: ListTile(
                            onTap: () {
                              Get.toNamed('/shop');
                            },
                            minLeadingWidth: 100,
                            minVerticalPadding: 8,
                            leading: Container(
                              height: 80,
                              width: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS63GYet7mXqrrn-4KpGsnaHyGhjjG3v1HPzw&usqp=CAU'),
                                    fit: BoxFit.fill),
                              ),
                            ),
                            title: Text('Bonzer restro'),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      CupertinoIcons.location_solid,
                                      size: 14,
                                      color: AppColor.gray,
                                    ),
                                    Text(
                                      'Vesu',
                                      style: TextStyle(color: AppColor.gray),
                                    ),
                                  ],
                                ),
                                Gap(6),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: AppColor.primary,
                                      size: 16,
                                    ),
                                    Text(
                                      '4.5',
                                      style: TextStyle(color: AppColor.primary),
                                    ),
                                    Gap(6),
                                    Text(
                                      '(205 Reviews)',
                                      style: TextStyle(fontSize: 10),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            dense: true,
                            trailing:
                                SvgPicture.asset('assets/icons/liked_icon.svg'),
                          ),
                        ),
                      );
                    },
                    itemCount: 2,
                  ),
                  MasonryGridView(
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    children: [
                      Container(
                        height: 230,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColor.white,
                          boxShadow: [
                            // BoxShadow(
                            //   color: AppColor.gray,
                            //   blurRadius: 2,
                            //   offset: const Offset(1, 1),
                            // ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Align(
                              alignment: Alignment.topRight,
                              child: SvgPicture.asset(
                                  'assets/icons/liked_icon.svg'),
                            ),
                            Expanded(
                              flex: 3,
                              child: Container(
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      'https://img.freepik.com/free-photo/tasty-burger-isolated-white-background-fresh-hamburger-fastfood-with-beef-cheese_90220-1063.jpg?size=338&ext=jpg&ga=GA1.1.1930204137.1711497600&semt=sph',
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            const Gap(2),
                            Expanded(
                              flex: 2,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Hamburger',
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w300,
                                      color: AppColor.gray,
                                    ),
                                  ),
                                  Text(
                                    'Delicious Burger',
                                    overflow: TextOverflow.ellipsis,
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      color: AppColor.black300,
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        '\$5.10',
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: AppColor.primary,
                                        ),
                                      ),
                                      Container(
                                        height: 20,
                                        width: 50,
                                        decoration: BoxDecoration(
                                          color: AppColor.primary,
                                          borderRadius:
                                              BorderRadius.circular(6),
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.star,
                                              size: 16,
                                              color: AppColor.white,
                                            ),
                                            Text(
                                              '4.5',
                                              style: TextStyle(
                                                  color: AppColor.white),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 230,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColor.white,
                          boxShadow: [
                            // BoxShadow(
                            //   color: AppColor.gray,
                            //   blurRadius: 1,
                            //   offset: const Offset(1, 1),
                            // ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Align(
                              alignment: Alignment.topRight,
                              child: SvgPicture.asset(
                                  'assets/icons/liked_icon.svg'),
                            ),
                            Expanded(
                              flex: 3,
                              child: Container(
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQVQqCma0z049av_xB_PUr6jHeWVfuPSyp-6Q&usqp=CAU',
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            const Gap(2),
                            Expanded(
                              flex: 2,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Spicy',
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w300,
                                      color: AppColor.gray,
                                    ),
                                  ),
                                  Text(
                                    'Samosa',
                                    overflow: TextOverflow.ellipsis,
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      color: AppColor.black300,
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        '\$4.00',
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: AppColor.primary,
                                        ),
                                      ),
                                      Container(
                                        height: 20,
                                        width: 50,
                                        decoration: BoxDecoration(
                                          color: AppColor.primary,
                                          borderRadius:
                                              BorderRadius.circular(6),
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.star,
                                              size: 16,
                                              color: AppColor.white,
                                            ),
                                            Text(
                                              '5.0',
                                              style: TextStyle(
                                                  color: AppColor.white),
                                            ),
                                          ],
                                        ),
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
}

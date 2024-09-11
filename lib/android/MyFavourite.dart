import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pro_deals1/utils/colors.dart';

import '../widget/custom_tab_bar.dart';

class Favourite extends StatefulWidget {
  const Favourite({super.key});

  @override
  State<Favourite> createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  late PageController pageController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
    pageController = PageController();

    tabController.addListener(() {
      if (tabController.indexIsChanging) {
        pageController.jumpToPage(tabController.index);
      }
    });
  }

  @override
  void dispose() {
    tabController.dispose();
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
            CustomTabBar(
              controller: tabController,
              tabs: ['Place', 'Food'],
              onTap: (index) {
                setState(() {
                  tabController.index = index;
                  pageController.jumpToPage(index);
                });
              },
            ),
            const Gap(20),
            Expanded(
              child: PageView(
                controller: pageController,
                onPageChanged: (value) {
                  setState(() {
                    tabController.index = value;
                  });
                },
                children: [
                  _buildListView(),
                  _buildGridView(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildListView() {
    return ListView.builder(
      itemCount: 2,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 6.0),
          child: Card(
            child: ListTile(
              onTap: () {
                Get.toNamed('/shopPage');
              },
              minLeadingWidth: 100,
              minVerticalPadding: 8,
              leading: _buildImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS63GYet7mXqrrn-4KpGsnaHyGhjjG3v1HPzw&usqp=CAU'),
              title: const Text('Bonzer restro'),
              subtitle: _buildListTileSubtitle('Vesu', '4.5', '205 Reviews'),
              dense: true,
              trailing: SvgPicture.asset('assets/icons/liked_icon.svg'),
            ),
          ),
        );
      },
    );
  }

  Widget _buildGridView() {
    return MasonryGridView.count(
      crossAxisCount: 2,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      itemCount: 2,
      itemBuilder: (context, index) {
        return _buildGridItem(
          index == 0
              ? 'https://img.freepik.com/free-photo/tasty-burger-isolated-white-background-fresh-hamburger-fastfood-with-beef-cheese_90220-1063.jpg?size=338&ext=jpg&ga=GA1.1.1930204137.1711497600&semt=sph'
              : 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQVQqCma0z049av_xB_PUr6jHeWVfuPSyp-6Q&usqp=CAU',
          index == 0 ? 'Hamburger' : 'Spicy',
          index == 0 ? 'Delicious Burger' : 'Samosa',
          index == 0 ? '\$5.10' : '\$4.00',
          index == 0 ? '4.5' : '5.0',
        );
      },
    );
  }

  Widget _buildImage(String url) {
    return Container(
      height: 80,
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        image: DecorationImage(
          image: NetworkImage(url),
          fit: BoxFit.fill,
        ),
      ),
    );
  }

  Widget _buildListTileSubtitle(
      String location, String rating, String reviews) {
    return Column(
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
              location,
              style: TextStyle(color: AppColor.gray),
            ),
          ],
        ),
        const Gap(6),
        Row(
          children: [
            Icon(
              Icons.star,
              color: AppColor.primary,
              size: 16,
            ),
            Text(
              rating,
              style: TextStyle(color: AppColor.primary),
            ),
            const Gap(6),
            Text(
              '($reviews)',
              style: const TextStyle(fontSize: 10),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildGridItem(String imageUrl, String title, String subtitle,
      String price, String rating) {
    return Container(
      height: 230,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColor.white,
        boxShadow: [
          BoxShadow(
            color: AppColor.gray.withOpacity(0.4),
            blurRadius: 2,
            offset: const Offset(1, 1),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Top right icon
          Align(
            alignment: Alignment.topRight,
            child: SvgPicture.asset('assets/icons/liked_icon.svg'),
          ),

          // Image section
          Container(
            height: 120, // Adjust the height as needed
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                image: NetworkImage(imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 4), // Adjust spacing between image and text

          // Title and subtitle
          Text(
            title,
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w500,
              fontSize: 15,
              color: AppColor.black300,
            ),
          ),
          const SizedBox(height: 4), // Spacing between title and subtitle
          Text(
            subtitle,
            overflow: TextOverflow.ellipsis,
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w300,
              fontSize: 13,
              color: AppColor.gray,
            ),
          ),
          const Spacer(), // Pushes price and rating to the bottom

          // Price and rating
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                price,
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  color: AppColor.black300,
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: AppColor.primary,
                    size: 14,
                  ),
                  const SizedBox(width: 4), // Spacing between star and rating
                  Text(
                    rating,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      color: AppColor.primary,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pro_deals1/utils/colors.dart';

import '../widget/floating_searchbar.dart';

class search extends StatelessWidget {
  const search({super.key});

  @override
  Widget build(BuildContext context) {
    double hit = MediaQuery.of(context).size.height;
    double wid = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.primary,
        title: const Text('Search'),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                Get.toNamed('/filter');
              },
              icon: const Icon(Icons.filter_alt_outlined))
        ],
      ),
      body: Container(
        height: hit,
        width: wid,
        padding: const EdgeInsets.all(16),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Gap(80),
                Text(
                  'All Categories',
                  style: GoogleFonts.openSans(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                const Gap(20),
                const Wrap(
                  spacing: 20,
                  runSpacing: 10,
                  children: [
                    Chip(
                      label: Text('North indian'),
                      // autofocus: true,
                      // deleteIcon: IconButton(
                      //     onPressed: () {}, icon: const Icon(Icons.close)),
                    ),
                    Chip(
                      label: Text('Pizza'),
                    ),
                    Chip(
                      label: Text('shake'),
                    ),
                    Chip(
                      label: Text('Desserts'),
                    ),
                    Chip(
                      label: Text('Chocolate'),
                    ),
                  ],
                ),
              ],
            ),
            buildFloatingSearchBar(context),
          ],
        ),
      ),
    );
  }
}

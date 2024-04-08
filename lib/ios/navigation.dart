import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pro_deals1/utils/colors.dart';

import 'favourite_page.dart';
import 'food_details.dart';
import 'ios_home_page.dart';
import 'ios_profile.dart';
import 'ios_qr.dart';
import 'ios_search.dart';

class ios_navigation extends StatelessWidget {
  const ios_navigation({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      resizeToAvoidBottomInset: false,
      tabBar: CupertinoTabBar(
        backgroundColor: AppColor.primary,
        border: Border(),
        activeColor: AppColor.black300,
        inactiveColor: AppColor.white,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_rounded),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_view_outlined),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
          ),
        ],
      ),
      tabBuilder: (context, index) {
        switch (index) {
          case 0:
            return const ios_home();
            break;
          case 1:
            return ios_search();
            break;
          case 2:
            return const ios_qr();
            break;
          case 3:
            return const favourite();
            break;
          default:
            return const ios_profile();
            break;
        }
      },
    );
  }
}

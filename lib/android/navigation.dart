import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pro_deals1/android/qr_scanner.dart';

import '../../utils/colors.dart';
import 'MyCart.dart';
import 'home_page.dart';
import 'profile_page.dart';

class navigation extends StatefulWidget {
  const navigation({super.key});

  @override
  State<navigation> createState() => _navigationState();
}

class _navigationState extends State<navigation> {
  int currentPageIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    // showDialog(
    //   context: context,
    //   builder: (context) => AlertDialog(
    //     content: popupscreen(),
    //   ),
    // );
  }

  @override
  Widget build(BuildContext context) {
    PageController controller = PageController(
      initialPage: currentPageIndex,
    );
    double hit = MediaQuery.of(context).size.height;
    double wid = MediaQuery.of(context).size.width;
    return Scaffold(
      body: PageView(
        onPageChanged: (value) {
          setState(() {
            currentPageIndex = value;
          });
        },
        controller: controller,
        children: const [home_page(), Cart(), qr_scanner(), ProfilePage()],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColor.primary,
        currentIndex: currentPageIndex,
        onTap: (value) {
          setState(() {
            currentPageIndex = value;
            controller.jumpToPage(value);
            // controller = value;
          });
        },
        type: BottomNavigationBarType.fixed,
        // fixedColor: AppColor.primary,
        selectedItemColor: AppColor.white,
        unselectedItemColor: AppColor.black300,
        // backgroundColor: AppColor.primary,
        elevation: 2,
        items: [
          BottomNavigationBarItem(
            icon: Container(
              height: 20,
              width: 20,
              alignment: Alignment.center,
              child: SvgPicture.asset('assets/icons/B_home.svg'),
            ),
            activeIcon: Container(
                height: 20,
                width: 20,
                alignment: Alignment.center,
                child: SvgPicture.asset('assets/icons/home.svg')),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Container(
              height: 20,
              width: 20,
              alignment: Alignment.center,
              child: SvgPicture.asset('assets/icons/cart.svg'),
            ),
            activeIcon: Container(
                height: 20,
                width: 20,
                alignment: Alignment.center,
                child: SvgPicture.asset('assets/icons/W_cart.svg')),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Container(
              height: 20,
              width: 20,
              alignment: Alignment.center,
              child: SvgPicture.asset('assets/icons/qr_code.svg'),
            ),
            activeIcon: Container(
                height: 20,
                width: 20,
                alignment: Alignment.center,
                child: SvgPicture.asset('assets/icons/W_qr_code.svg')),
            label: 'Scan',
          ),
          BottomNavigationBarItem(
            icon: Container(
              height: 20,
              width: 20,
              alignment: Alignment.center,
              child: SvgPicture.asset('assets/icons/A_user.svg'),
            ),
            activeIcon: Container(
                height: 20,
                width: 20,
                alignment: Alignment.center,
                child: SvgPicture.asset('assets/icons/W_A_user.svg')),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

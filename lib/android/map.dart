import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

import '../utils/colors.dart';

class location extends StatelessWidget {
  const location({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController _controller = TextEditingController();
    double hit = MediaQuery.of(context).size.height;
    double wid = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        width: wid,
        height: hit,
        color: Color.fromARGB(255, 196, 197, 197),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Gap(10),
                Expanded(
                  child: TextFormField(
                    selectionHeightStyle: BoxHeightStyle.tight,
                    controller: _controller,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        prefixIcon: Icon(Icons.arrow_back),
                        suffixIcon: Image.asset('assets/images/search.png'),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                              color: Colors.transparent, width: 2),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                              color: Color.fromARGB(0, 78, 29, 29), width: 2),
                        )),
                  ),
                  //   child: SearchBar(

                  //     side: MaterialStatePropertyAll(BorderSide.none),
                  // //  shape: MaterialStatePropertyAll(OutlinedBorder.lerp(0, 0.5, 10)),
                  //     hintText: 'Search',
                  //     controller: _controller,
                  //     trailing: [
                  //       Image.asset('assets/images/search.png'),
                  //     ],
                  //     leading: Icon(Icons.arrow_back),
                  //   ),
                ),
                Gap(10),
                Expanded(
                  flex: 0,
                  child: Container(
                    width: wid / 7,
                    height: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColor.primary,
                        image: const DecorationImage(
                            image: AssetImage(
                                'assets/images/352522_location_searching_icon 1.png'))),
                  ),
                ),
                Gap(10),
              ],
            ),
            Gap(190),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: wid / 7,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColor.primary,
                  ),
                  child: Icon(
                    Icons.filter_alt_outlined,
                    size: 38,
                  ),
                ),
                Gap(20),
              ],
            ),
            Container(
                width: wid / 1.09,
                height: hit / 2.50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppColor.white),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Gap(10),
                    Container(
                      width: 330,
                      height: 130,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: const DecorationImage(
                              image: AssetImage(
                                'assets/images/cc-adajan 1.png',
                              ),
                              fit: BoxFit.cover)),
                    ),
                    Gap(10),
                    const Text(
                      'Coffee Culture',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.location_on, color: AppColor.primary),
                        const Text(
                          ' Khodiyar Nivas, Vesu, Surat',
                          style: TextStyle(fontSize: 16),
                        )
                      ],
                    ),
                    Gap(10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Gap(30),
                        Container(
                          width: 80,
                          height: 38,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: AppColor.gray.withOpacity(0.4)),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.car_repair),
                              Text('Free'),
                            ],
                          ),
                        ),
                        Container(
                          width: 90,
                          height: 38,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: AppColor.gray.withOpacity(0.4)),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.watch_later),
                              Text('10-15cm'),
                            ],
                          ),
                        ),
                        Container(
                          width: 80,
                          height: 38,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: AppColor.gray.withOpacity(0.4)),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.star),
                              Text('4.5'),
                            ],
                          ),
                        ),
                        Gap(30),
                      ],
                    ),
                    Gap(20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 60,
                          width: wid / 2,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: AppColor.primary),
                          child: const Center(
                            child: Text(
                              ' More Details',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                        Container(
                          height: 60,
                          width: wid / 6,
                          decoration: BoxDecoration(
                              border: Border.all(color: AppColor.primary),
                              borderRadius: BorderRadius.circular(10),
                              color: AppColor.white),
                          child: Icon(
                            Icons.book_outlined,
                            size: 50,
                            color: AppColor.primary,
                          ),
                        )
                      ],
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}

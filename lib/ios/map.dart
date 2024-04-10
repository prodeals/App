import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/colors.dart';

class locationios extends StatelessWidget {
  const locationios({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController _controller = TextEditingController();
    double hit = MediaQuery.of(context).size.height;
    double wid = MediaQuery.of(context).size.width;
    return CupertinoPageScaffold(
        child: Container(
      width: wid,
      height: hit,
      color: const Color.fromARGB(255, 196, 197, 197),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Gap(20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Gap(10),
              Expanded(
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: AppColor.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 3,
                        color: Colors.grey.withOpacity(0.5),
                        offset: const Offset(0, 0),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      const Gap(10),
                      const Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: CupertinoTextField(
                          controller: _controller,
                          placeholder: "Search",
                          suffix: Image.asset('assets/search.png'),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.transparent),
                          ),
                        ),
                      ),
                      const Gap(10),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 10),
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
                              'assets/352522_location_searching_icon 1 (1).png'))),
                ),
              ),
              const Gap(10),
            ],
          ),
          const Gap(10),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                const Gap(10),
                GestureDetector(
                  onTap: () {
                    // Navigator.pushReplacement(context,
                    //     MaterialPageRoute(builder: (_) => cardList()));
                  },
                  child: Container(
                      width: 100,
                      height: 40,
                      decoration: BoxDecoration(
                          color: AppColor.white,
                          borderRadius: BorderRadius.circular(10),
                          border:
                              Border.all(color: AppColor.primary, width: 2)),
                      child: Center(
                        child: Text(
                          'Fast food',
                          style: TextStyle(color: AppColor.black300),
                        ),
                      )),
                ),
                const Gap(10),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                      width: 120,
                      height: 40,
                      decoration: BoxDecoration(
                          color: AppColor.white,
                          borderRadius: BorderRadius.circular(10),
                          border:
                              Border.all(color: AppColor.primary, width: 2)),
                      child: Center(
                        child: Text(
                          'Italian',
                          style: TextStyle(color: AppColor.black300),
                        ),
                      )),
                ),
                const Gap(10),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                      width: 130,
                      height: 40,
                      decoration: BoxDecoration(
                          color: AppColor.white,
                          borderRadius: BorderRadius.circular(10),
                          border:
                              Border.all(color: AppColor.primary, width: 2)),
                      child: Center(
                        child: Text(
                          'Mexican',
                          style: TextStyle(color: AppColor.black300),
                        ),
                      )),
                ),
                const Gap(10),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                      width: 130,
                      height: 40,
                      decoration: BoxDecoration(
                          color: AppColor.white,
                          borderRadius: BorderRadius.circular(10),
                          border:
                              Border.all(color: AppColor.primary, width: 2)),
                      child: Center(
                        child: Text(
                          'Indian',
                          style: TextStyle(color: AppColor.black300),
                        ),
                      )),
                ),
                const Gap(5),
              ],
            ),
          ),
          const SizedBox(
            height: 250,
          ),
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
                  color: AppColor.white,
                ),
              ),
              const Gap(20),
            ],
          ),
          const Gap(10),
          Container(
              width: wid / 1.09,
              height: hit / 2.40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: AppColor.black300),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Gap(10),
                    Container(
                      width: 330,
                      height: 130,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: const DecorationImage(
                              image: AssetImage(
                                'assets/cc-adajan 1.png',
                              ),
                              fit: BoxFit.cover)),
                    ),
                    const Gap(10),
                    Text(
                      'Coffee Culture',
                      style: TextStyle(
                          fontSize: 24,
                          color: AppColor.white,
                          fontWeight: FontWeight.w700),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.location_on, color: AppColor.primary),
                        Text(
                          ' Khodiyar Nivas, Vesu, Surat',
                          style: TextStyle(fontSize: 16, color: AppColor.white),
                        )
                      ],
                    ),
                    const Gap(10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Gap(30),
                        Container(
                          width: 80,
                          height: 38,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: AppColor.white),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.car_repair, color: AppColor.black300),
                              const Text('Free'),
                            ],
                          ),
                        ),
                        Container(
                          width: 100,
                          height: 38,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: AppColor.white),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.watch_later,
                                color: AppColor.black300,
                              ),
                              const Text('10-15cm'),
                            ],
                          ),
                        ),
                        Container(
                          width: 80,
                          height: 38,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: AppColor.white),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.star,
                                color: AppColor.black300,
                              ),
                              const Text('4.5'),
                            ],
                          ),
                        ),
                        const Gap(30),
                      ],
                    ),
                    const Gap(20),
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
                          width: wid / 6.20,
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: AppColor.primary, width: 2),
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                  image: AssetImage('assets/rect1441.png')),
                              color: AppColor.black300),
                        )
                      ],
                    ),
                  ],
                ),
              )),
        ],
      ),
    ));
  }
}

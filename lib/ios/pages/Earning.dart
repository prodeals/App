import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:syncfusion_flutter_gauges/gauges.dart';

import '../../android/bar chart .dart';
import '../../android/roundbarchar.dart';

class Earning_ios extends StatefulWidget {
  const Earning_ios({super.key});

  @override
  State<Earning_ios> createState() => _Earning_iosState();
}

class _Earning_iosState extends State<Earning_ios> {
  @override
  Widget build(BuildContext context) {
    String? countryValue;
    List<String> country = ["Yearly", "Monthly", "Weekly", "Daily"];
    Color color7 = Color(0xFF6BB5FA); // Blue color
    Color color8 = Color(0xFFFFFFFF); // White color
    Color color9 = Color(0xFFD0DFEE);
    Color color = Color(0xFF3C81C2);
    Color color2 = Color(0xFFFCE5AC);
    double wid = MediaQuery.of(context).size.width;
    double hei = MediaQuery.of(context).size.height;
    Color? mixedColor = Color.lerp(color7, color8, 0.5);
    return CupertinoPageScaffold(
        child: Column(
      children: [
        Expanded(
          flex: 1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CupertinoButton(
                  onPressed: () {
                    // Handle accept button tap
                  },
                  child: Icon(
                    CupertinoIcons.bars,
                    size: 30,
                    color: CupertinoColors.black,
                  )),
              Image.asset(
                'assets/images/Rectangle 5021 (1).png',
                width: 80,
                height: 80,
              ),
            ],
          ),
        ),
        Expanded(
            flex: 8,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Gap(20),
                  Text(
                    '   TOTAl EARNINGS',
                    style: GoogleFonts.openSans(
                      textStyle: Theme.of(context).textTheme.displayLarge,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                  Gap(20),
                  Center(
                    child: Container(
                        width: wid / 1.08,
                        height: hei / 3.50,
                        decoration: BoxDecoration(
                            boxShadow: const [
                              BoxShadow(
                                  blurStyle: BlurStyle.normal,
                                  blurRadius: 0,
                                  spreadRadius: 0.2)
                            ],
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Gap(10),
                            Text(
                              '   Revenue ',
                              style: GoogleFonts.openSans(
                                textStyle:
                                    Theme.of(context).textTheme.displayLarge,
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  height: 190,
                                  width: 400,
                                  child: SfRadialGauge(
                                    axes: [
                                      RadialAxis(
                                        showLabels: false,
                                        startAngle: 180,
                                        endAngle: 0,
                                        interval: 100,
                                        canScaleToFit: true,
                                        minimum: 0,
                                        maximum: 100,
                                        annotations: <GaugeAnnotation>[
                                          GaugeAnnotation(
                                              widget: Container(
                                            child: Stack(
                                              alignment: Alignment.bottomCenter,
                                              children: [
                                                Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Gap(60),
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceAround,
                                                      children: [
                                                        Text(
                                                          'Total Revenue',
                                                          style: GoogleFonts
                                                              .openSans(
                                                            textStyle: Theme.of(
                                                                    context)
                                                                .textTheme
                                                                .displayLarge,
                                                            fontSize: 12,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontStyle: FontStyle
                                                                .normal,
                                                          ),
                                                        ),
                                                        Gap(2),
                                                        Text(
                                                          'Missed',
                                                          style: GoogleFonts
                                                              .openSans(
                                                            textStyle: Theme.of(
                                                                    context)
                                                                .textTheme
                                                                .displayLarge,
                                                            fontSize: 12,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontStyle: FontStyle
                                                                .normal,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Gap(5),
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceAround,
                                                      children: [
                                                        Text(
                                                          '  ₹ 9,37,000',
                                                          style: GoogleFonts
                                                              .openSans(
                                                            textStyle: Theme.of(
                                                                    context)
                                                                .textTheme
                                                                .displayLarge,
                                                            fontSize: 10,
                                                            fontWeight:
                                                                FontWeight.w700,
                                                            fontStyle: FontStyle
                                                                .normal,
                                                          ),
                                                        ),
                                                        Gap(2),
                                                        Text(
                                                          '     ₹ 23,000',
                                                          style: GoogleFonts
                                                              .openSans(
                                                            textStyle: Theme.of(
                                                                    context)
                                                                .textTheme
                                                                .displayLarge,
                                                            fontSize: 10,
                                                            fontWeight:
                                                                FontWeight.w700,
                                                            fontStyle: FontStyle
                                                                .normal,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                )
                                              ],
                                            ),
                                          ))
                                        ],
                                        pointers: const <GaugePointer>[
                                          NeedlePointer(
                                            needleLength: 1.10,
                                            value: 60,
                                            enableAnimation: true,
                                          )
                                        ],
                                        ranges: [
                                          GaugeRange(
                                              startValue: 0,
                                              endValue: 60,
                                              color: color,
                                              sizeUnit: GaugeSizeUnit.factor,
                                              startWidth: 0.26,
                                              endWidth: 0.26),
                                          GaugeRange(
                                            startValue: 60,
                                            sizeUnit: GaugeSizeUnit.factor,
                                            startWidth: 0.26,
                                            endWidth: 0.26,
                                            endValue: 100,
                                            color: color9,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )),
                  ),
                  Gap(20),
                  Center(
                    child: Container(
                      width: wid / 1.08,
                      height: hei / 5.30,
                      decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                                blurStyle: BlurStyle.normal,
                                blurRadius: 0,
                                spreadRadius: 0.2)
                          ],
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Gap(10),
                          Text(
                            '   Weekly Sales',
                            style: GoogleFonts.openSans(
                              textStyle:
                                  Theme.of(context).textTheme.displayLarge,
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    ' ₹ 14,000',
                                    style: GoogleFonts.openSans(
                                      textStyle: Theme.of(context)
                                          .textTheme
                                          .displayLarge,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      fontStyle: FontStyle.normal,
                                    ),
                                  ),
                                  Gap(10),
                                  Container(
                                      width: 100,
                                      height: 30,
                                      decoration: BoxDecoration(
                                        color: mixedColor,
                                        borderRadius: BorderRadius.circular(40),
                                      ),
                                      child: const Center(
                                        child: Text(
                                          '13.6%',
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 51, 114, 173),
                                              fontWeight: FontWeight.w700),
                                        ),
                                      )),
                                ],
                              ),
                              simplebar(),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Gap(20),
                  Center(
                    child: Container(
                        width: wid / 1.08,
                        height: hei / 2.30,
                        decoration: BoxDecoration(
                            boxShadow: const [
                              BoxShadow(
                                  blurStyle: BlurStyle.normal,
                                  blurRadius: 0,
                                  spreadRadius: 0)
                            ],
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        child: Column(
                          children: [
                            const Gap(10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '    Sales Chart ',
                                  style: GoogleFonts.openSans(
                                    textStyle: Theme.of(context)
                                        .textTheme
                                        .displayLarge,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                    fontStyle: FontStyle.normal,
                                  ),
                                ),
                                Text(
                                  '₹ 9,45,570  ',
                                  style: GoogleFonts.openSans(
                                    textStyle: Theme.of(context)
                                        .textTheme
                                        .displayLarge,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                    fontStyle: FontStyle.normal,
                                  ),
                                ),
                              ],
                            ),
                            // Row(
                            //   children: [
                            //     Gap(16),
                            //     Container(
                            //                     height: 30,
                            //                     width: 100,
                            //                     padding: const EdgeInsets.symmetric(horizontal: 10),
                            //                     decoration: BoxDecoration(
                            //                     color: color2,
                            //                       borderRadius: BorderRadius.circular(10),
                            //                     ),
                            //                     child: DropdownButton<String>(
                            //                       value: countryValue,
                            //                       icon: Icon(Icons.keyboard_arrow_down,size: 14,),
                            //                       isExpanded: true,
                            //                       underline: SizedBox(),
                            //                       style: TextStyle(color: Colors.black, fontSize: 16),
                            //                       onChanged: (newValue) {
                            //                         setState(() {
                            //                           countryValue = newValue;
                            //                         });
                            //                       },
                            //                       items: country.map((valueItem) {
                            //                         return DropdownMenuItem<String>(
                            //                           value: valueItem,
                            //                           child: Text(valueItem),
                            //                         );
                            //                       }).toList(),
                            //                     ),
                            //                   ),
                            //   ],
                            // ),
                            const barchart()
                          ],
                        )),
                  ),
                ],
              ),
            ))
      ],
    ));
  }
}

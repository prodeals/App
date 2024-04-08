import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

import 'bar chart .dart';
import 'roundbarchar.dart';

class earning extends StatefulWidget {
  const earning({super.key});

  @override
  State<earning> createState() => _earningState();
}

class _earningState extends State<earning> {
  @override
  Widget build(BuildContext context) {
    Color color7 = Color(0xFF6BB5FA); // Blue color
    Color color8 = Color(0xFFFFFFFF); // White color
    Color color9 = Color(0xFFD0DFEE);
    Color color = Color(0xFF3C81C2);

    double wid = MediaQuery.of(context).size.width;
    double hei = MediaQuery.of(context).size.height;
    Color? mixedColor = Color.lerp(color7, color8, 0.5);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
        actions: [
          Image.asset(
            'assets/images/Rectangle 5021.png',
            width: 60,
            height: 60,
          ),
        ],
      ),
      body: SingleChildScrollView(
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
                  height: hei / 2.70,
                  decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                            blurStyle: BlurStyle.normal,
                            blurRadius: 1,
                            spreadRadius: 0)
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
                          textStyle: Theme.of(context).textTheme.displayLarge,
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                      Container(
                        width: wid / 1.10,
                        height: hei / 3.20,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 250,
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
                                                      style:
                                                          GoogleFonts.openSans(
                                                        textStyle:
                                                            Theme.of(context)
                                                                .textTheme
                                                                .displayLarge,
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontStyle:
                                                            FontStyle.normal,
                                                      ),
                                                    ),
                                                    Gap(2),
                                                    Text(
                                                      'Missed',
                                                      style:
                                                          GoogleFonts.openSans(
                                                        textStyle:
                                                            Theme.of(context)
                                                                .textTheme
                                                                .displayLarge,
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontStyle:
                                                            FontStyle.normal,
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
                                                      style:
                                                          GoogleFonts.openSans(
                                                        textStyle:
                                                            Theme.of(context)
                                                                .textTheme
                                                                .displayLarge,
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        fontStyle:
                                                            FontStyle.normal,
                                                      ),
                                                    ),
                                                    Gap(2),
                                                    Text(
                                                      '     ₹ 23,000',
                                                      style:
                                                          GoogleFonts.openSans(
                                                        textStyle:
                                                            Theme.of(context)
                                                                .textTheme
                                                                .displayLarge,
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        fontStyle:
                                                            FontStyle.normal,
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
                                    pointers: <GaugePointer>[
                                      NeedlePointer(
                                        needleLength: 2,
                                        value: 60,
                                        enableAnimation: false,
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
                      ),
                    ],
                  )),
            ),
            Gap(20),
            Center(
              child: Container(
                width: wid / 1.08,
                height: hei / 5.02,
                decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                          blurStyle: BlurStyle.normal,
                          blurRadius: 1,
                          spreadRadius: 0)
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
                        textStyle: Theme.of(context).textTheme.displayLarge,
                        fontSize: 20,
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
                                textStyle:
                                    Theme.of(context).textTheme.displayLarge,
                                fontSize: 18,
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
                                child: Center(
                                  child: Text(
                                    '13.6%',
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 51, 114, 173),
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
                  height: hei / 2.46,
                  decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                            blurStyle: BlurStyle.normal,
                            blurRadius: 1,
                            spreadRadius: 0)
                      ],
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: Column(
                    children: [
                      Gap(10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            ' Sales Chart ',
                            style: GoogleFonts.openSans(
                              textStyle:
                                  Theme.of(context).textTheme.displayLarge,
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                          Text(
                            '₹ 9,45,570  ',
                            style: GoogleFonts.openSans(
                              textStyle:
                                  Theme.of(context).textTheme.displayLarge,
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                        ],
                      ),
                      barchart()
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pro_deals1/widget/cupertino_my_drawer.dart';

class dashboard extends StatefulWidget {
  const dashboard({super.key});

  @override
  State<dashboard> createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
  String selectedPeriod = 'Weekly';

  @override
  Widget build(BuildContext context) {
    final Color color2 = const Color(0xFFFCE5AC);
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    Widget _buildStatCard(String amount, String title, String imagePath,
        Color color, double width) {
      return Container(
        width: width / 2.4,
        height: width / 2.4,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: color,
                    boxShadow: const [
                      BoxShadow(
                        blurStyle: BlurStyle.normal,
                        blurRadius: 0,
                        spreadRadius: 0,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: const EdgeInsets.all(12),
                  child: Image.asset(imagePath),
                ),
              ],
            ),
            const Gap(20),
            Text(
              amount,
              style: GoogleFonts.openSans(
                textStyle: Theme.of(context).textTheme.bodyMedium,
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.normal,
              ),
            ),
            Text(
              title,
              style: GoogleFonts.openSans(
                textStyle: Theme.of(context).textTheme.bodyMedium,
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.normal,
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Image.asset(
              'assets/images/profile_image.png',
              width: 20,
              height: 20,
            ),
          ),
        ],
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      drawer: C_drawer(height, width),
      body: CupertinoPageScaffold(
        backgroundColor: const Color(0xfff9f9f9),
        resizeToAvoidBottomInset: true,
        child: Column(
          children: [
            const Gap(20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'MY dashboard',
                style: GoogleFonts.openSans(
                  textStyle: Theme.of(context).textTheme.displayLarge,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const Gap(20),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Center(
                      child: Wrap(
                        spacing: 10,
                        runSpacing: 10,
                        children: [
                          _buildStatCard('₹ 83,034', 'Total Earning',
                              'assets/images/Received.png', color2, width),
                          _buildStatCard('2,400', 'Total Orders',
                              'assets/images/list.png', color2, width),
                          _buildStatCard('2,400', 'Total Redeemed',
                              'assets/images/gift_voucher.png', color2, width),
                          _buildStatCard('70', 'Active Offers',
                              'assets/images/Active_offer.png', color2, width),
                        ],
                      ),
                    ),
                    const Gap(20),
                    Container(
                      width: width,
                      decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                            blurStyle: BlurStyle.normal,
                            blurRadius: 0,
                            spreadRadius: 0,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Sales Chart',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              DropdownButton<String>(
                                value: selectedPeriod,
                                items: <String>['Weekly', 'Monthly', 'Yearly']
                                    .map((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    selectedPeriod = newValue!;
                                  });
                                },
                              ),
                              Text(
                                '₹ 95,570',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          const SizedBox(height: 16),
                          SizedBox(
                            height: 200,
                            child: LineChart(
                              LineChartData(
                                lineBarsData: [
                                  LineChartBarData(
                                    spots: _lineChartSpots(),
                                    isCurved: true,
                                    color: Colors.green,
                                    barWidth: 4,
                                    isStrokeCapRound: true,
                                    belowBarData: BarAreaData(show: false),
                                  ),
                                ],
                                titlesData: _titlesData(),
                                borderData: FlBorderData(show: false),
                                gridData: FlGridData(show: false),
                                lineTouchData: LineTouchData(enabled: false),
                              ),
                            ),
                          ),
                          const SizedBox(height: 16),
                          SizedBox(
                            height: 200,
                            child: BarChart(
                              BarChartData(
                                barGroups: _barGroups(),
                                titlesData: _titlesData(),
                                borderData: FlBorderData(show: false),
                                gridData: FlGridData(show: false),
                                alignment: BarChartAlignment.spaceAround,
                                barTouchData: BarTouchData(enabled: false),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Gap(20),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<BarChartGroupData> _barGroups() {
    return [
      BarChartGroupData(
          x: 0, barRods: [BarChartRodData(toY: 8, color: Colors.blueAccent)]),
      BarChartGroupData(
          x: 1, barRods: [BarChartRodData(toY: 10, color: Colors.blueAccent)]),
      BarChartGroupData(
          x: 2, barRods: [BarChartRodData(toY: 14, color: Colors.blueAccent)]),
      BarChartGroupData(
          x: 3, barRods: [BarChartRodData(toY: 15, color: Colors.blueAccent)]),
      BarChartGroupData(
          x: 4, barRods: [BarChartRodData(toY: 13, color: Colors.blueAccent)]),
      BarChartGroupData(
          x: 5, barRods: [BarChartRodData(toY: 18, color: Colors.blueAccent)]),
    ];
  }

  List<FlSpot> _lineChartSpots() {
    return [
      FlSpot(0, 8),
      FlSpot(1, 10),
      FlSpot(2, 14),
      FlSpot(3, 15),
      FlSpot(4, 13),
      FlSpot(5, 18),
    ];
  }

  FlTitlesData _titlesData() {
    return FlTitlesData(
      bottomTitles: AxisTitles(
        sideTitles: SideTitles(
          showTitles: true,
          getTitlesWidget: (value, meta) {
            switch (value.toInt()) {
              case 0:
                return Text('Jan');
              case 1:
                return Text('Feb');
              case 2:
                return Text('Mar');
              case 3:
                return Text('Apr');
              case 4:
                return Text('May');
              case 5:
                return Text('Jun');
              default:
                return Text('');
            }
          },
        ),
      ),
      leftTitles: AxisTitles(
        sideTitles: SideTitles(showTitles: false),
      ),
      topTitles: AxisTitles(
        sideTitles: SideTitles(showTitles: false),
      ),
      rightTitles: AxisTitles(
        sideTitles: SideTitles(showTitles: false),
      ),
    );
  }
}

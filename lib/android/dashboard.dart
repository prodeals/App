import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widget/my_drawer.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  String selectedPeriod = 'Weekly';

  @override
  Widget build(BuildContext context) {
    Color color2 = const Color(0xFFFCE5AC);
    double wid = MediaQuery.of(context).size.width;
    double hit = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('assets/images/profile_image.png'),
              ),
            ),
          ),
          const Gap(16),
        ],
        elevation: 0,
      ),
      drawer: drawer(hit, wid),
      body: Container(
        height: hit,
        width: wid,
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Gap(20),
              Text(
                'MY DASHBOARD',
                style: GoogleFonts.openSans(
                  textStyle: Theme.of(context).textTheme.titleLarge,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.normal,
                ),
              ),
              const Gap(20),
              Center(
                child: Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: [
                    _buildStatCard('₹ 83,034', 'Total Earning', 'assets/images/Received.png', color2, wid),
                    _buildStatCard('2,400', 'Total Orders', 'assets/images/list.png', color2, wid),
                    _buildStatCard('2,400', 'Total Redeemed', 'assets/images/gift_voucher.png', color2, wid),
                    _buildStatCard('70', 'Active Offers', 'assets/images/Active_offer.png', color2, wid),
                  ],
                ),
              ),
              const Gap(20),
              Container(
                width: wid,
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
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        DropdownButton<String>(
                          value: selectedPeriod,
                          items: <String>['Weekly', 'Monthly', 'Yearly'].map((String value) {
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
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
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
    );
  }

  List<BarChartGroupData> _barGroups() {
    return [
      BarChartGroupData(x: 0, barRods: [
        BarChartRodData(toY: 8, color: Colors.blueAccent)
      ]),
      BarChartGroupData(x: 1, barRods: [
        BarChartRodData(toY: 10, color: Colors.blueAccent)
      ]),
      BarChartGroupData(x: 2, barRods: [
        BarChartRodData(toY: 14, color: Colors.blueAccent)
      ]),
      BarChartGroupData(x: 3, barRods: [
        BarChartRodData(toY: 15, color: Colors.blueAccent)
      ]),
      BarChartGroupData(x: 4, barRods: [
        BarChartRodData(toY: 13, color: Colors.blueAccent)
      ]),
      BarChartGroupData(x: 5, barRods: [
        BarChartRodData(toY: 18, color: Colors.blueAccent)
      ]),
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

  Widget _buildStatCard(String amount, String title, String imagePath, Color color, double width) {
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
}

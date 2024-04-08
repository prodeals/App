import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class barchart extends StatefulWidget {
  const barchart({super.key});

  @override
  State<barchart> createState() => _barchartState();
}

class _barchartState extends State<barchart> {
  Color color5 = Color.fromRGBO(129, 209, 255, 1);
  Color color = Color.fromRGBO(60, 129, 194, 1);
  @override
  Widget build(BuildContext context) {
    List<double> weeklysumary = [
      10.40,
      20.0,
      30.3,
      40.4,
      50.5,
      60.6,
    ];
    return Center(
      child: SizedBox(
          height: 300,
          width: 350,
          child: mybarchart(
            weeklysumary: weeklysumary,
          )),
    );
  }
}

class mybarchart extends StatelessWidget {
  final weeklysumary;
  const mybarchart({super.key, required this.weeklysumary});
  @override
  Widget build(BuildContext context) {
    bardata mybarchart = bardata(
      Janamount: weeklysumary[0],
      febamount: weeklysumary[1],
      maramount: weeklysumary[2],
      apramount: weeklysumary[3],
      mayamount: weeklysumary[4],
      junamount: weeklysumary[5],
    );

    mybarchart.initializebardata();

    return BarChart(BarChartData(
        extraLinesData: ExtraLinesData(
          extraLinesOnTop: true,
          horizontalLines: [
            HorizontalLine(
              y: 70,
              strokeCap: StrokeCap.round,
              color: Color(0xFF3FC18D),
              strokeWidth: 15,
            ),
          ],
        ),
        gridData: FlGridData(show: false),
        borderData: FlBorderData(
            show: true,
            border: Border(
                bottom: BorderSide(
              width: 10,
              color: Color(0xFFE2DEDE),
            ))),
        titlesData: const FlTitlesData(
            show: true,
            rightTitles: AxisTitles(
                sideTitles: SideTitles(
              showTitles: false,
            )),
            leftTitles: AxisTitles(
                sideTitles: SideTitles(
              showTitles: false,
            )),
            topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
            bottomTitles: AxisTitles(
                sideTitles: SideTitles(
                    showTitles: true, getTitlesWidget: Getbottomtile))),
        maxY: 80,
        minY: 0,
        barGroups: mybarchart.Bardata.map(
            (data) => BarChartGroupData(x: data.x, barRods: [
                  BarChartRodData(
                    toY: data.y,
                    color: data.color,
                    borderRadius: BorderRadius.circular(2),
                    width: 30,
                  ),
                ])).toList()));
  }
}

class ChartData {
  ChartData({
    required this.x,
    required this.y,
    required this.color,
  });
  final int x;
  final double y;
  final Color color;
}

class bardata {
  final double Janamount;
  final double febamount;
  final double maramount;
  final double apramount;
  final double mayamount;
  final double junamount;

  bardata({
    required this.Janamount,
    required this.febamount,
    required this.maramount,
    required this.apramount,
    required this.mayamount,
    required this.junamount,
  });

  List<ChartData> Bardata = [];

  void initializebardata() {
    Bardata = [
      ChartData(x: 0, y: Janamount, color: Color.fromRGBO(129, 209, 255, 1)),
      ChartData(x: 1, y: febamount, color: Color.fromRGBO(60, 129, 194, 1)),
      ChartData(x: 2, y: maramount, color: Color.fromRGBO(129, 209, 255, 1)),
      ChartData(x: 3, y: apramount, color: Color.fromRGBO(60, 129, 194, 1)),
      ChartData(x: 4, y: mayamount, color: Color.fromRGBO(129, 209, 255, 1)),
      ChartData(x: 5, y: junamount, color: Color.fromRGBO(60, 129, 194, 1)),
    ];
  }
}

Widget Getbottomtile(double value, TitleMeta meta) {
  const style = TextStyle(
      fontSize: 14,
      color: Color.fromARGB(255, 43, 40, 40),
      fontWeight: FontWeight.bold);

  Widget text;
  switch (value.toInt()) {
    case 0:
      text = const Text(
        'Jan',
        style: style,
      );

      break;
    case 1:
      text = const Text(
        'Feb',
        style: style,
      );

      break;
    case 2:
      text = const Text(
        'Mar',
        style: style,
      );

      break;
    case 3:
      text = const Text(
        'Apr',
        style: style,
      );

      break;
    case 4:
      text = const Text(
        'May',
        style: style,
      );

      break;

    case 5:
      text = const Text(
        'Jun',
        style: style,
      );

      break;

    default:
      text = const Text(
        '',
        style: style,
      );

      break;
  }

  return SideTitleWidget(child: text, axisSide: meta.axisSide);
}

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class LineReportChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.2,
      child: LineChart(
        LineChartData(
          gridData: FlGridData(show: false), //horizontal grid lines
          borderData: FlBorderData(show: false), //box lines
          titlesData: FlTitlesData(show: false), //title numbers
          lineBarsData: [
            LineChartBarData(
              spots: getSpots(), //function for the data points below
              isCurved: true, //makes graph curved
              dotData: FlDotData(show: false), //hide the dots
              belowBarData: BarAreaData(show: false),
              colors: [kPrimaryColor],
              barWidth: 4, //thick plot
            ),
          ],
        ),
      ),
    );
  }

  List<FlSpot> getSpots() {
    return [
      FlSpot(0, 0.5),
      FlSpot(1, 1.5),
      FlSpot(2, 0.5),
      FlSpot(3, 0.7),
      FlSpot(4, 0.2),
      FlSpot(5, 2),
      FlSpot(6, 1.5),
      FlSpot(7, 1.7),
      FlSpot(8, 1),
      FlSpot(9, 2.8),
      FlSpot(10, 2.5),
      FlSpot(11, 2.65),
    ];
  }
}

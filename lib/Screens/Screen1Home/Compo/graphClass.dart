import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class GraphClass extends StatelessWidget {
  const GraphClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
      backgroundColor: Colors.white,
      plotAreaBorderWidth: 0,
      primaryXAxis: CategoryAxis(
        axisLine: const AxisLine(color: Colors.black, width: 0),
        majorGridLines: const MajorGridLines(width: 0),
      ),
      primaryYAxis: NumericAxis(
        axisLine: const AxisLine(color: Colors.black, width: 0),
        majorGridLines: const MajorGridLines(width: 1),
        maximum: 100,
        minimum: 0,
      ),
      series: <ChartSeries>[
        ColumnSeries<ChartData, String>(
          dataSource: data,
          xValueMapper: (ChartData data, _) => data.day,
          yValueMapper: (ChartData data, _) => data.money,
          color: Colors.deepOrange,
          borderRadius: BorderRadius.circular(10),
          pointColorMapper: (ChartData data, _) => data.color,
        )
      ],
    );
  }
}

List<ChartData> data = [
  ChartData('Sun', 26, Color(0xffC7F4A5)),
  ChartData('Mon', 35, Color(0xffFBB1C3)),
  ChartData('Tues', 28, Color(0xffB6BBFE)),
  ChartData('Wed', 34, Color(0xffC7F4A5)),
  ChartData('Thurs', 32, Color(0xffFBB1C3)),
  ChartData('Fri', 14, Color(0xffB6BBFE)),
  ChartData('Sat', 50, Color(0xffC7F4A5)),
];

class ChartData {
  ChartData(this.day, this.money, this.color);

  final String day;
  final double money;
  final Color? color;
}

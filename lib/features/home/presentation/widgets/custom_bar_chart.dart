import 'package:fitness_app/core/constant/app_assets.dart';
import 'package:fitness_app/core/constant/app_text_style.dart';
import 'package:fitness_app/core/extansions/padding_extention.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBarChart extends StatelessWidget {
  final List<double> values; // Accept values dynamically

  const CustomBarChart({super.key, required this.values});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 260,
      child: BarChart(
        BarChartData(
          backgroundColor: Colors.transparent,
          barGroups: _generateBarGroups(),
          titlesData: _getTitlesData(),
          borderData: FlBorderData(show: false),
          gridData: FlGridData(show: false),
          barTouchData: BarTouchData(
            touchTooltipData: BarTouchTooltipData(
              getTooltipItem: (group, groupIndex, rod, rodIndex) {
                return BarTooltipItem(
                  '${rod.toY.toInt()}',
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                );
              },
            ),
          ),
          alignment: BarChartAlignment.spaceAround,
          maxY: 100,
          minY: 0,
        ),
        duration: Duration(seconds: 1),
        curve: Curves.linear,
      ).paddingOnly(right: 20, left: 20, top: 70, bottom: 20),
    );
  }

  List<BarChartGroupData> _generateBarGroups() {
    return List.generate(values.length, (index) {
      return BarChartGroupData(
        x: index,
        barRods: [
          BarChartRodData(
            toY: values[index],
            width: 12,
            borderRadius: BorderRadius.circular(22),
            gradient: LinearGradient(
              colors: [Colors.yellow, Colors.green],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
          ),
        ],
      );
    });
  }

  FlTitlesData _getTitlesData() {
    return FlTitlesData(
      leftTitles: AxisTitles(
        sideTitles: SideTitles(reservedSize: 0, showTitles: false),
      ),
      rightTitles: AxisTitles(
        sideTitles: SideTitles(reservedSize: 0, showTitles: false),
      ),
      topTitles: AxisTitles(
        sideTitles: SideTitles(reservedSize: 0, showTitles: false),
      ),
      bottomTitles: AxisTitles(
        sideTitles: SideTitles(
          reservedSize: 55,
          showTitles: true,
          getTitlesWidget: (value, meta) {
            const days = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];
            return Column(
              children: [
                Image.asset(AppAssets.checkmark, width: 20.w, height: 20.h),
                Text(
                  days[value.toInt()],
                  style: AppTextStyle.regular(12),
                ).paddingOnly(top: 5),
              ],
            ).paddingOnly(top: 15);
          },
        ),
      ),
    );
  }
}

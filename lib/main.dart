import 'package:fitness_app/core/router/app_router.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.dark,
        theme: ThemeData(
          brightness: Brightness.dark,
          scaffoldBackgroundColor: Color(0xff121212),
          appBarTheme: AppBarTheme(
            backgroundColor: Color(0xff121212),
            elevation: 0,
            foregroundColor: Colors.white,
            iconTheme: IconThemeData(color: Colors.white),
          ),
        ),
        routerConfig: AppRouter.appRouter,
      ),
    );
  }
}

class CustomBarChart extends StatefulWidget {
  const CustomBarChart({super.key});

  @override
  State<CustomBarChart> createState() => _CustomBarChartState();
}

class _CustomBarChartState extends State<CustomBarChart> {
  List<double> values = [0, 0, 0, 0, 0, 0, 0];
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 500), () {
      setState(() {
        values = [100, 65, 95, 100, 45, 55, 5]; // Actual values after delay
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
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
          duration: Duration(seconds: 5),
          curve: Curves.linear,
        ),
      ),
    );
  }

  List<BarChartGroupData> _generateBarGroups() {
    return List.generate(values.length, (index) {
      return BarChartGroupData(
        x: index,
        // showingTooltipIndicators: [0],
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
          reservedSize: 33,
          showTitles: true,
          getTitlesWidget: (value, meta) {
            const days = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];
            return Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                days[value.toInt()],
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
            );
          },
        ),
      ),
    );
  }
}

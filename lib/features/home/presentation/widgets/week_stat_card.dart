import 'package:fitness_app/core/constant/app_text_style.dart';
import 'package:fitness_app/core/extansions/padding_extention.dart';
import 'package:fitness_app/features/home/presentation/widgets/custom_bar_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class WeekStatCard extends StatefulWidget {
  const WeekStatCard({super.key});

  @override
  State<WeekStatCard> createState() => _WeekStatCardState();
}

class _WeekStatCardState extends State<WeekStatCard> {
  String _selectedWeek = 'Week 24';
  final List<String> _weeks = ['Week 24', 'Week 25', 'Week 26', 'Week 27'];

  DateTime _getWeekStartDate(String week) {
    int weekNumber = int.parse(week.split(' ')[1]);
    DateTime firstDayOfYear = DateTime(DateTime.now().year, 1, 1);
    return firstDayOfYear.add(Duration(days: (weekNumber - 1) * 7));
  }

  String _formatDate(DateTime date) {
    return DateFormat('EEEE, MMM d').format(date);
  }

  final Map<String, List<double>> _weeklyData = {
    'Week 24': [100, 65, 22, 100, 45, 55, 5],
    'Week 25': [14, 24, 85, 33, 76, 55, 10],
    'Week 26': [99, 2, 75, 8, 40, 77, 15],
    'Week 27': [45, 85, 6, 100, 44, 12, 88],
  };

  List<double> _selectedValues = [];

  @override
  void initState() {
    super.initState();
    _selectedValues = _weeklyData[_selectedWeek] ?? [];
  }

  void _updateChart(String newWeek) {
    setState(() {
      _selectedWeek = newWeek;
      _selectedValues = _weeklyData[newWeek] ?? [];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xff222222),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.r)),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              _formatDate(_getWeekStartDate(_selectedWeek)),
              style: AppTextStyle.medium(16),
            ).paddingSymmetric(horizontal: 16, vertical: 8),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              margin: EdgeInsets.only(right: 8.w, top: 8.h),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 17, 17, 17),
                borderRadius: BorderRadius.circular(30.r),
              ),
              child: DropdownButton<String>(
                value: _selectedWeek,
                icon: RotatedBox(
                  quarterTurns: 3,
                  child: Icon(
                    Icons.arrow_back_ios,
                    size: 18.sp,
                  ).paddingOnly(left: 8.w, top: 10.h),
                ),
                dropdownColor: Colors.black,
                borderRadius: BorderRadius.circular(30.r),
                isDense: true,
                padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 8.h),
                underline: SizedBox(),
                style: AppTextStyle.medium(14),
                onChanged: (String? newValue) {
                  setState(() {
                    _selectedWeek = newValue!;
                  });
                  if (newValue != null) {
                    _updateChart(newValue);
                  }
                },
                items:
                    _weeks.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
              ),
            ),
          ),
          CustomBarChart(values: _selectedValues),
        ],
      ),
    );
  }
}

import 'package:fitness_app/core/constant/app_text_style.dart';
import 'package:fitness_app/core/extansions/padding_extention.dart';
import 'package:fitness_app/features/home/presentation/widgets/calories_tracker_card.dart';
import 'package:fitness_app/features/home/presentation/widgets/custom_appbar_home.dart';
import 'package:fitness_app/features/home/presentation/widgets/today_routine_card.dart';
import 'package:fitness_app/features/home/presentation/widgets/week_stat_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarHome(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            15.verticalSpace,
            Text("Your weekly stat", style: AppTextStyle.extraBold(30)),
            8.verticalSpace,
            Text(
              "This week looks good, keep pushing Yomi💪",
              style: AppTextStyle.medium(14),
            ),
            20.verticalSpace,
            WeekStatCard(),
            20.verticalSpace,
            Text("Today’s routine", style: AppTextStyle.semiBold(23)),
            12.verticalSpace,
            TodayRoutineCard(),
            12.verticalSpace,
            CaloriesTrackerCard(),
          ],
        ),
      ),
    ).paddingSymmetric(horizontal: 16);
  }
}

import 'package:fitness_app/core/constant/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class CaloriesTrackerCard extends StatelessWidget {
  const CaloriesTrackerCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 260,
        decoration: BoxDecoration(
          color: Color.fromARGB(177, 34, 34, 34),
          borderRadius: BorderRadius.circular(20),
        ),
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Calories tracker', style: AppTextStyle.semiBold(20)),
            20.verticalSpace,
            Expanded(
              child: SfRadialGauge(
                axes: <RadialAxis>[
                  RadialAxis(
                    minimum: 0,
                    maximum: 100,
                    startAngle: 180,
                    endAngle: 0,
                    showLabels: false,
                    showTicks: false,
                    axisLineStyle: AxisLineStyle(
                      thickness: 15,
                      cornerStyle: CornerStyle.bothCurve,
                      color: Colors.grey[900]!,
                    ),
                    ranges: [
                      GaugeRange(
                        startValue: 0,
                        endValue: 60,
                        color: Colors.yellowAccent,
                        startWidth: 3,
                        endWidth: 15,
                      ),
                    ],
                    pointers: <GaugePointer>[
                      NeedlePointer(
                        value: 60,
                        needleColor: Colors.white,
                        tailStyle: TailStyle(length: 0),
                        knobStyle: KnobStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

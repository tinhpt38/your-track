import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:your_track/app/your_track/extra/const/colors.dart';

class ProgressBar extends StatelessWidget {
  const ProgressBar({super.key, required this.percent, required this.type});
  final double percent;
  final int type;
  @override
  Widget build(BuildContext context) {
    Color progressColor() {
      switch (type) {
        case 1:
          return ExtraColors.semainticPink;
        case 2:
          return ExtraColors.semainticBlue;
        case 3:
          return ExtraColors.semainticGreen;
        case 4:
          return ExtraColors.semainticTopaz;
        case 5:
          return ExtraColors.primary;
        default:
          return ExtraColors.neutralBlack;
      }
    }

    return LinearPercentIndicator(
        lineHeight: 4.0,
        percent: percent,
        progressColor: progressColor(),
        backgroundColor: ExtraColors.neutralBlack.withOpacity(0.4),
        barRadius: const Radius.circular(100));
  }
}

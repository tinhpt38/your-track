import 'package:flutter/material.dart';
import 'package:your_track/app/your_track/extra/const/colors.dart';

class Toggle extends StatelessWidget {
  const Toggle({super.key, required this.isOn, required this.onChange});
  final bool isOn;
  final Function(bool) onChange;
  @override
  Widget build(BuildContext context) {
    Alignment alignment() {
      return isOn ? Alignment.centerRight : Alignment.centerLeft;
    }

    EdgeInsetsDirectional edgeInsetsDirectional() {
      return isOn
          ? const EdgeInsetsDirectional.only(end: 2)
          : const EdgeInsetsDirectional.only(start: 2);
    }

    Color? outSide() {
      return isOn ? null : ExtraColors.neutralBlack;
    }

    Color? inSide() {
      return isOn ? null : ExtraColors.neutralSliver;
    }

    Gradient? outGradient() {
      return isOn ? ExtraColors.graidentDiamon : null;
    }

    Gradient? inGradient() {
      return isOn ? ExtraColors.gradientBlue : null;
    }

    return InkWell(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () {
          onChange(isOn);
        },
        child: Container(
          alignment: alignment(),
          padding: edgeInsetsDirectional(),
          height: 24,
          width: 48,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(200),
              gradient: outGradient(),
              color: outSide()),
          child: Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              gradient: inGradient(),
              color: inSide(),
              boxShadow: [
                BoxShadow(
                  color: ExtraColors.primary.withOpacity(0.4),
                  spreadRadius: 0,
                  blurRadius: 12,
                  offset: const Offset(0, 8),
                ),
              ],
            ),
          ),
        ));
  }
}

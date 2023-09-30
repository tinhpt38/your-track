import 'package:flutter/material.dart';
import 'package:your_track/app/your_track/extra/const/colors.dart';

class RadioButton extends StatelessWidget {
  const RadioButton(
      {super.key, required this.isChecked, required this.onChange});
  final bool isChecked;
  final Function(bool) onChange;
  @override
  Widget build(BuildContext context) {
    return InkWell(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () {
          onChange(isChecked);
        },
        child: Container(
            alignment: Alignment.center,
            height: 20,
            width: 20,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(
                    color: isChecked
                        ? ExtraColors.primary
                        : ExtraColors.neutralBlack.withOpacity(0.4),
                    width: 2)),
            child: isChecked
                ? Container(
                    height: 12,
                    width: 12,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: ExtraColors.neutralBlack),
                  )
                : Container()));
  }
}

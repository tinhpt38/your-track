import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:your_track/app/your_track/extra/const/icons.dart';

class CheckBox extends StatelessWidget {
  const CheckBox({super.key, required this.isChecked, required this.onChange});
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
        child: SvgPicture.asset(
          isChecked ? ExtraIcons.checked : ExtraIcons.unCheck,
        ));
  }
}

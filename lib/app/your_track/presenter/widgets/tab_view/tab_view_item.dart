import 'package:flutter/material.dart';

import '../../../extra/const/colors.dart';
import '../../../extra/const/fonts.dart';

class TabViewItem extends StatelessWidget {
  const TabViewItem(
      {super.key,
      required this.size,
      this.isTask = true,
      required this.isActive,
      required this.text});
  final Size size;
  final bool isTask;
  final bool isActive;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: isTask ? 32 : 40,
      width: isTask ? size.width * 0.25 : size.width * 0.3,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(isTask ? 16 : 20),
          color: isActive ? ExtraColors.primary : Colors.transparent),
      child: Text(
        text,
        style: ExtraFonts.bodySemiBold14.copyWith(
            color:
                isActive ? ExtraColors.neutralWhite : ExtraColors.neutralBlack),
      ),
    );
  }
}

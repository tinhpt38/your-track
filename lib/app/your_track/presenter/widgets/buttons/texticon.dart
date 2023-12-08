import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../extra/const/colors.dart';
import '../../../extra/const/fonts.dart';
import '../../../extra/const/icons.dart';

class TextIconButton extends StatelessWidget {
  const TextIconButton(
      {super.key,
      this.width = 153,
      this.height = 48,
      this.bgColor = ExtraColors.primary,
      this.textcolor = ExtraColors.neutralWhite,
      this.iconColor = ExtraColors.neutralWhite,
      required this.iconPath,
      required this.onPress,
      required this.label});
  final Function onPress;
  final String label;
  final double width;
  final double height;
  final String iconPath;
  final Color bgColor;
  final Color textcolor;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
        onPressed: () {
          onPress();
        },
        style: ButtonStyle(
          alignment: Alignment.centerLeft,
          minimumSize: MaterialStateProperty.all(Size(width, height)),
          elevation: MaterialStateProperty.all(0),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
          backgroundColor: MaterialStateProperty.all<Color>(bgColor),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButton(
              icon: SvgPicture.asset(
                iconPath,
                color: iconColor,
                // colorFilter: ColorFilter.mode(iconColor, BlendMode.colorDodge),
              ),
              onPressed: null,
            ),
            Text(
              label,
              style: ExtraFonts.headingBold16.copyWith(color: textcolor),
            ),
          ],
        ));
  }
}

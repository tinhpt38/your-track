import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../extra/const/colors.dart';
import '../../../extra/const/fonts.dart';

class OnlyIconButton extends StatelessWidget {
  const OnlyIconButton(
      {super.key,
      this.width = 153,
      this.height = 48,
      required this.iconPath,
      required this.onPress});
  final Function onPress;
  final double width;
  final double height;
  final String iconPath;
  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: () {
        onPress();
      },
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.all(Size(width, height)),
        elevation: MaterialStateProperty.all(0),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
              side: BorderSide(color: const Color(0xff262A34).withAlpha(10))),
        ),
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
      ),
      child: IconButton(
        icon: SvgPicture.asset(
          iconPath,
          colorFilter:
              ColorFilter.mode(ExtraColors.primary, BlendMode.colorDodge),
        ),
        onPressed: null,
      ),
    );
  }
}

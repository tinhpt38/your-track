import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../extra/const/colors.dart';

class CicleIconButton extends StatelessWidget {
  const CicleIconButton(
      {super.key, required this.onPress, required this.iconPath});

  final Function onPress;
  final String iconPath;

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Material(
        color: ExtraColors.primary, // Button color
        child: InkWell(
          onTap: () {
            onPress();
          },
          child: SizedBox(
              width: 60,
              height: 60,
              child: SvgPicture.asset(
                iconPath,
                width: 12,
                height: 12,
                colorFilter:
                    ColorFilter.mode(ExtraColors.primary, BlendMode.color),
              )),
        ),
      ),
    );
  }
}

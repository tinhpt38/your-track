import 'package:flutter/material.dart';

import '../../../extra/const/colors.dart';
import '../../../extra/const/fonts.dart';

class SecondaryButton extends StatelessWidget {
  const SecondaryButton(
      {super.key,
      this.width = 153,
      this.height = 48,
      required this.onPress,
      required this.label});
  final Function onPress;
  final String label;
  final double width;
  final double height;
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
            ),
          ),
          backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        ),
        child: Text(
          label,
          style: ExtraFonts.headingBold16.copyWith(color: ExtraColors.primary),
        ));
  }
}

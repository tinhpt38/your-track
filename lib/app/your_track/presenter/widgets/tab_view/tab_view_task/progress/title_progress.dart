import 'package:flutter/material.dart';

import '../../../../../extra/const/colors.dart';
import '../../../../../extra/const/fonts.dart';

class TitleProgress extends StatelessWidget {
  const TitleProgress({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
          ExtraFonts.bodySemiBold14.copyWith(color: ExtraColors.neutralSliver),
    );
  }
}

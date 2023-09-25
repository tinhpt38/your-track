import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../extra/const/colors.dart';
import '../../../extra/const/fonts.dart';
import '../../../extra/const/icons.dart';

class NavigationBack extends StatelessWidget implements PreferredSizeWidget {
  const NavigationBack(
      {super.key,
      this.height = 64,
      this.backgroundColor = Colors.white,
      required this.onBackClick,
      required this.title});
  final double height;
  final Function onBackClick;
  final String title;
  final Color backgroundColor;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: backgroundColor,
      centerTitle: false,
      title: Text(
        title,
        style: ExtraFonts.titleBold20,
      ),
      leading: IconButton(
        icon: SvgPicture.asset(ExtraIcons.arrowLeftSquare),
        onPressed: () {
          onBackClick();
        },
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(height);
}

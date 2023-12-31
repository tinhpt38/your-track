import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../extra/const/fonts.dart';
import '../../../extra/const/icons.dart';

class NavigationHabit extends StatelessWidget implements PreferredSizeWidget {
  const NavigationHabit(
      {super.key,
      this.height = 64,
      required this.backgroundColor,
      required this.onFilterClick,
      required this.title,
      required this.onDeleteClick});
  final double height;
  final Function onFilterClick;
  final Function onDeleteClick;
  final String title;
  final Color backgroundColor;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor,
      centerTitle: false,
      title: Text(
        title,
        style: ExtraFonts.titleBold20,
      ),
      leading: IconButton(
        icon: SvgPicture.asset(ExtraIcons.filter),
        onPressed: () {
          onFilterClick();
        },
      ),
      actions: [
        IconButton(
          icon: SvgPicture.asset(ExtraIcons.delete),
          onPressed: () {
            onFilterClick();
          },
        ),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(height);
}

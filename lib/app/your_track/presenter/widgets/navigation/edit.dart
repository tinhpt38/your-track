import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../extra/const/colors.dart';
import '../../../extra/const/fonts.dart';
import '../../../extra/const/icons.dart';

class NavigationEdit extends StatelessWidget implements PreferredSizeWidget {
  const NavigationEdit(
      {super.key,
      this.height = 64,
      required this.backgroundColor,
      required this.onExitClick,
      required this.title,
      required this.onDeleteClick,
      required this.onEditClick,
      required this.onPauseClick});
  final double height;
  final Function onExitClick;
  final Function onDeleteClick;
  final Function onEditClick;
  final Function onPauseClick;
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
        icon: SvgPicture.asset(ExtraIcons.arrowLeftSquare),
        onPressed: () {
          onExitClick();
        },
      ),
      actions: [
        IconButton(
          icon: SvgPicture.asset(ExtraIcons.delete),
          onPressed: () {
            onDeleteClick();
          },
        ),
        IconButton(
          icon: SvgPicture.asset(ExtraIcons.edit),
          onPressed: () {
            onEditClick();
          },
        ),
        IconButton(
          icon: SvgPicture.asset(ExtraIcons.pause),
          onPressed: () {
            onPauseClick();
          },
        ),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(height);
}

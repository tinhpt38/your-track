import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../extra/const/colors.dart';
import '../../../extra/const/fonts.dart';
import '../../../extra/const/icons.dart';

class NavigationNewHabit extends StatelessWidget
    implements PreferredSizeWidget {
  const NavigationNewHabit(
      {super.key,
      this.height = 64,
      required this.backgroundColor,
      required this.onExitClick,
      required this.title,
      required this.onSaveClick});
  final double height;
  final Function onExitClick;
  final Function onSaveClick;
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
        icon: SvgPicture.asset(ExtraIcons.closeSquare),
        onPressed: () {
          onExitClick();
        },
      ),
      actions: [
        TextButton(
            onPressed: () {
              onSaveClick();
            },
            child: Text(
              "Save",
              style:
                  ExtraFonts.headingBold16.copyWith(color: ExtraColors.primary),
            ))
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(height);
}

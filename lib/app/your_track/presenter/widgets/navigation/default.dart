import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:your_track/app/your_track/extra/const/colors.dart';

import '../../../extra/const/fonts.dart';
import '../../../extra/const/icons.dart';
import '../users/avatar.dart';

class NavigationDefault extends StatelessWidget implements PreferredSizeWidget {
  const NavigationDefault(
      {super.key,
      this.height = 64,
      required this.backgroundColor,
      required this.onFilterClick,
      required this.title});
  final double height;
  final Function onFilterClick;
  final String title;
  final Color backgroundColor;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor,
      elevation: 0,
      centerTitle: false,
      title: Text(
        title,
        style: ExtraFonts.titleBold20.copyWith(color: ExtraColors.neutralBlack),
      ),
      leading: IconButton(
        icon: SvgPicture.asset(ExtraIcons.filter),
        onPressed: () {
          onFilterClick();
        },
      ),
      actions: const [Avatar()],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(height);
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../extra/const/fonts.dart';
import '../../../extra/const/icons.dart';
import '../users/avatar.dart';

class NavigationDefault extends StatelessWidget implements PreferredSizeWidget {
  const NavigationDefault(
      {super.key, this.height = 64, required this.onClickFilter});
  final double height;
  final Function onClickFilter;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: false,
      title: Text(
        'Today',
        style: ExtraFonts.titleBold20,
      ),
      leading: IconButton(
        icon: SvgPicture.asset(ExtraIcons.filter),
        onPressed: () {
          onClickFilter();
        },
      ),
      actions: const [Avatar()],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(height);
}

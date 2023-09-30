import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:your_track/app/your_track/extra/const/colors.dart';

import '../../../extra/const/fonts.dart';
import '../../../extra/const/icons.dart';

class DropDown extends StatelessWidget {
  const DropDown(
      {super.key,
      required this.width,
      this.isLarge = true,
      required this.items,
      required this.itemSelected,
      required this.onChange,
      required this.isOpen,
      required this.onMenuStateChange});
  final double width;
  final bool isLarge;
  final List<String> items;
  final String itemSelected;
  final Function(String?) onChange;
  final Function(bool) onMenuStateChange;
  final bool isOpen;
  @override
  Widget build(BuildContext context) {
    String value() {
      return itemSelected.isEmpty ? items[0] : itemSelected;
    }

    double widthScreen() {
      return isLarge ? width : width * 0.45;
    }

    Widget icon() {
      return !isOpen
          ? SvgPicture.asset(
              ExtraIcons.arrowDownCircleDark,
            )
          : SvgPicture.asset(ExtraIcons.arrowUpCircleDark);
    }

    return SizedBox(
      width: widthScreen(),
      child: DropdownButtonHideUnderline(
        child: DropdownButton2<String>(
          onMenuStateChange: onMenuStateChange,
          hint: Text(
            value(),
            style: ExtraFonts.bodySemiBold14
                .copyWith(color: ExtraColors.neutralWhite),
            overflow: TextOverflow.ellipsis,
          ),
          items: items
              .map((String item) => DropdownMenuItem<String>(
                    value: item,
                    child: Text(
                      item,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: ExtraColors.neutralSliver,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ))
              .toList(),
          value: value(),
          onChanged: onChange,
          buttonStyleData: ButtonStyleData(
            height: 55,
            width: widthScreen(),
            padding: const EdgeInsets.only(left: 14, right: 14),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: ExtraColors.secondary.withOpacity(0.4),
            ),
          ),
          iconStyleData: IconStyleData(
            icon: icon(),
            iconSize: 24,
          ),
          dropdownStyleData: DropdownStyleData(
            maxHeight: 255,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              color: ExtraColors.neutralWhite,
            ),
            offset: const Offset(0, -5),
            scrollbarTheme: ScrollbarThemeData(
              thickness: MaterialStateProperty.all<double>(0),
            ),
          ),
        ),
      ),
    );
  }
}

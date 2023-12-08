import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:your_track/app/your_track/extra/const/colors.dart';
import 'package:your_track/app/your_track/extra/const/colors.dart';
import 'package:your_track/app/your_track/extra/const/fonts.dart';
import 'package:your_track/app/your_track/extra/const/icons.dart';

class ExtraInput extends StatefulWidget {
  const ExtraInput(
      {super.key,
      required this.control,
      required this.label,
      required this.hint,
      this.primaryColor = ExtraColors.primary});
  final TextEditingController control;
  final String label;
  final String hint;
  final Color primaryColor;

  @override
  State<ExtraInput> createState() => _ExtraInputState();
}

class _ExtraInputState extends State<ExtraInput> {
  late final TextEditingController _control;
  bool _showClearBtn = false;

  @override
  void initState() {
    _control = widget.control;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 12),
          child: Text(
            widget.label,
            style: ExtraFonts.bodySemiBold14.copyWith(
              color: ExtraColors.neutralSliver,
            ),
          ),
        ),
        TextField(
          autofocus: false,
          controller: _control,
          style: ExtraFonts.headingBold16,
          onChanged: (value) {
            setState(() {
              _showClearBtn = value.isNotEmpty;
            });
          },
          cursorColor: widget.primaryColor,
          decoration: InputDecoration(
            hintText: widget.hint,
            hintStyle: ExtraFonts.headingSemiBold16
                .copyWith(color: ExtraColors.neutralSliver),
            suffixIcon: _showClearBtn
                ? IconButton(
                    onPressed: () {
                      _control.clear();
                      setState(() {
                        _showClearBtn = false;
                      });
                    },
                    icon: SvgPicture.asset(
                      ExtraIcons.closeSquareDark,
                    ),
                  )
                : null,
            contentPadding: const EdgeInsets.all(12),
            filled: true,
            fillColor: ExtraColors.diamond.withOpacity(0.4),
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                    topRight: Radius.circular(2),
                    topLeft: Radius.circular(2))),
            border: const OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                    topRight: Radius.circular(2),
                    topLeft: Radius.circular(2))),
          ),
        )
      ],
    );
  }
}

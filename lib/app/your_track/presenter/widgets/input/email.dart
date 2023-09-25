import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:your_track/app/your_track/extra/const/colors.dart';
import 'package:your_track/app/your_track/extra/const/colors.dart';
import 'package:your_track/app/your_track/extra/const/fonts.dart';
import 'package:your_track/app/your_track/extra/const/icons.dart';

class EmailInput extends StatefulWidget {
  const EmailInput({super.key, required this.control});
  final TextEditingController control;

  @override
  State<EmailInput> createState() => _EmailInputState();
}

class _EmailInputState extends State<EmailInput> {
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
            "Your Email",
            style: ExtraFonts.bodyMedium14.copyWith(
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
          cursorColor: ExtraColors.neutralSliver,
          decoration: InputDecoration(
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
            fillColor: ExtraColors.secondary.withOpacity(0.4),
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

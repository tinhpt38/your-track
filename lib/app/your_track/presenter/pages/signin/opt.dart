import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:pinput/pinput.dart';

import '../../../extra/const/colors.dart';
import '../../../extra/const/fonts.dart';
import '../../widgets/buttons/primary.dart';
import '../../widgets/navigation/back.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class OPTPage extends StatefulWidget {
  const OPTPage({super.key});

  @override
  State<OPTPage> createState() => _OPTPageState();
}

class _OPTPageState extends State<OPTPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: ExtraColors.neutralWhite,
      appBar: NavigationBack(
        title: '',
        onBackClick: () {
          Modular.to.pop(context);
        },
        backgroundColor: ExtraColors.neutralWhite,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppLocalizations.of(context)?.verifyOtpCode ?? "",
              style: ExtraFonts.titleBold30
                  .copyWith(color: ExtraColors.neutralGreen),
            ),
            Padding(
                padding: const EdgeInsets.only(top: 24, bottom: 8),
                child: Center(
                  child: Pinput(
                    length: 6,
                    onCompleted: (pin) => {print(pin)},
                  ),
                )),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0),
              child: PrimaryButton(
                  width: size.width * 0.9,
                  label: AppLocalizations.of(context)?.continueLabel ?? "",
                  onPress: () {
                    Modular.to.pushNamed("/home");
                  }),
            ),
          ],
        ),
      ),
    );
  }
}

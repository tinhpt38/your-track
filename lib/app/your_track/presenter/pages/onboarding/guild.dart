import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_triple/flutter_triple.dart';
import 'package:your_track/app/your_track/extra/const/icons.dart';
import 'package:your_track/app/your_track/presenter/stores/guild/guild.state.dart';
import 'package:your_track/app/your_track/presenter/stores/guild/guild.store.dart';
import 'package:your_track/app/your_track/presenter/widgets/buttons/only_icon.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../extra/const/colors.dart';
import '../../../extra/const/fonts.dart';
import '../../widgets/buttons/primary.dart';
import '../../widgets/buttons/texticon.dart';

class GuildPage extends StatefulWidget {
  const GuildPage({super.key});

  @override
  State<GuildPage> createState() => _GuildPageState();
}

class _GuildPageState extends State<GuildPage> {
  final GuildStore _store = GuildStore();

  @override
  void initState() {
    super.initState();
    // _store.gets();
  }

  @override
  void dispose() {
    _store.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ScopedBuilder<GuildStore, GuildState>(
      store: _store,
      onState: (context, state) {
        return Scaffold(
            body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: size.height * 0.5,
              child: PageView(
                controller: _store.controller,
                onPageChanged: _store.pageChange,
                children: [
                  slideView(0),
                  slideView(1),
                  slideView(2),
                  slideView(3)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 1 / 5,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [0, 1, 2, 3].asMap().entries.map((entry) {
                    return Container(
                      width: 8,
                      height: 8,
                      decoration: BoxDecoration(
                          // ignore: unrelated_type_equality_checks
                          color: state.currentSide == entry.value
                              ? ExtraColors.primary
                              : ExtraColors.secondary,
                          borderRadius: BorderRadius.circular(90)),
                    );
                  }).toList(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              child: Text(
                  [
                    AppLocalizations.of(context)?.benefits1 ?? "",
                    AppLocalizations.of(context)?.benefits2 ?? "",
                    AppLocalizations.of(context)?.benefits3 ?? "",
                    AppLocalizations.of(context)?.benefits4 ?? ""
                  ][state.currentSide],
                  style: ExtraFonts.titleBold30
                      .copyWith(color: ExtraColors.neutralGreen)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              child: Text(
                  AppLocalizations.of(context)?.benefisDescription ?? "",
                  style: ExtraFonts.bodyMedium14
                      .copyWith(color: ExtraColors.neutralSliver)),
            ),
            Container(
              alignment: Alignment.center,
              child: PrimaryButton(
                  width: size.width * 0.9,
                  label: AppLocalizations.of(context)?.continueLabel ?? "",
                  onPress: () {
                    Modular.to.pushNamed("/login");
                  }),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OnlyIconButton(
                    iconPath: ExtraIcons.message,
                    onPress: () {
                      // ignore: avoid_print
                      print("Continue with Google");
                    },
                  ),
                  OnlyIconButton(
                    iconPath: ExtraIcons.message,
                    onPress: () {
                      // ignore: avoid_print
                      print("Continue with Facebook");
                    },
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 64, vertical: 16),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: AppLocalizations.of(context)?.agreeWith ?? "",
                  style: ExtraFonts.captionMedium12
                      .copyWith(color: ExtraColors.neutralSliver),
                  children: <TextSpan>[
                    TextSpan(
                      text: AppLocalizations.of(context)?.termOfSerivce ?? "",
                      style: ExtraFonts.captionBold12.copyWith(
                        color: ExtraColors.semainticPink,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
      },
      onError: (context, error) => Center(child: Text(error.toString())),
      onLoading: (context) => const Center(child: CircularProgressIndicator()),
    );
  }

  Widget slideView(int currentSide) {
    return Image.asset(
      [
        "assets/images/2.png",
        "assets/images/3.png",
        "assets/images/6.png",
        "assets/images/4.png"
      ][currentSide],
    );
  }
}

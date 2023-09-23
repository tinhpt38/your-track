import 'package:flutter/material.dart';
import 'package:flutter_triple/flutter_triple.dart';
import 'package:your_track/app/your_track/extra/const/icons.dart';
import 'package:your_track/app/your_track/presenter/stores/guild/auth.state.dart';
import 'package:your_track/app/your_track/presenter/stores/guild/auth.store.dart';
import 'package:your_track/app/your_track/presenter/widgets/buttons/only_icon.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../extra/const/colors.dart';
import '../../../extra/const/fonts.dart';
import '../../widgets/buttons/texticon.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  final AuthStore _store = AuthStore();

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
    return ScopedBuilder<AuthStore, AuthState>(
      store: _store,
      onState: (context, state) {
        return Scaffold(
            body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: PageView(
                controller: _store.controller,
                onPageChanged: _store.pageChange,
                children: [slideView(0), slideView(1), slideView(2)],
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
                          color: ExtraColors.primary,
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
                    AppLocalizations.of(context)?.benefits3 ?? ""
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
            TextIconButton(
                width: size.width * 0.8,
                iconPath: ExtraIcons.message,
                onPress: () {},
                label: AppLocalizations.of(context)?.authAction ?? ""),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OnlyIconButton(
                    iconPath: ExtraIcons.message,
                    onPress: () {},
                  ),
                  OnlyIconButton(
                    iconPath: ExtraIcons.message,
                    onPress: () {},
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 64, vertical: 8),
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
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            [
              "assets/images/2.png",
              "assets/images/3.png",
              "assets/images/4.png"
            ][currentSide],
          )
        ],
      ),
    );
  }
}

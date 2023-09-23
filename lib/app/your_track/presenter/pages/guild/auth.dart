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
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ScopedBuilder<AuthStore, AuthState>(
      store: _store,
      onState: (context, state) {
        return Scaffold(
            body: Column(
          children: [
            Expanded(
              child: Container(
                
              ),
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
            Spacer()
          ],
        ));
      },
      onError: (context, error) => Center(child: Text(error.toString())),
      onLoading: (context) => const Center(child: CircularProgressIndicator()),
    );
  }
}

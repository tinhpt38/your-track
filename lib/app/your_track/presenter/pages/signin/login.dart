import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_triple/flutter_triple.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:your_track/app/your_track/domain/repositories/auth.repositories.dart';
import 'package:your_track/app/your_track/domain/usecasees/sign_in_uc.dart';
import 'package:your_track/app/your_track/extra/const/colors.dart';
import 'package:your_track/app/your_track/extra/const/fonts.dart';
import 'package:your_track/app/your_track/presenter/stores/sign_in/signin.state.dart';
import 'package:your_track/app/your_track/presenter/stores/sign_in/signin.store.dart';
import 'package:your_track/app/your_track/presenter/widgets/buttons/primary.dart';
import 'package:your_track/app/your_track/presenter/widgets/input/email.dart';
import 'package:your_track/app/your_track/presenter/widgets/input/password.dart';
import 'package:your_track/app/your_track/presenter/widgets/input/phone.dart';
import 'package:your_track/app/your_track/presenter/widgets/navigation/back.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final SignInStore _store =
      SignInStore(SignInUseCase(authRepository: Modular.get<AuthRepository>()));

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return ScopedBuilder<SignInStore, SignInState>(
      store: _store,
      onError: (context, error) => Center(child: Text(error.toString())),
      onLoading: (context) => const Center(child: CircularProgressIndicator()),
      onState: (context, state) {
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
                  AppLocalizations.of(context)?.getStartedWith ?? "",
                  style: ExtraFonts.titleBold30
                      .copyWith(color: ExtraColors.neutralGreen),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 24, bottom: 8),
                  child: PhoneInput(
                    label: AppLocalizations.of(context)?.yourPhone ?? "",
                    onChange: (PhoneNumber val) {
                      print(val);
                    },
                  ),
                ),
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
      },
    );
  }
}

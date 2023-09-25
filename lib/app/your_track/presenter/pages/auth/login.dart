import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_triple/flutter_triple.dart';
import 'package:your_track/app/your_track/extra/const/colors.dart';
import 'package:your_track/app/your_track/presenter/stores/auth/auth.state.dart';
import 'package:your_track/app/your_track/presenter/stores/auth/auth.store.dart';
import 'package:your_track/app/your_track/presenter/widgets/navigation/back.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final AuthStore _store = AuthStore();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ScopedBuilder<AuthStore, AuthState>(
      store: _store,
      onError: (context, error) => Center(child: Text(error.toString())),
      onLoading: (context) => const Center(child: CircularProgressIndicator()),
      onState: (context, state) {
        return Scaffold(
          appBar: NavigationBack(
            title: '',
            onBackClick: () {
              Modular.to.pop(context);
            },
            backgroundColor: ExtraColors.neutralWhite,
          ),
          body: Center(
            child: const Text("This is center"),
          ),
        );
      },
    );
  }
}

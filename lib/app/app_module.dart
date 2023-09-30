import 'package:flutter_modular/flutter_modular.dart';
import 'package:your_track/app/your_track/presenter/pages/auth/login.dart';
import 'package:your_track/app/your_track/presenter/pages/onboarding/guild.dart';
import 'package:your_track/app/your_track/presenter/pages/onboarding/onboarding.dart';
import 'package:your_track/app/your_track/presenter/pages/home.dart';

class AppModule extends Module {
  @override
  void binds(i) {}

  @override
  void routes(r) {
    // r.child('/',
    //     child: (context) => const OnboardingPage(),
    //     children: [ChildRoute("/auth", child: (context) => const AuthPage())]);
    r.child('/', child: (context) => const OnboardingPage());
    r.child('/guild', child: (context) => const GuildPage());
    r.child('/login', child: (context) => const LoginPage());
    r.child('/home', child: (context) => const HomePage());
  }
}

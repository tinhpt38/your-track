import 'package:flutter_modular/flutter_modular.dart';
import 'package:your_track/app/your_track/domain/repositories/auth.repositories.dart';
import 'package:your_track/app/your_track/domain/usecasees/sign_in_uc.dart';
import 'package:your_track/app/your_track/infra/datasources/local/auth_datasource.dart';
import 'package:your_track/app/your_track/infra/datasources/remote/auth_datasource_fake.dart';
import 'package:your_track/app/your_track/infra/datasources/remote/auth_remote_datasource.dart';
import 'package:your_track/app/your_track/infra/repositories/auth_repository_impl.dart';
import 'package:your_track/app/your_track/presenter/pages/signin/login.dart';
import 'package:your_track/app/your_track/presenter/pages/onboarding/guild.dart';
import 'package:your_track/app/your_track/presenter/pages/onboarding/onboarding.dart';
import 'package:your_track/app/your_track/presenter/pages/home.dart';
import 'package:your_track/app/your_track/presenter/pages/signin/opt.dart';

class AppModule extends Module {
  @override
  void binds(i) {
    AuthLocalDataSource authLocalDataSource = AuthLocalDataSource();
    AuthRemoteDataSource authRemoteDataSource = AuthRemoteDataSourceFirebase();

    AuthRepository authRepository = AuthRepositoryImpl(
      localDataSource: authLocalDataSource,
      remoteDataSource: authRemoteDataSource,
    );
    i.addInstance(authRepository);
  }

  @override
  void routes(r) {
    // r.child('/',
    //     child: (context) => const OnboardingPage(),
    //     children: [ChildRoute("/auth", child: (context) => const AuthPage())]);
    // r.child('/', child: (context) => const HomePage());
    r.child('/', child: (context) => const OnboardingPage());
    r.child('/guild', child: (context) => const GuildPage());
    r.child('/login', child: (context) => const LoginPage());
    r.child('/opt', child: (context) => const OPTPage());
    r.child('/home', child: (context) => const HomePage());
  }
}

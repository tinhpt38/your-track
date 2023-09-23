import 'package:flutter_modular/flutter_modular.dart';
import 'package:your_track/app/your_track/presenter/pages/home.dart';

class AppModule extends Module {
  @override
  void binds(i) {}

  @override
  void routes(r) {
    r.child('/', child: (context) => const HomePage());
  }
}

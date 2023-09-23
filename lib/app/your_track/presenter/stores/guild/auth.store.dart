import 'package:flutter_triple/flutter_triple.dart';
import 'package:your_track/app/your_track/presenter/stores/guild/auth.state.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AuthStore extends Store<AuthState> {
  AuthStore() : super(AuthInitState(0));

  void wipeNext() => update(AuthDataState(state.currentSide + 1));
  void wipePrev() => update(AuthDataState(state.currentSide - 1));
}

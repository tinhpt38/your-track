import 'package:flutter_triple/flutter_triple.dart';
import 'package:your_track/app/your_track/presenter/stores/auth/auth.state.dart';

class AuthStore extends Store<AuthState> {
  AuthStore() : super(AuthInitState());
  
}

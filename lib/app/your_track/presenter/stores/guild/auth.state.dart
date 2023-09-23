abstract class AuthState {
  final int currentSide;
  AuthState(this.currentSide);
}

class AuthInitState extends AuthState {
  AuthInitState(int currentSide) : super(currentSide);
}

class AuthDataState extends AuthState {
  AuthDataState(int currentSide) : super(currentSide);
}

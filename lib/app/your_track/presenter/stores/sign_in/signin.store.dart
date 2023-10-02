import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_triple/flutter_triple.dart';

import 'package:your_track/app/your_track/presenter/stores/sign_in/signin.state.dart';

import '../../../domain/usecasees/sign_in_uc.dart';
import '../../../domain/value_object/email.dart';
import '../../../domain/value_object/password.dart';

class SignInStore extends Store<SignInState> {
  SignInStore(this._signInUseCase) : super(SignInInitState());

  final SignInUseCase _signInUseCase;

  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void emailChanged(String value) {
    try {
      Email email = Email((email) => email..value = value);

      SignInDataState dataState = SignInDataState(
          email: email,
          emailStatus: EmailStatus.valid,
          passwordStatus: PasswordStatus.valid,
          formStatus: FormStatus.valid);

      update(dataState);
    } on ArgumentError {
      // setError(newError)
      setError(Exception('Error: state can\'t be > 4'));
    }
  }

  void passwordChanged(String value) {
    try {
      Password password = Password((password) => password..value = value);
      SignInDataState dataState = SignInDataState(
          password: password,
          emailStatus: EmailStatus.valid,
          passwordStatus: PasswordStatus.valid,
          formStatus: FormStatus.valid);

      update(dataState);
    } on ArgumentError {
      // emit(state.copyWith(passwordStatus: PasswordStatus.invalid));
      setError(Exception('Error: state can\'t be > 4'));
    }
  }

  Future<void> signIn() async {
    SignInDataState dataState = SignInDataState(
        emailStatus: EmailStatus.valid,
        passwordStatus: PasswordStatus.valid,
        formStatus: FormStatus.valid);

    update(dataState);

    if (!(state.emailStatus == EmailStatus.valid) ||
        !(state.passwordStatus == PasswordStatus.valid)) {
      // emit(state.copyWith(formStatus: FormStatus.invalid));
      // emit(state.copyWith(formStatus: FormStatus.initial));
      return;
    }

    // emit(state.copyWith(formStatus: FormStatus.submissionInProgress));
    try {
      await _signInUseCase(
        SignInParams(
          email: state.email!,
          password: state.password!,
        ),
      );
      // emit(state.copyWith(formStatus: FormStatus.submissionSuccess));
    } catch (err) {
      // emit(state.copyWith(formStatus: FormStatus.submissionFailure));
      setError(Exception('Error: state can\'t be > 4'));
    }
  }
}

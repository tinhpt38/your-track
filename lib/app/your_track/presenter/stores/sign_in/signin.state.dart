import '../../../domain/value_object/email.dart';
import '../../../domain/value_object/password.dart';

abstract class SignInState {
  final Email? email;
  final Password? password;
  final EmailStatus emailStatus;
  final PasswordStatus passwordStatus;
  final FormStatus formStatus;
  const SignInState({
    this.email,
    this.password,
    this.emailStatus = EmailStatus.unknown,
    this.passwordStatus = PasswordStatus.unknown,
    this.formStatus = FormStatus.initial,
  });
}

class SignInInitState extends SignInState {
  SignInInitState();
}

class SignInDataState extends SignInState {
  SignInDataState(
      {Email? email,
      Password? password,
      required EmailStatus emailStatus,
      required PasswordStatus passwordStatus,
      required FormStatus formStatus})
      : super(
            email: email,
            password: password,
            emailStatus: emailStatus,
            passwordStatus: passwordStatus,
            formStatus: formStatus);

  @override
  List<Object?> get props => [
        email,
        password,
        emailStatus,
        passwordStatus,
        formStatus,
      ];
}

enum EmailStatus { unknown, valid, invalid }

enum FormStatus {
  initial,
  valid,
  invalid,
  submissionInProgress,
  submissionSuccess,
  submissionFailure,
}

enum PasswordStatus { unknown, valid, invalid }

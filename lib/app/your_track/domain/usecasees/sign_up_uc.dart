import '../entities/auth.entity.dart';
import '../repositories/auth.repositories.dart';
import '../value_object/email.dart';
import '../value_object/password.dart';

class SignUpUseCase {
  final AuthRepository authRepository;

  SignUpUseCase({required this.authRepository});

  Future<AuthUser> call(SignUpParams params) async {
    try {
      AuthUser authUser = await authRepository.signUp(
        email: params.email.value,
        password: params.password.value,
      );
      return authUser;
    } on ArgumentError catch (error) {
      throw Exception(error);
    } catch (error) {
      throw Exception(error);
    }
  }
}

class SignUpParams {
  final Email email;
  final Password password;

  SignUpParams({
    required this.email,
    required this.password,
  });
}

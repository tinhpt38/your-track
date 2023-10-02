import 'package:your_track/app/your_track/domain/repositories/auth.repositories.dart';

class AuthEntity {
  final AuthRepo authRepo = AuthRepo();

  createUser() {
    authRepo.create(request: null);
  }
}

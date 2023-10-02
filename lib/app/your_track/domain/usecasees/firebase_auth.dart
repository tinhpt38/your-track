import 'package:your_track/app/your_track/domain/entities/auth.entity.dart';

class FirebaseAuthUsecase {
  FirebaseAuthUsecase();

  final AuthEntity _entity = AuthEntity();

  login() {
    // entity
  }

  reigster() {
    // Xử lý dữ liệu truyền vào
    _entity.createUser();
  }

  logout() {}

  deleteAccount() {}
}

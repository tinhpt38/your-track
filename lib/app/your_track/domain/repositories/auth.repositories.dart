import 'package:your_track/app/your_track/domain/models/user.dart';
import 'package:your_track/app/your_track/infra/repositories/base_repo.dart';
import 'package:your_track/app/your_track/infra/state/data.state.dart';

class AuthRepo extends BaseRepository {
  @override
  Future<DataState<User>?> listAll<User>({required request}) {
    // TODO: implement listAll
    return super.listAll(request: request);
  }

  @override
  Future<DataState<User>?> retrieve<User>({required request}) {
    // TODO: implement retrieve
    return super.retrieve(request: request);
  }

  @override
  Future<DataState<User>?> create<User>({required request}) {
    // TODO: implement create
    return super.create(request: request);
  }

  @override
  Future<DataState<User>?> delete<User>({required request}) {
    // TODO: implement delete
    return super.delete(request: request);
  }
}

import 'package:your_track/app/your_track/infra/errors/base/errors.dart';

abstract class DataState<T> {
  final T? data;
  final Erros? error;

  const DataState({this.data, this.error});
}

class DataSuccess<T> extends DataState<T> {
  const DataSuccess(T data) : super(data: data);
}

class DataFailed<T> extends DataState<T> {
  const DataFailed(Erros error) : super(error: error);
}

class DataNotSet<T> extends DataState<T> {
  const DataNotSet();
}

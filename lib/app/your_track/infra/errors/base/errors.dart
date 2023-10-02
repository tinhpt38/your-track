import 'dart:core';

abstract class Erros implements Exception {
  late final dynamic message;
  Erros(this.message);
}

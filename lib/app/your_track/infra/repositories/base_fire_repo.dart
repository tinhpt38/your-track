import 'package:flutter/material.dart';
import 'package:your_track/app/your_track/infra/errors/base/errors.dart';
import 'package:your_track/app/your_track/infra/state/data.state.dart';

abstract class BaseFireRepository {
  @protected
  Future<DataState<T>?> listAll<T>() async {
    try {
      return null;
    } on Erros catch (error) {
      return DataFailed(error);
    }
  }

  @protected
  Future<DataState<T>?> retrieve<T>() async {
    try {
      return null;
    } on Erros catch (error) {
      return DataFailed(error);
    }
  }

  @protected
  Future<DataState<T>?> create<T>() async {
    try {
      return null;
    } on Erros catch (error) {
      return DataFailed(error);
    }
  }

  @protected
  Future<DataState<T>?> update<T>() async {
    try {
      return null;
    } on Erros catch (error) {
      return DataFailed(error);
    }
  }

  @protected
  Future<DataState<T>?> delete<T>() async {
    try {
      return null;
    } on Erros catch (error) {
      return DataFailed(error);
    }
  }
}

import 'package:flutter/material.dart';
import 'package:your_track/app/your_track/infra/errors/base/errors.dart';
import 'package:your_track/app/your_track/infra/state/data.state.dart';

abstract class BaseRepository {
  @protected
  Future<DataState<T>?> listAll<T>({
    // required Future<HttpResponse<T>> Function() request,
    required request,
  }) async {
    try {
      
      return null;
    } on Erros catch (error) {
      return DataFailed(error);
    }
  }

  @protected
  Future<DataState<T>?> retrieve<T>({
    // required Future<HttpResponse<T>> Function() request,
    required request,
  }) async {
    try {
      return null;
    } on Erros catch (error) {
      return DataFailed(error);
    }
  }

  @protected
  Future<DataState<T>?> create<T>({
    // required Future<HttpResponse<T>> Function() request,
    required request,
  }) async {
    try {
      return null;
    } on Erros catch (error) {
      return DataFailed(error);
    }
  }

  @protected
  Future<DataState<T>?> update<T>({
    // required Future<HttpResponse<T>> Function() request,
    required request,
  }) async {
    try {
      return null;
    } on Erros catch (error) {
      return DataFailed(error);
    }
  }

  @protected
  Future<DataState<T>?> delete<T>({
    // required Future<HttpResponse<T>> Function() request,
    required request,
  }) async {
    try {
      return null;
    } on Erros catch (error) {
      return DataFailed(error);
    }
  }
}

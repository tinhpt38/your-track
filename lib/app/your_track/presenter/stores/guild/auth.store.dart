import 'package:flutter/material.dart';
import 'package:flutter_triple/flutter_triple.dart';
import 'package:your_track/app/your_track/presenter/stores/guild/auth.state.dart';

class AuthStore extends Store<AuthState> {
  AuthStore() : super(AuthInitState(0));

  final _controller = PageController(
    initialPage: 0,
  );

  get controller => _controller;

  void dispose() {
    _controller.dispose();
  }

  void pageChange(int index) {
    update(AuthDataState(index));
  }
}

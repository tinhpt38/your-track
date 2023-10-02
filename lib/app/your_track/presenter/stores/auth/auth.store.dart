import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_triple/flutter_triple.dart';
import 'package:your_track/app/your_track/domain/usecasees/firebase_auth.dart';
import 'package:your_track/app/your_track/presenter/stores/auth/auth.state.dart';

class AuthStore extends Store<AuthState> {
  AuthStore() : super(AuthInitState());

  final FirebaseAuthUsecase firebaseAuth = FirebaseAuthUsecase();

  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
}

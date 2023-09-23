import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:your_track/app/app_widget.dart';

import 'app/app_module.dart';

void main() {
  return runApp(ModularApp(module: AppModule(), child: const AppWidget()));
}

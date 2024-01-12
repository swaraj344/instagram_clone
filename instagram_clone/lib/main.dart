import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:instagram_clone/graphql/scalars.dart';

import 'app_module.dart';
import 'app_widget.dart';

Future<void> main() async {
  await AppModule.initialize();
  Modular.setInitialRoute('/splash');
  runApp(ModularApp(module: AppModule(), child: const AppWidget()));
}

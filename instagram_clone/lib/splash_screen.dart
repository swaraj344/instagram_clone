import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:instagram_clone/features/auth/auth_routes.dart';
import 'package:instagram_clone/features/auth/auth_services/i_auth_services.dart';
import 'package:instagram_clone/features/home/home_routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Completer<void> completer = Completer<void>();

  @override
  void initState() {
    init();
    super.initState();
  }

  init() async {
    Future.delayed(const Duration(seconds: 2), () {
      completer.complete();
    });

    final hasAuth = await Modular.get<IAuthServices>().hasAuthSession();

    await completer.future;
    if (hasAuth) {
      Modular.to.navigate(HomeRoutes.feeds);
    } else {
      Modular.to.navigate(AuthRoutes.base);
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Splash Screen"),
      ),
    );
  }
}

import 'dart:async';

import 'package:flutter_modular/flutter_modular.dart';
import 'package:instagram_clone/features/home/home_routes.dart';

class RedirectGuard extends RouteGuard {
  RedirectGuard() : super(redirectTo: '/feeds');

  @override
  FutureOr<bool> canActivate(String path, ParallelRoute route) {
    print(path);
    print(route.name);
    if (path == HomeRoutes.base) {
      return false;
    }

    return true;
  }
}

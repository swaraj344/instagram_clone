import 'package:flutter_modular/flutter_modular.dart';

import 'package:graphql/client.dart';
import 'package:instagram_clone/core/env.dart';
import 'package:instagram_clone/data/db/database.dart';
import 'package:instagram_clone/features/auth/auth_module.dart';
import 'package:instagram_clone/features/auth/auth_routes.dart';
import 'package:instagram_clone/features/base/base_module.dart';
import 'package:instagram_clone/data/graphql/graphql_client.dart';
import 'package:instagram_clone/splash_screen.dart';

import 'features/auth/auth_services/auth_services.dart';
import 'features/auth/auth_services/i_auth_services.dart';

class AppModule extends Module {
  static String environment =
      const String.fromEnvironment('ENVIRONMENT', defaultValue: 'DEV');

  static Future<void> initialize() async {}

  @override
  void binds(i) {
    i.addSingleton<AppLocalDb>(() => AppLocalDb());
    i.addSingleton<EnvironmentConfig>(
        () => EnvironmentConfig.fromEnv(environment.env));

    i.addLazySingleton<GraphQLClient>(() => getGraphQlClient(i.get(), null));
    i.addLazySingleton<IAuthServices>(() => AuthService(
          i.get(),
          i.get(),
          i.get(),
        ));
  }

  @override
  void routes(r) {
    r.child('/splash', child: (context) => const SplashScreen());
    r.module(AuthRoutes.base, module: AuthModule());
    r.module(
      '/',
      module: BaseModule(),
    );
  }
}

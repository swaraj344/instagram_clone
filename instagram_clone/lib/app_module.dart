import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:graphql/client.dart';
import 'package:instagram_clone/core/env.dart';
import 'package:instagram_clone/features/auth/auth_module.dart';
import 'package:instagram_clone/features/auth/auth_routes.dart';
import 'package:instagram_clone/features/home/home_module.dart';
import 'package:instagram_clone/graphql/graphql_client.dart';
import 'package:instagram_clone/splash_screen.dart';

class AppModule extends Module {
  static String environment =
      const String.fromEnvironment('ENVIRONMENT', defaultValue: 'DEV');
  static late GraphQLClient _client;
  static late FlutterSecureStorage _secureStorage;
  static late EnvironmentConfig _env;

  static Future<void> initialize() async {
    _env = EnvironmentConfig.fromEnv(environment.env);
    _secureStorage = const FlutterSecureStorage(
        aOptions: AndroidOptions(encryptedSharedPreferences: true));
    _client = await getGraphQlClient(_env, _secureStorage);
  }

  @override
  void binds(i) {
    i.addSingleton<EnvironmentConfig>(() => _env);
    i.addLazySingleton<FlutterSecureStorage>(() => _secureStorage);
    i.addLazySingleton<GraphQLClient>(() => _client);
  }

  @override
  void routes(r) {
    r.child('/splash', child: (context) => const SplashScreen());
    r.module(AuthRoutes.base, module: AuthModule());
    r.module('/', module: HomeModule());
  }
}

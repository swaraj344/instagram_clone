import 'package:dartz/dartz.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:instagram_clone/core/env.dart';
import 'package:instagram_clone/core/extensions.dart';
import 'package:instagram_clone/core/failures/failures.dart';
import 'package:instagram_clone/core/form_util_extension.dart';
import 'package:instagram_clone/features/auth/auth_services/i_auth_services.dart';

import 'package:graphql/client.dart';
import 'package:instagram_clone/graphql/graphql.dart';
import 'package:instagram_clone/graphql/graphql_client.dart';
import 'package:instagram_clone/graphql/queries.graphql.dart';

class AuthService extends IAuthServices {
  final GraphQLClient _qlClient;
  final FlutterSecureStorage _secureStorage;
  final EnvironmentConfig _environmentConfig;

  AuthService(this._qlClient, this._secureStorage, this._environmentConfig);
  @override
  Future<Either<InfraFailure, Unit>> resigterUser({
    required String userName,
    required String email,
    required String password,
    required String fullName,
  }) async {
    final res =
        await _qlClient.mutate$RegisterUser(Options$Mutation$RegisterUser(
            variables: Variables$Mutation$RegisterUser(
                data: Input$CreateUserData(
      userName: userName,
      email: email,
      password: password,
      fullName: fullName,
    ))));

    if (res.data != null && res.parsedData != null) {
      print("Id:${res.parsedData?.createUser?.id}");
      return right(unit);
    }
    print(res);

    return left(const InfraFailure.unexpected());
  }

  @override
  Future<Either<InfraFailure, Unit>> signIn(
      {required String emailOrUsernameOrPhone,
      required String password}) async {
    if (!emailOrUsernameOrPhone.isEmail) {
      return left(const InfraFailure.unexpected());
    }

    final res = await _qlClient.query$SignInWithEmailAndPassword(
        Options$Query$SignInWithEmailAndPassword(
            fetchPolicy: FetchPolicy.noCache,
            variables: Variables$Query$SignInWithEmailAndPassword(
                email: emailOrUsernameOrPhone, password: password)));

    if (!res.hasException &&
        res.parsedData != null &&
        res.parsedData!.singinwithEmailPassword != null) {
      await _createAuthSession(res.parsedData!.singinwithEmailPassword!);
      return right(unit);
    }
    return left(const InfraFailure.serverError());
  }

  Future<void> _createAuthSession(String token) async {
    await _secureStorage.setToken(token);
    Modular.replaceInstance<GraphQLClient>(
        await getGraphQlClient(_environmentConfig, _secureStorage));
    Modular.replaceInstance<IAuthServices>(
        AuthService(Modular.get(), _secureStorage, _environmentConfig));
  }

  @override
  signOut() async {
    print((_qlClient.link as HttpLink).defaultHeaders);
    await _secureStorage.deleteAll();
    Modular.replaceInstance<GraphQLClient>(
        await getGraphQlClient(_environmentConfig, _secureStorage));
    Modular.replaceInstance<IAuthServices>(
        AuthService(Modular.get(), _secureStorage, _environmentConfig));
    print((_qlClient.link as HttpLink).defaultHeaders);
    print((Modular.get<GraphQLClient>().link as HttpLink).defaultHeaders);

    // print(await getGraphQlClient(_environmentConfig, _secureStorage));
  }

  Future<bool> hasToken() async {
    final token = await _secureStorage.getToken();
    if (token == null) {
      return false;
    } else {
      return true;
    }
  }
}

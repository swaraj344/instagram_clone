import 'package:dartz/dartz.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:instagram_clone/core/env.dart';
import 'package:instagram_clone/core/failures/failures.dart';
import 'package:instagram_clone/core/form_util_extension.dart';
import 'package:instagram_clone/data/db/database.dart';
import 'package:instagram_clone/features/auth/auth_services/i_auth_services.dart';

import 'package:graphql/client.dart';
import 'package:instagram_clone/data/graphql/graphql.dart';
import 'package:instagram_clone/data/graphql/graphql_client.dart';

class AuthService extends IAuthServices {
  final GraphQLClient _qlClient;

  final EnvironmentConfig _environmentConfig;
  final AppLocalDb _db;
  bool isAuthenticated = false;

  AuthService(this._qlClient, this._environmentConfig, this._db);
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
      await signIn(emailOrUsernameOrPhone: email, password: password);
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
    print(res);
    return left(const InfraFailure.serverError());
  }

  Future<void> _createAuthSession(String token) async {
    final client = getGraphQlClient(_environmentConfig, token);

    Modular.replaceInstance<GraphQLClient>(client);
    Modular.replaceInstance<IAuthServices>(AuthService(
      Modular.get(),
      _environmentConfig,
      Modular.get(),
    ));
    final userRes = await client.query$GetSessionUser();
    final userData = userRes.parsedData!.getSessionUser!;
    _db.usersDao.createUserSession(User(
      id: userData.id,
      fullName: userData.fullName,
      userName: userData.userName,
      email: userData.email,
      emailVerified: userData.emailVerified,
      createdAt: DateTime.parse(userData.createdAt!),
      isActive: true,
      authToken: token,
    ));
  }

  @override
  signOut() async {
    final user = await _db.usersDao.getLoggedInUserFuture();
    if (user != null) {
      _db.usersDao.deleteUserSession(user.id);
    }
  }

  @override
  Future<bool> hasAuthSession() async {
    final user = await _db.usersDao.getLoggedInUserFuture();
    if (user != null) {
      Modular.replaceInstance(getGraphQlClient(Modular.get(), user.authToken));
      // isAuthenticated = true;
      return true;
    } else {
      return false;
    }
  }
}

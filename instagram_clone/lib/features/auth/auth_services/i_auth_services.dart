import 'package:dartz/dartz.dart';

import '../../../core/failures/failures.dart';

abstract class IAuthServices {
  Future<Either<InfraFailure, Unit>> resigterUser({
    required String userName,
    required String email,
    required String password,
    required String fullName,
  });
  Future<Either<InfraFailure, Unit>> signIn(
      {required String emailOrUsernameOrPhone, required String password});
  signOut();
  Future<bool> hasAuthSession();
}

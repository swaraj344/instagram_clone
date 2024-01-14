import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:instagram_clone/data/db/database.dart';
import 'package:instagram_clone/features/auth/auth_routes.dart';

part 'base_state.dart';
part 'base_cubit.freezed.dart';

class BaseCubit extends Cubit<BaseState> {
  final AppLocalDb _db;
  StreamSubscription? _authSub;
  BaseCubit(this._db) : super(BaseState.initial()) {
    listenforAuthChange();
  }

  listenforAuthChange() {
    debugPrint("Listening for auth state");
    _authSub = _db.usersDao.getLoggedInUser().listen((user) {
      if (user == null) {
        Modular.to.pushNamedAndRemoveUntil(AuthRoutes.base, (p0) => false);
      } else {
        emit(state.copyWith(currentUser: user));
      }
    });
  }

  @override
  Future<void> close() {
    _authSub?.cancel();
    debugPrint("base cubit disposed");
    return super.close();
  }
}

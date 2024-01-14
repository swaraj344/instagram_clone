import 'package:flutter_modular/flutter_modular.dart';
import 'package:instagram_clone/features/auth/auth_services/auth_services.dart';
import 'package:instagram_clone/features/auth/auth_services/i_auth_services.dart';
import 'package:instagram_clone/features/auth/sign_in/cubit/sign_in_cubit.dart';
import 'package:instagram_clone/features/auth/sign_in/sign_in.dart';
import 'package:instagram_clone/features/auth/sign_up/cubit/sign_up_cubit.dart';
import 'package:instagram_clone/features/auth/sign_up/sign_up.dart';

class AuthModule extends Module {
  @override
  void routes(RouteManager r) {
    r.child('/', child: (ctx) => SignInScreen());
    r.child('/sign-up', child: (ctx) => SignUpScreen());
  }

  @override
  void binds(Injector i) {
    i.addLazySingleton<SignInCubit>(() => SignInCubit(i.get(), i.get()),
        config: BindConfig(
      onDispose: (value) {
        value.close();
      },
    ));
    i.addLazySingleton<SignUpCubit>(
        () => SignUpCubit(
              i.get(),
            ), config: BindConfig(
      onDispose: (value) {
        value.close();
      },
    ));
  }
}

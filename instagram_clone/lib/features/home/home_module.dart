import 'package:flutter_modular/flutter_modular.dart';
import 'package:instagram_clone/features/home/cubit/home_cubit.dart';
import 'package:instagram_clone/features/home/home.dart';

class HomeModule extends Module {
  @override
  void routes(RouteManager r) {
    r.child(
      '/',
      child: (context) => const HomeScreen(),
    );
  }

  @override
  void binds(Injector i) {
    i.add(() => HomeCubit());
    super.binds(i);
  }
}

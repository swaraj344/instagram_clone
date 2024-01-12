import 'package:flutter_modular/flutter_modular.dart';
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
    // TODO: implement binds
    super.binds(i);
  }
}

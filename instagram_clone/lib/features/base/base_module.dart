import 'package:flutter_modular/flutter_modular.dart';
import 'package:instagram_clone/features/add_post/add_post_module.dart';
import 'package:instagram_clone/features/base/cubit/base_cubit.dart';
import 'package:instagram_clone/features/home/home_module.dart';

class BaseModule extends Module {
  @override
  void routes(RouteManager r) {
    r.module("/", module: HomeModule());
    r.module(
      "/add-post/",
      module: AddPostModule(),
      transition: TransitionType.leftToRight,
    );
    super.routes(r);
  }

  @override
  void binds(Injector i) {
    i.addSingleton<BaseCubit>(() => BaseCubit(i.get()), config: BindConfig(
      onDispose: (value) {
        value.close();
      },
    ));
    super.binds(i);
  }
}

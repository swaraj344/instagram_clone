import 'package:flutter_modular/flutter_modular.dart';
import 'package:instagram_clone/features/add_post/add_post.dart';
import 'package:instagram_clone/features/add_post/add_post_services.dart/add_post_service.dart';
import 'package:instagram_clone/features/add_post/add_post_services.dart/i_add_post_services.dart';
import 'package:instagram_clone/features/add_post/cubit/add_post_cubit.dart';
import 'package:instagram_clone/features/add_post/publish_post.dart';

class AddPostModule extends Module {
  @override
  void routes(RouteManager r) {
    r.child(
      "/",
      child: (context) => AddPostScreen(),
    );
    r.child(
      "/publish",
      child: (context) => PublishPostScreen(),
      transition: TransitionType.rightToLeft,
    );
  }

  @override
  void binds(Injector i) {
    i.addLazySingleton<IAddPostServices>(() => AddPostService(i.get()),
        config: BindConfig());
    i.addLazySingleton<AddPostCubit>(() => AddPostCubit(i.get()),
        config: BindConfig(
      onDispose: (value) {
        value.close();
      },
    ));
  }
}

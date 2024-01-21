import 'package:flutter_modular/flutter_modular.dart';
import 'package:instagram_clone/core/route_guard/redirect_guard.dart';
import 'package:instagram_clone/features/feeds/feeds.dart';
import 'package:instagram_clone/features/home/cubit/home_cubit.dart';
import 'package:instagram_clone/features/home/home.dart';
import 'package:instagram_clone/features/home/home_routes.dart';
import 'package:instagram_clone/features/profile/profile.dart';
import 'package:instagram_clone/features/reels/reels.dart';
import 'package:instagram_clone/features/search/search.dart';

class HomeModule extends Module {
  @override
  void routes(RouteManager r) {
    r.child(
      '/',
      child: (context) => const HomeScreen(),
      children: [
        ChildRoute(
          HomeRoutes.feeds,
          child: (_) => const FeedsScreen(),
        ),
        ChildRoute(
          HomeRoutes.search,
          child: (_) => const SearchScreen(),
        ),
        ChildRoute(
          HomeRoutes.reels,
          child: (_) => const ReelScreen(),
        ),
        ChildRoute(
          HomeRoutes.profile,
          child: (_) => const ProfileScreen(),
        ),
      ],
    );
  }

  @override
  void binds(Injector i) {
    i.add(() => HomeCubit());
    super.binds(i);
  }
}

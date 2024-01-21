import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/core/colors.dart';
import 'package:instagram_clone/core/gen/assets.gen.dart';
import 'package:instagram_clone/features/home/home_routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: BottomBar(),
      body: RouterOutlet(),
    );
  }
}

class BottomBar extends StatefulWidget {
  const BottomBar({
    super.key,
  });

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  String currentPage = "/feeds";
  @override
  void initState() {
    Modular.to.addListener(() {
      if (Modular.to.path != currentPage) {
        setState(() {
          currentPage = Modular.to.path;
          print(Modular.to.path);
        });
      }
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.h,
      child: Material(
        shape: const Border(
          top: BorderSide(
            color: AppColors.fadeGray,
          ),
        ),
        child: Row(
          children: [
            BottomBarItem(
              isActive: currentPage == HomeRoutes.feeds,
              onTap: () {
                Modular.to.navigate(HomeRoutes.feeds);
              },
              activeIcon: Assets.svg.icons.home,
              inActiveIcon: Assets.svg.icons.homeOutline,
            ),
            BottomBarItem(
              isActive: currentPage == HomeRoutes.search,
              onTap: () {
                Modular.to.navigate(HomeRoutes.search);
              },
              activeIcon: Assets.svg.icons.searchOutline,
              inActiveIcon: Assets.svg.icons.search,
            ),
            BottomBarItem(
              activeIcon: Assets.svg.icons.add,
              inActiveIcon: Assets.svg.icons.add,
            ),
            BottomBarItem(
              isActive: currentPage == HomeRoutes.reels,
              onTap: () {
                Modular.to.navigate(HomeRoutes.reels);
              },
              activeIcon: Assets.svg.icons.reel,
              inActiveIcon: Assets.svg.icons.reelOutline,
            ),
            BottomBarProfileItem(
                isActive: currentPage == HomeRoutes.profile,
                onTap: () {
                  Modular.to.navigate(HomeRoutes.profile);
                },
                image: AssetImage(Assets.images.profilePlaceholder.path))
          ],
        ),
      ),
    );
  }
}

class BottomBarItem extends StatelessWidget {
  final bool isActive;
  final String activeIcon;
  final String inActiveIcon;
  final VoidCallback? onTap;
  const BottomBarItem({
    super.key,
    this.isActive = false,
    required this.activeIcon,
    required this.inActiveIcon,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
          alignment: Alignment.center,
          child: SvgPicture.asset(
            isActive ? activeIcon : inActiveIcon,
            width: 22.w,
          ),
        ),
      ),
    );
  }
}

class BottomBarProfileItem extends StatelessWidget {
  final bool isActive;
  final ImageProvider image;
  final VoidCallback? onTap;
  const BottomBarProfileItem({
    super.key,
    this.isActive = false,
    required this.image,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        alignment: Alignment.center,
        child: Container(
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
                border:
                    !isActive ? null : Border.all(color: AppColors.iconColor),
                borderRadius: const BorderRadius.all(Radius.circular(50))),
            height: 25,
            width: 25,
            child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(50)),
                child: Image(image: image))),
      ),
    );
  }
}

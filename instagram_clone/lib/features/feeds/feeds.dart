import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/core/colors.dart';
import 'package:instagram_clone/core/gen/assets.gen.dart';
import 'package:instagram_clone/core/widgets/components/post/post.dart';
import 'package:instagram_clone/core/widgets/profile_avatar.dart';

class FeedsScreen extends StatelessWidget {
  const FeedsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.white,
              floating: true,
              forceElevated: true,
              elevation: 1,
              title: SvgPicture.asset(
                Assets.svg.instagramLogo,
                width: 104.w,
              ),
              actions: [
                InkWell(
                  child: SizedBox(
                    child: SvgPicture.asset(
                      Assets.svg.icons.heart,
                      width: 24.w,
                    ),
                  ),
                ),
                SizedBox(
                  width: 24.w,
                ),
                InkWell(
                  child: SizedBox(
                    child: SvgPicture.asset(
                      Assets.svg.icons.chat,
                      width: 24.w,
                    ),
                  ),
                ),
                SizedBox(
                  width: 13.w,
                )
              ],
            ),
            SliverToBoxAdapter(
              child: DecoratedBox(
                decoration: const BoxDecoration(
                    border: Border(
                  bottom: BorderSide(
                    color: AppColors.fadeGray,
                    width: 0,
                  ),
                )),
                child: SizedBox(
                  height: 106.5.h,
                  child: ListView.separated(
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.w, vertical: 5.h),
                    itemCount: 20,
                    separatorBuilder: (context, index) => SizedBox(
                      width: 10.w,
                    ),
                    itemBuilder: (context, index) {
                      if (index == 0) {
                        return Center(
                          child: ProfileAvatar(
                            label: "Your Story",
                            image: AssetImage(
                                Assets.images.profilePlaceholder.path),
                          ),
                        );
                      }

                      return const Center(
                        child: ProfileAvatar(
                          showBorder: true,
                          label: "Username",
                        ),
                      );
                    },
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
              ),
            ),
            SliverList.builder(
              itemCount: 10,
              itemBuilder: (context, index) => const PostWidget(),
            )
          ],
        ),
      ),
    );
  }
}

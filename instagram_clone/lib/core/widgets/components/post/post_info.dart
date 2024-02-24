import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/core/colors.dart';
import 'package:instagram_clone/core/extensions.dart';
import 'package:instagram_clone/core/gen/assets.gen.dart';
import 'package:instagram_clone/core/widgets/profile_avatar.dart';

import '../../../../data/graphql/graphql.dart';
import 'read_more_text.dart';

class PostInfoWidget extends StatelessWidget {
  final Query$GetFeeds$getFeeds post;
  final AnimationController likeAnimationController;
  const PostInfoWidget({
    super.key,
    required this.likeAnimationController,
    required this.post,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  ScaleTransition(
                    scale: Tween(begin: 1.0, end: 1.2)
                        .animate(likeAnimationController),
                    child: Container(
                      alignment: Alignment.center,
                      width: 24.w,
                      height: 24.h,
                      child: SvgPicture.asset(
                        Assets.svg.icons.heart,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 12.w,
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 24.w,
                    height: 24.h,
                    child: SvgPicture.asset(
                      Assets.svg.icons.comment,
                    ),
                  ),
                  SizedBox(
                    width: 12.w,
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 24.w,
                    height: 24.h,
                    child: SvgPicture.asset(
                      Assets.svg.icons.messanger,
                    ),
                  ),
                ],
              ),
              Container(
                alignment: Alignment.center,
                width: 24.w,
                height: 24.h,
                child: SvgPicture.asset(
                  Assets.svg.icons.save,
                  // width: 24.w,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            "${post.likeCount} Likes",
            style: TextStyle(
              fontSize: 13.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          ReadMoreText(
            post.caption ?? "",
            trimLines: 2,
            // colorClickableText: AppColors.textGrey,
            trimMode: TrimMode.Line,
            trimCollapsedText: 'more',
            trimExpandedText: ' less',
            moreStyle: TextStyle(
              fontSize: 14.sp,
              color: AppColors.textGrey,
              fontWeight: FontWeight.w500,
            ),
            lessStyle: TextStyle(
              fontSize: 14.sp,
              color: AppColors.textGrey,
              fontWeight: FontWeight.w500,
            ),
            // moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            preDataText: post.user.userName,
            style: TextStyle(
              fontSize: 13.sp,
              color: AppColors.iconColor,
            ),

            preDataTextStyle: TextStyle(
              fontSize: 13.sp,
              color: Colors.black,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(
            height: 6.h,
          ),
          if (post.commentCount > 0)
            Text(
              "View All ${post.commentCount} Comments",
              style: TextStyle(
                color: AppColors.textGrey,
                fontSize: 14.sp,
              ),
            ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 6.h),
            height: 38.h,
            child: Row(
              children: [
                ProfileAvatar(
                  radius: 14.r,
                  padding: 0,
                ),
                SizedBox(
                  width: 8.w,
                ),
                Text(
                  "Add a comment...",
                  style: TextStyle(
                    color: AppColors.textGrey,
                    fontSize: 14.sp,
                  ),
                ),
                const Spacer(),
                Row(
                  children: [
                    const Text(
                      "❤️",
                      style: TextStyle(
                        color: Colors.red,
                      ),
                    ),
                    5.width,
                    const Text(
                      "🙌",
                    ),
                    5.width,
                    Icon(
                      Icons.add_circle_outline,
                      color: AppColors.fadeGray,
                      size: 16.sp,
                    )
                  ],
                ),
              ],
            ),
          ),
          Text(
            "30 minutes ago",
            style: TextStyle(color: AppColors.textGrey, fontSize: 12.sp),
          )
        ],
      ),
    );
  }
}

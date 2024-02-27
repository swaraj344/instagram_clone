import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagram_clone/core/colors.dart';
import 'package:instagram_clone/core/extensions.dart';
import 'package:instagram_clone/core/widgets/components/post/post_info.dart';
import 'package:instagram_clone/core/widgets/profile_avatar.dart';
import 'package:instagram_clone/data/db/database.dart';
import 'package:instagram_clone/features/home/cubit/home_cubit.dart';

class PostWidget extends StatefulWidget {
  final FeedPost post;
  final HomeCubit homeCubit;
  const PostWidget({super.key, required this.post, required this.homeCubit});

  @override
  State<PostWidget> createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: 200.milliseconds,
      reverseDuration: 300.milliseconds,
    );
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 12.w,
            vertical: 6.h,
          ),
          child: Row(
            children: [
              ProfileAvatar(
                radius: 14,
                padding: 4,
                showBorder: true,
                image: widget.post.profileImageURL == null
                    ? null
                    : CachedNetworkImageProvider(widget.post.profileImageURL!),
              ),
              8.width,
              Text(
                widget.post.userName,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 12.sp,
                  color: AppColors.iconColor,
                ),
              ),
              const Spacer(),
              InkWell(
                onTap: () {},
                child: Icon(
                  Icons.more_vert_outlined,
                  size: 20.sp,
                ),
              )
            ],
          ),
        ),
        LikeAnimationWrapper(
          onDoubleTap: () {
            if (!widget.post.liked) {
              widget.homeCubit.likePost(widget.post.id);
            } else {
              widget.homeCubit.unLikePost(widget.post.id);
            }
          },
          animationController: _animationController,
          child: AspectRatio(
            aspectRatio: 1,
            child: CachedNetworkImage(
                imageUrl: widget.post.mediaUrl.isEmpty
                    ? ""
                    : widget.post.mediaUrl.first),
          ),
        ),
        PostInfoWidget(
          likeAnimationController: _animationController,
          post: widget.post,
          homeCubit: widget.homeCubit,
        ),
      ],
    );
  }
}

class LikeAnimationWrapper extends StatefulWidget {
  final Widget child;
  final AnimationController animationController;
  final VoidCallback onDoubleTap;
  const LikeAnimationWrapper(
      {super.key,
      required this.child,
      required this.animationController,
      required this.onDoubleTap});

  @override
  State<LikeAnimationWrapper> createState() => _LikeAnimationWrapperState();
}

class _LikeAnimationWrapperState extends State<LikeAnimationWrapper> {
  late final Animation<double> animation;
  late final AnimationController _animationController;

  @override
  void initState() {
    _animationController = widget.animationController;

    animation = Tween(
      begin: 0.8,
      end: 1.2,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
      // reverseCurve: Curves.decelerate,
    ));

    _animationController.addListener(listenAnimation);

    super.initState();
  }

  listenAnimation() {
    if (_animationController.isCompleted) {
      _animationController.reverse();
    }
  }

  @override
  void dispose() {
    _animationController.removeListener(listenAnimation);

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _animationController,
        child: widget.child,
        builder: (context, child) {
          return Stack(
            alignment: Alignment.center,
            children: [
              InkWell(
                  onDoubleTap: () {
                    if (_animationController.isAnimating) {
                      _animationController.reset();
                    }

                    _animationController.forward();
                    widget.onDoubleTap();
                  },
                  child: child),
              ScaleTransition(
                scale: animation,
                child: AnimatedOpacity(
                  duration: 100.milliseconds,
                  curve: Curves.easeInOut,
                  opacity: _animationController.isAnimating ? 1 : 0,
                  child: Icon(
                    Icons.favorite,
                    color: Colors.white.withOpacity(0.8),
                    size: 100,
                  ),
                ),
              ),
            ],
          );
        });
  }
}

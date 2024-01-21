import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagram_clone/core/gen/assets.gen.dart';

class ProfileAvatar extends StatelessWidget {
  final bool showBorder;
  final ImageProvider? image;
  final String? label;
  final double padding;
  final double radius;
  const ProfileAvatar(
      {super.key,
      this.showBorder = false,
      this.image,
      this.label,
      this.padding = 4,
      this.radius = 30});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: EdgeInsets.all(padding.r),
          decoration: !showBorder
              ? null
              : BoxDecoration(
                  border: GradientBorder.uniform(
                    width: 2,
                    gradient: const LinearGradient(
                      begin: Alignment(79.5789 / 72, 7.57895 / 72),
                      end: Alignment(0, 55.8947 / 72),
                      colors: [
                        Color(0xFFFBAA47),
                        Color(0xffD91A46),
                        Color(0xFFA60F93),
                      ],
                      stops: [0, 0.519909, 1],
                    ),
                  ),
                  shape: BoxShape.circle,
                ),
          child: CircleAvatar(
            radius: radius.r,
            foregroundImage:
                image ?? AssetImage(Assets.images.profilePlaceholder.path),
          ),
        ),
        if (label != null) ...[
          SizedBox(
            height: 5.h,
          ),
          Text(
            label!,
            style: TextStyle(
              fontSize: 12.sp,
            ),
          )
        ],
      ],
    );
  }
}

class GradientBorder extends Border {
  final Gradient borderGradient;
  final double width;

  const GradientBorder({this.width = 0.0, required this.borderGradient});

  @override
  void paint(Canvas canvas, Rect rect,
      {TextDirection? textDirection,
      BoxShape shape = BoxShape.rectangle,
      BorderRadius? borderRadius}) {
    if (isUniform) {
      switch (shape) {
        case BoxShape.circle:
          assert(borderRadius == null,
              'A borderRadius can only be given for rectangular boxes.');
          _paintGradientBorderWithCircle(canvas, rect);
          break;
        case BoxShape.rectangle:
          if (borderRadius != null) {
            _paintGradientBorderWithRadius(canvas, rect, borderRadius);
            return;
          }
          _paintGradientBorderWithRectangle(canvas, rect);
          break;
      }
      return;
    }
  }

  void _paintGradientBorderWithRadius(
      Canvas canvas, Rect rect, BorderRadius borderRadius) {
    final Paint paint = Paint();
    final RRect outer = borderRadius.toRRect(rect);

    paint.shader = borderGradient.createShader(outer.outerRect);

    if (width == 0.0) {
      paint
        ..style = PaintingStyle.stroke
        ..strokeWidth = 0.0;
      canvas.drawRRect(outer, paint);
    } else {
      final RRect inner = outer.deflate(width);
      canvas.drawDRRect(outer, inner, paint);
    }
  }

  void _paintGradientBorderWithCircle(Canvas canvas, Rect rect) {
    final double radius = (rect.shortestSide - width) / 2.0;
    final Paint paint = Paint();
    paint
      ..strokeWidth = width
      ..style = PaintingStyle.stroke
      ..shader = borderGradient
          .createShader(Rect.fromCircle(center: rect.center, radius: radius));

    canvas.drawCircle(rect.center, radius, paint);
  }

  void _paintGradientBorderWithRectangle(Canvas canvas, Rect rect) {
    final Paint paint = Paint();
    paint
      ..strokeWidth = width
      ..shader = borderGradient.createShader(rect)
      ..style = PaintingStyle.stroke;

    canvas.drawRect(rect.deflate(width / 2.0), paint);
  }

  factory GradientBorder.uniform({
    Gradient gradient = const LinearGradient(colors: [Color(0x00000000)]),
    double width = 1.0,
  }) {
    return GradientBorder._fromUniform(gradient, width);
  }

  const GradientBorder._fromUniform(Gradient gradient, double width)
      : assert(gradient != null),
        assert(width >= 0.0),
        borderGradient = gradient,
        width = width;
}

/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/logos_instagram.png
  AssetGenImage get logosInstagram =>
      const AssetGenImage('assets/images/logos_instagram.png');

  /// File path: assets/images/profile_placeholder.jpg
  AssetGenImage get profilePlaceholder =>
      const AssetGenImage('assets/images/profile_placeholder.jpg');

  /// List of all assets
  List<AssetGenImage> get values => [logosInstagram, profilePlaceholder];
}

class $AssetsSvgGen {
  const $AssetsSvgGen();

  /// File path: assets/svg/facebook.svg
  String get facebook => 'assets/svg/facebook.svg';

  $AssetsSvgIconsGen get icons => const $AssetsSvgIconsGen();

  /// File path: assets/svg/instagram_logo.svg
  String get instagramLogo => 'assets/svg/instagram_logo.svg';

  /// List of all assets
  List<String> get values => [facebook, instagramLogo];
}

class $AssetsSvgIconsGen {
  const $AssetsSvgIconsGen();

  /// File path: assets/svg/icons/add.svg
  String get add => 'assets/svg/icons/add.svg';

  /// File path: assets/svg/icons/chat.svg
  String get chat => 'assets/svg/icons/chat.svg';

  /// File path: assets/svg/icons/comment.svg
  String get comment => 'assets/svg/icons/comment.svg';

  /// File path: assets/svg/icons/heart.svg
  String get heart => 'assets/svg/icons/heart.svg';

  /// File path: assets/svg/icons/heart_outline.svg
  String get heartOutline => 'assets/svg/icons/heart_outline.svg';

  /// File path: assets/svg/icons/home.svg
  String get home => 'assets/svg/icons/home.svg';

  /// File path: assets/svg/icons/home_outline.svg
  String get homeOutline => 'assets/svg/icons/home_outline.svg';

  /// File path: assets/svg/icons/messanger.svg
  String get messanger => 'assets/svg/icons/messanger.svg';

  /// File path: assets/svg/icons/reel.svg
  String get reel => 'assets/svg/icons/reel.svg';

  /// File path: assets/svg/icons/reel_outline.svg
  String get reelOutline => 'assets/svg/icons/reel_outline.svg';

  /// File path: assets/svg/icons/save.svg
  String get save => 'assets/svg/icons/save.svg';

  /// File path: assets/svg/icons/search.svg
  String get search => 'assets/svg/icons/search.svg';

  /// File path: assets/svg/icons/search_outline.svg
  String get searchOutline => 'assets/svg/icons/search_outline.svg';

  /// List of all assets
  List<String> get values => [
        add,
        chat,
        comment,
        heart,
        heartOutline,
        home,
        homeOutline,
        messanger,
        reel,
        reelOutline,
        save,
        search,
        searchOutline
      ];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsSvgGen svg = $AssetsSvgGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

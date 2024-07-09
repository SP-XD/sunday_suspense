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

  /// File path: assets/images/cloud_inverted.png
  AssetGenImage get cloudInverted => const AssetGenImage('assets/images/cloud_inverted.png');

  /// File path: assets/images/cloud_original.png
  AssetGenImage get cloudOriginal => const AssetGenImage('assets/images/cloud_original.png');

  /// File path: assets/images/haunted_house_frame1.jpg
  AssetGenImage get hauntedHouseFrame1 => const AssetGenImage('assets/images/haunted_house_frame1.jpg');

  /// File path: assets/images/haunted_house_frame2.jpg
  AssetGenImage get hauntedHouseFrame2 => const AssetGenImage('assets/images/haunted_house_frame2.jpg');

  /// File path: assets/images/moon.png
  AssetGenImage get moon => const AssetGenImage('assets/images/moon.png');

  /// File path: assets/images/splash_bg blurs.png
  AssetGenImage get splashBgBlurs => const AssetGenImage('assets/images/splash_bg blurs.png');

  /// File path: assets/images/splash_title.png
  AssetGenImage get splashTitle => const AssetGenImage('assets/images/splash_title.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        cloudInverted,
        cloudOriginal,
        hauntedHouseFrame1,
        hauntedHouseFrame2,
        moon,
        splashBgBlurs,
        splashTitle
      ];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

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

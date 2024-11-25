
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/coins1.png
  AssetGenImage get coins1 =>
      const AssetGenImage('assets/images/coins1.png');

  /// File path: assets/images/coins2.png
  AssetGenImage get coins2 =>
      const AssetGenImage('assets/images/coins2.png');

  /// File path: assets/images/coins3.png
  AssetGenImage get coins3 =>
      const AssetGenImage('assets/images/coins3.png');

  /// File path: assets/images/coins4.png
  AssetGenImage get coins4 =>
      const AssetGenImage('assets/images/coins4.png');

  /// File path: assets/images/coins5.png
  AssetGenImage get coins5 =>
      const AssetGenImage('assets/images/coins5.png');

  /// File path: assets/images/book_stack.png
  AssetGenImage get bookStack =>
      const AssetGenImage('assets/images/book_stack.png');

  /// File path: assets/images/education_book.png
  AssetGenImage get educationBook =>
      const AssetGenImage('assets/images/education_book.png');

  /// File path: assets/images/book_and_global.png
  AssetGenImage get bookAndGlobal =>
      const AssetGenImage('assets/images/book_and_global.png');

  /// File path: assets/images/bottom1.svg
  SvgGenImage get bottom1 =>
      const SvgGenImage('assets/images/bottom1.svg');

  /// File path: assets/images/bottom2.svg
  SvgGenImage get bottom2 =>
      const SvgGenImage('assets/images/bottom2.svg');

  /// File path: assets/images/bottom3.svg
  SvgGenImage get bottom3 =>
      const SvgGenImage('assets/images/bottom3.svg');

  /// File path: assets/images/ic_science_quiz.png
  AssetGenImage get scienceQuiz =>
      const AssetGenImage('assets/images/ic_science_quiz.png');

  /// File path: assets/images/ic_sport_quiz.png
  AssetGenImage get sportQuiz =>
      const AssetGenImage('assets/images/ic_sport_quiz.png');

  /// File path: assets/images/un_finish1.png
  AssetGenImage get unFinish1 =>
      const AssetGenImage('assets/images/un_finish1.png');

  /// File path: assets/images/un_finish2.png
  AssetGenImage get unFinish2 =>
      const AssetGenImage('assets/images/un_finish2.png');

  /// File path: assets/images/un_finish3.png
  AssetGenImage get unFinish3 =>
      const AssetGenImage('assets/images/un_finish3.png');

  /// File path: assets/images/un_finish4.png
  AssetGenImage get unFinish4 =>
      const AssetGenImage('assets/images/un_finish4.png');

  /// File path: assets/images/img_question.png
  AssetGenImage get imgQuestion =>
      const AssetGenImage('assets/images/img_question.png');

  List<dynamic> get values => [
    coins1,
    coins2,
    coins3,
    coins4,
    coins5,
    bookStack,
    educationBook,
    bookAndGlobal,
    bottom1,
    bottom2,
    bottom3,
    scienceQuiz,
    sportQuiz,
    unFinish1,
    unFinish2,
    unFinish3,
    unFinish4,
    imgQuestion
  ];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
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

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    SvgTheme theme = const SvgTheme(),
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    Color? color,
    BlendMode colorBlendMode = BlendMode.srcIn,
    bool cacheColorFilter = false,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      theme: theme,
      colorFilter: colorFilter,
      color: color,
      colorBlendMode: colorBlendMode,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class ImageConstants {
  static ImageConstants? _instace;
  static ImageConstants get instance {
    _instace ??= ImageConstants._init();
    return _instace!;
  }

  ImageConstants._init();

  final _Lottie lottieAssets = _Lottie();
  final _SVG svgAssets = _SVG();
  final _PNG pngAssets = _PNG();
}

class _Lottie {
  // final String bear = 'lottie/bear'.toJSON;

}

class _SVG {
  final String iconGoogleLogo = 'Svg/icon_google_logo'.toSVG;
}

class _PNG {
  final String backgroundImage = 'images/Head-Background'.toPNG;
}

extension _ImageConstantsExtension on String {
  String get toPNG => 'assets/$this.png';
  String get toJPEG => 'assets/$this.jpeg';
  String get toJSON => 'assets/$this.json';
  String get toSVG => 'assets/$this.svg';
}

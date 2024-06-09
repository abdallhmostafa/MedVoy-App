const String _svgUrl = 'assets/svgs';
const String _imageUrl = 'assets/images';
const String _jsonUrl = 'assets/json';

class AppAssets {
  AppAssets._();
  // ---------------- Image Assets ----------------
  static const String onBoardingImage = '$_imageUrl/on_boarding_img.png';
  static const String splashImg = '$_imageUrl/splash_image.png';

  // ---------------- Svg Assets ----------------
  static const String mainLogo = '$_svgUrl/logo.svg';
  static const String onBoardingBackground = '$_svgUrl/background_logo.svg';

  // ----------------  Json Assets ----------------
  static const String loadingJson = '$_jsonUrl/loading.json';
  static const String errorJson = '$_jsonUrl/error.json';
  static const String warningJson = '$_jsonUrl/warning.json';
  static const String successJson = '$_jsonUrl/success.json';
}

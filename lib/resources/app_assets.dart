const String _svgUrl = 'assets/svgs';
const String _imageUrl = 'assets/images';
const String _jsonUrl = 'assets/json';

class AppAssets {
  AppAssets._();
  // ---------------- Image Assets ----------------
  static const String onBoardingImage = '$_imageUrl/on_boarding_img.png';
  static const String splashImg = '$_imageUrl/splash_image.png';
  static const String homeDoctorImage = '$_imageUrl/home_doctor_image.png';
  static const String homeBlueBackGround = '$_imageUrl/home_blue_back_ground.png';
  static const String homeRecommendationDoctor1 = '$_imageUrl/home_recommendation_doctor_1.png';
  static const String homeRecommendationDoctor2 = '$_imageUrl/home_recommendation_doctor_2.png';

  // ---------------- Svg Assets ----------------
  static const String mainLogo = '$_svgUrl/logo.svg';
  static const String homeGeneralIcon = '$_svgUrl/home_general_icon.svg';
  static const String homeNeurologicIcon = '$_svgUrl/home_neurologic_icon.svg';
  static const String homePediatricIcon = '$_svgUrl/home_pediatric_icon.svg';
  static const String homeRadiologyIcon = '$_svgUrl/home_radiology_icon.svg';
  static const String notificationIcon = '$_svgUrl/notification.svg';
  static const String onBoardingBackground = '$_svgUrl/background_logo.svg';

  // ----------------  Json Assets ----------------
  static const String loadingJson = '$_jsonUrl/loading.json';
  static const String errorJson = '$_jsonUrl/error.json';
  static const String warningJson = '$_jsonUrl/warning.json';
  static const String successJson = '$_jsonUrl/success.json';
}

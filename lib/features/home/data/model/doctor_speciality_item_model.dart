import 'package:med_voy/resources/app_assets.dart';

class DoctorSpecialityItemModel {
  final String title;
  final String svgIcon;

  DoctorSpecialityItemModel({required this.title, required this.svgIcon});
}

List<DoctorSpecialityItemModel> doctorSpecialityItemList = [
  DoctorSpecialityItemModel(
      title: "General", svgIcon: AppAssets.homeGeneralIcon),
  DoctorSpecialityItemModel(
      title: "Neurologic", svgIcon: AppAssets.homeNeurologicIcon),
  DoctorSpecialityItemModel(
      title: "Pediatric", svgIcon: AppAssets.homePediatricIcon),
  DoctorSpecialityItemModel(
      title: "Radiology", svgIcon: AppAssets.homeRadiologyIcon),
];

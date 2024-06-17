import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:med_voy/features/home/data/model/doctor_speciality_item_model.dart';
import 'package:med_voy/features/home/data/model/home_specialization_response.dart';
import 'package:med_voy/features/home/presentation/widgets/doctor_speciality_item.dart';

class DoctorSpecialityListView extends StatelessWidget {
  const DoctorSpecialityListView(
      {super.key, required this.specializationDataList});
  final  List<SpecializationDataList>? specializationDataList ;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: specializationDataList?.length??0,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsetsDirectional.only(start: index == 0 ? 0 : 24.w),
          child: DoctorSpecialityItem(
              assetName: doctorSpecialityItemList[0].svgIcon,
              title:  specializationDataList?[index].name??""),
        ),
      ),
    );
  }
}

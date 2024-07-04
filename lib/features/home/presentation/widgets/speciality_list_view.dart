import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:med_voy/features/home/data/model/doctor_speciality_item_model.dart';
import 'package:med_voy/features/home/data/model/home_specialization_response.dart';
import 'package:med_voy/features/home/logic/home_cubit.dart';
import 'package:med_voy/features/home/presentation/widgets/speciality_item.dart';

class SpecialityListView extends StatefulWidget {
  const SpecialityListView({super.key, required this.specializationDataList});
  final List<SpecializationDataList?>? specializationDataList;

  @override
  State<SpecialityListView> createState() => _SpecialityListViewState();
}

class _SpecialityListViewState extends State<SpecialityListView> {
  int selectedSpecializationInedx = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: widget.specializationDataList?.length ?? 0,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            setState(() {
              selectedSpecializationInedx = index;
            });
            context.read<HomeCubit>().getDoctorsList(specializationId: index);
          },
          child: Padding(
            padding: EdgeInsetsDirectional.only(start: index == 0 ? 0 : 24.w),
            child: SpecialityItem(
                assetName: doctorSpecialityItemList[0].svgIcon,
                isSelected: selectedSpecializationInedx == index ,
                title: widget.specializationDataList?[index]?.name ?? ""),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:med_voy/features/home/data/model/home_specialization_response.dart';
import 'package:med_voy/features/home/logic/home_cubit.dart';
import 'package:med_voy/features/home/logic/home_state.dart';
import 'package:med_voy/features/home/presentation/widgets/specialization_list/speciality_item.dart';

class SpecialityListView extends StatelessWidget {
  const SpecialityListView({super.key, required this.specializationDataList});
  final List<SpecializationDataList?>? specializationDataList;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: specializationDataList?.length ?? 0,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => BlocBuilder<HomeCubit, HomeState>(
          builder: (context, state) {
            return GestureDetector(
              onTap: () {
                context.read<HomeCubit>().setupSpecializationClick(index + 1);
              },
              child: Padding(
                padding:
                    EdgeInsetsDirectional.only(start: index == 0 ? 0 : 24.w),
                child: SpecialityItem(
                    isSelected:
                        context.read<HomeCubit>().selectedSpecializationInedx ==
                            index + 1,
                    title: specializationDataList?[index]?.name ?? ""),
              ),
            );
          },
        ),
      ),
    );
  }
}

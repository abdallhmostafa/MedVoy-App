import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:med_voy/core/helpers/spacing.dart';
import 'package:med_voy/core/theme/app_color.dart';
import 'package:shimmer/shimmer.dart';

class SpecialityShimmerLoading extends StatelessWidget {
  const SpecialityShimmerLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 8,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsetsDirectional.only(start: index == 0 ? 0 : 24),
          child: Column(
            children: [
              Shimmer.fromColors(
                baseColor: AppColor.lightGray,
                highlightColor: AppColor.white,
                child: CircleAvatar(
                  radius: 30.r,
                  backgroundColor: AppColor.white,
                ),
              ),
              verticalSpace(10),
              Shimmer.fromColors(
                baseColor: AppColor.lightGray,
                highlightColor: AppColor.white,
                child: Container(
                  width: 50.w,
                  height: 14.h,
                  decoration: BoxDecoration(
                      color: AppColor.white,
                      borderRadius: BorderRadius.circular(12.r)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

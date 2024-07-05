import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:med_voy/core/helpers/spacing.dart';
import 'package:med_voy/core/theme/app_color.dart';
import 'package:shimmer/shimmer.dart';

class DoctorShimmerLoading extends StatelessWidget {
  const DoctorShimmerLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemBuilder: (context, index) => Container(
                margin: EdgeInsets.only(bottom: 16.h),
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Shimmer.fromColors(
                        baseColor: AppColor.lightGray,
                        highlightColor: AppColor.white,
                        child: Container(
                          height: 150.h,
                          decoration: BoxDecoration(
                              color: AppColor.white,
                              borderRadius: BorderRadius.circular(12.r)),
                        ),
                      ),
                    ),
                    horizontalSpace(16),
                    Expanded(
                      flex: 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Shimmer.fromColors(
                            baseColor: AppColor.lightGray,
                            highlightColor: AppColor.white,
                            child: Container(
                              width: 180.w,
                              height: 18.h,
                              decoration: BoxDecoration(
                                  color: AppColor.white,
                                  borderRadius: BorderRadius.circular(12.r)),
                            ),
                          ),
                          verticalSpace(12),
                          Shimmer.fromColors(
                            baseColor: AppColor.lightGray,
                            highlightColor: AppColor.white,
                            child: Container(
                              width: 120.w,
                              height: 14.h,
                              decoration: BoxDecoration(
                                  color: AppColor.white,
                                  borderRadius: BorderRadius.circular(12.r)),
                            ),
                          ),
                          verticalSpace(12),
                          Shimmer.fromColors(
                            baseColor: AppColor.lightGray,
                            highlightColor: AppColor.white,
                            child: Container(
                              width: 140.w,
                              height: 14.h,
                              decoration: BoxDecoration(
                                  color: AppColor.white,
                                  borderRadius: BorderRadius.circular(12.r)),
                            ),
                          ),
                          verticalSpace(12),
                          Shimmer.fromColors(
                            baseColor: AppColor.lightGray,
                            highlightColor: AppColor.white,
                            child: Container(
                              width: 160.w,
                              height: 14.h,
                              decoration: BoxDecoration(
                                  color: AppColor.white,
                                  borderRadius: BorderRadius.circular(12.r)),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
          itemCount: 5),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:med_voy/core/helpers/spacing.dart';
import 'package:med_voy/core/theme/app_color.dart';
import 'package:med_voy/core/theme/app_style.dart';
import 'package:med_voy/resources/app_assets.dart';

class DoctorRecommendationItem extends StatelessWidget {
  const DoctorRecommendationItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150.h,
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              margin: EdgeInsets.only(right: 16.w),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(12.r)),
              ),
              child: Image.asset(AppAssets.homeRecommendationDoctor1,
                  fit: BoxFit.cover),
            ),
          ),
          Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Dr. Randy Wigham', style: AppStyle.f16darkBlueW700),
                verticalSpace(5),
                Text('General | RSUD Gatot Subroto',
                    style: AppStyle.f12GrayW500),
                verticalSpace(5),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.star_rate_rounded,
                      color: AppColor.gold,
                      size: 20.w,
                    ),
                    horizontalSpace(3),
                    Text('4.8', style: AppStyle.f12GrayW500),
                    horizontalSpace(5),
                    Text('(4.279 Reviews)', style: AppStyle.f12GrayW500),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

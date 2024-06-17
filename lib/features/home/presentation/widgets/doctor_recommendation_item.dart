import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:med_voy/core/helpers/spacing.dart';
import 'package:med_voy/core/theme/app_color.dart';
import 'package:med_voy/core/theme/app_style.dart';
import 'package:med_voy/features/home/data/model/home_specialization_response.dart';
import 'package:med_voy/resources/app_assets.dart';

class DoctorRecommendationItem extends StatelessWidget {
  const DoctorRecommendationItem({super.key, required this.doctor});
  final Doctors? doctor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150.h,
      child: Row(
        children: [
          Expanded(
              flex: 2,
              child: CachedNetworkImage(
                  imageUrl: doctor?.photo ?? "",
                  fit: BoxFit.cover,
                  fadeInDuration: Duration(milliseconds: 250),
                  
                  errorWidget: (context, url, error) => Image.asset(
                        AppAssets.homeRecommendationDoctor1,
                        fit: BoxFit.cover,
                      ),
                  imageBuilder: (context, imageProvider) {
                    return Container(
                      margin: EdgeInsets.only(right: 16.w),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(12.r)),
                      ),
                    );
                  },
                  placeholder: (context, url) => const Center(
                        child: CircularProgressIndicator(),
                      ))),
          Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(doctor?.name ?? "", style: AppStyle.f16darkBlueW700),
                verticalSpace(5),
                Text("${doctor?.degree ?? ""} | ${doctor?.phone ?? ""}",
                    style: AppStyle.f12GrayW500),
                verticalSpace(5),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.star_rate_rounded,
                      color: AppColor.gold,
                      size: 20.w,
                    ),
                    horizontalSpace(3),
                    Flexible(
                      child: Text(doctor?.email ?? "",
                          style: AppStyle.f12GrayW500),
                    ),
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

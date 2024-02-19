import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:med_voy/core/theme/app_color.dart';
import 'package:med_voy/core/theme/app_style.dart';
import 'package:med_voy/resources/app_assets.dart';
import 'package:med_voy/resources/app_string.dart';

class DocImageAndText extends StatelessWidget {
  const DocImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset(AppAssets.onBoardingBackground,),
        Container(
          foregroundDecoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    AppColor.white,
                    AppColor.white.withOpacity(0.0),
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  stops: const [0.14, 0.36])),
          child: Image.asset(
            AppAssets.onBoardingImage,
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Text(
            textAlign: TextAlign.center,
            AppString.onBoardingHeadline,
            style: AppStyle.f32BlueBold.copyWith(height: 1.4),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:med_voy/core/helpers/extension.dart';
import 'package:med_voy/core/route/routes.dart';
import 'package:med_voy/core/theme/app_style.dart';
import 'package:med_voy/core/widgets/custom_button.dart';
import 'package:med_voy/features/on%20boarding/ui/widgets/doc_image_and_text.dart';
import 'package:med_voy/features/on%20boarding/ui/widgets/doc_logo_and_name.dart';
import 'package:med_voy/resources/app_string.dart';

class OnBoardingBody extends StatelessWidget {
  const OnBoardingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 30.h),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const DoCLogoAndName(),
            SizedBox(
              height: 30.h,
            ),
            const DocImageAndText(),
            SizedBox(
              height: 18.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.w),
              child: Column(
                children: [
                  Text(
                    AppString.onBoardingBody,
                    style: AppStyle.f13GrayRegular,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  AppCustomButton(
                    text: AppString.getStart,
                    onPressed: () =>
                        context.pushReplacementNamed(Routes.loginScreen),
                  ),
                  // SizedBox(
                  //   height: 30.h,
                  // ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

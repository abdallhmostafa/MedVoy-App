import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:med_voy/core/theme/app_color.dart';
import 'package:med_voy/core/theme/app_style.dart';
import 'package:med_voy/resources/app_assets.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Hi Abdallh!", style: AppStyle.f18DarkBlueW700),
            Text("How are you today?", style: AppStyle.f12GrayRegular),
          ],
        ),
        CircleAvatar(
          backgroundColor: AppColor.veryLighterGray,
          // backgroundImage: AssetImage(AppAssets.),
          child: SvgPicture.asset(AppAssets.notificationIcon),
        ),
        // GestureDetector(
        //   onTap: () {},
        //   child: Stack(
        //     children: [
        //       const Icon(
        //         Icons.notifications_none_rounded,
        //         size: 26,
        //       ),
        //       Positioned(
        //         right: 3,
        //         top: 0,
        //         child: Container(
        //           width: 10,
        //           height: 10,
        //           decoration: const BoxDecoration(
        //               color: AppColor.red, shape: BoxShape.circle),
        //         ),
        //       )
        //     ],
        //   ),
        // )
      ],
    );
  }
}

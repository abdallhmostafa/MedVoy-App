import 'package:flutter/material.dart';
import 'package:med_voy/core/theme/app_style.dart';

class HomeCustomSeeAll extends StatelessWidget {
  const HomeCustomSeeAll(
      {super.key, required this.title, required this.onPressed});
  final String title;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: AppStyle.f18DarkBlueW700.copyWith(fontWeight: FontWeight.w600),
        ),
        TextButton(
          onPressed: onPressed,
          child: Text(
            "See All",
            style: AppStyle.f12BlueRegular,
          ),
        ),
      ],
    );
  }
}

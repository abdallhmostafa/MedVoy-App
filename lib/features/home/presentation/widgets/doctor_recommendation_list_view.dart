import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:med_voy/features/home/presentation/widgets/doctor_recommendation_item.dart';

class DoctorRecommendationListView extends StatelessWidget {
  const DoctorRecommendationListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 4,
        itemBuilder: (context, index) => const DoctorRecommendationItem(),
      ),
    );
  }
}

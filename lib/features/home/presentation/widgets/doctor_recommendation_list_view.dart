import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:med_voy/features/home/data/model/home_specialization_response.dart';
import 'package:med_voy/features/home/presentation/widgets/doctor_recommendation_item.dart';

class DoctorRecommendationListView extends StatelessWidget {
  const DoctorRecommendationListView(
      {super.key, required this.doctorsList});
  final List<Doctors>? doctorsList;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: doctorsList?.length ?? 0,
        itemBuilder: (context, index) => DoctorRecommendationItem(
            doctor: doctorsList?[index]),
      ),
    );
  }
}

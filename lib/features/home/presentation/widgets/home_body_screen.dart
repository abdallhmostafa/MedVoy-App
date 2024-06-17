import 'package:flutter/material.dart';
import 'package:med_voy/core/helpers/spacing.dart';
import 'package:med_voy/features/home/presentation/widgets/doctor_container.dart';
import 'package:med_voy/features/home/presentation/widgets/home_custom_see_all.dart';
import 'package:med_voy/features/home/presentation/widgets/home_top_bar.dart';
import 'package:med_voy/features/home/presentation/widgets/specialization_and_recommended_bloc_builder.dart';

class HomeBodyScreen extends StatelessWidget {
  const HomeBodyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(20, 16, 20, 28),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HomeTopBar(),
          const DoctorContainer(),
          verticalSpace(16),
          HomeCustomSeeAll(title: "Doctor Speciality", onPressed: () {}),
          const SpecializationAndDoctorRecommendedBlocBuilder()
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:med_voy/core/helpers/spacing.dart';
import 'package:med_voy/features/home/presentation/widgets/doctor_container.dart';
import 'package:med_voy/features/home/presentation/widgets/doctor_recommendation_list_view.dart';
import 'package:med_voy/features/home/presentation/widgets/doctor_speciality_list_view.dart';
import 'package:med_voy/features/home/presentation/widgets/home_custom_see_all.dart';
import 'package:med_voy/features/home/presentation/widgets/home_top_bar.dart';

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
          const DoctorSpecialityListView(),
          HomeCustomSeeAll(title: "Recommendation Doctor", onPressed: () {}),
          verticalSpace(12),
          const DoctorRecommendationListView()
        ],
      ),
    );
  }
}

// Token:
// eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL3ZjYXJlLmludGVncmF0aW9uMjUuY29tL2FwaS9hdXRoL2xvZ2luIiwiaWF0IjoxNzE4MjI0MjU1LCJleHAiOjE3MTgzMTA2NTUsIm5iZiI6MTcxODIyNDI1NSwianRpIjoiWmNlbkJSQm1wOWRjbDFRbCIsInN1YiI6IjEyODkiLCJwcnYiOiIyM2JkNWM4OTQ5ZjYwMGFkYjM5ZTcwMWM0MDA4NzJkYjdhNTk3NmY3In0.x7mYs6W8JEqresfxoPZJcslohloIonxrZM0BQG20hKs
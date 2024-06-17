import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:med_voy/core/helpers/spacing.dart';
import 'package:med_voy/core/network/api_error_handler.dart';
import 'package:med_voy/core/theme/app_style.dart';
import 'package:med_voy/core/widgets/app_custom_loading.dart';
import 'package:med_voy/features/home/data/model/home_specialization_response.dart';
import 'package:med_voy/features/home/logic/home_cubit.dart';
import 'package:med_voy/features/home/logic/home_state.dart';
import 'package:med_voy/features/home/presentation/widgets/doctor_recommendation_list_view.dart';
import 'package:med_voy/features/home/presentation/widgets/doctor_speciality_list_view.dart';
import 'package:med_voy/features/home/presentation/widgets/home_custom_see_all.dart';

class SpecializationAndDoctorRecommendedBlocBuilder extends StatelessWidget {
  const SpecializationAndDoctorRecommendedBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is SpecializationLoading ||
          current is SpecializationSuccess ||
          current is SpecializationError,
      builder: (context, state) {
        return state.maybeWhen(
          specializationLoading: () => const AppCustomLoading(),
          specializationSuccess: (homeSpecializationResponse) {
            List<SpecializationDataList>? specializationDataList =
                homeSpecializationResponse.specializationDataList;
            return setSuccess(specializationDataList);
          },
          specializationError: (errorHandler) => setError(errorHandler),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }
}

Widget setSuccess(List<SpecializationDataList>? specializationDataList) {
  return Expanded(
    child: Column(
      children: [
        DoctorSpecialityListView(
            specializationDataList: specializationDataList),
        HomeCustomSeeAll(title: "Recommendation Doctor", onPressed: () {}),
        verticalSpace(12),
        DoctorRecommendationListView(
          doctorsList: specializationDataList?[0].doctorsList ?? [],
        )
      ],
    ),
  );
}

Widget setError(ErrorHandler errorHandler) {
  return Text(
    errorHandler.apiErrorModel.message ?? "",
    style: AppStyle.f14DarkBlueMedium,
  );
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:med_voy/core/utilities/set_error.dart';
import 'package:med_voy/core/utilities/set_or_else_state.dart';
import 'package:med_voy/features/home/data/model/home_specialization_response.dart';
import 'package:med_voy/features/home/logic/home_cubit.dart';
import 'package:med_voy/features/home/logic/home_state.dart';
import 'package:med_voy/features/home/presentation/widgets/specialization_list/speciality_list_view.dart';
import 'package:med_voy/features/home/presentation/widgets/specialization_list/speciality_shimmer_loading.dart';

class SpecializationBlocBuilder extends StatelessWidget {
  const SpecializationBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is SpecializationLoading ||
          current is SpecializationSuccess ||
          current is SpecializationError,
      builder: (context, state) {
        return state.maybeWhen(
          specializationLoading: () => setLoading(),
          specializationSuccess: (specializationDataList) {
            return setSuccess(specializationDataList);
          },
          specializationError: (errorHandler) => setError(errorHandler),
          orElse: () => setOrElseState(),
        );
      },
    );
  }
}

Widget setSuccess(List<SpecializationDataList?>? specializationDataList) {
  return SpecialityListView(specializationDataList: specializationDataList);
}

Widget setLoading() {
  return const SpecialityShimmerLoading();
}

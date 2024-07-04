import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:med_voy/core/utilities/set_error.dart';
import 'package:med_voy/core/utilities/set_or_else_state.dart';
import 'package:med_voy/features/home/data/model/home_specialization_response.dart';
import 'package:med_voy/features/home/logic/home_cubit.dart';
import 'package:med_voy/features/home/logic/home_state.dart';
import 'package:med_voy/features/home/presentation/widgets/doctor_recommendation_list_view.dart';

class DoctorRecommendedBlocBuilder extends StatelessWidget {
  const DoctorRecommendedBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is DoctorSuccess || current is DoctorError,
      builder: (context, state) {
        return state.maybeWhen(
          doctorSuccess: (doctorsList) {
            return setSuccess(doctorsList);
          },
          doctorError: (errorHandler) => setError(errorHandler),
          orElse: () => setOrElseState(),
        );
      },
    );
  }
}

Widget setSuccess(List<Doctors?>? doctorsList) {
  return Expanded(
    child: DoctorRecommendationListView(
      doctorsList: doctorsList,
    ),
  );
}



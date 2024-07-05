import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:med_voy/core/helpers/extension.dart';
import 'package:med_voy/core/network/api_error_handler.dart';
import 'package:med_voy/features/home/data/model/home_specialization_response.dart';
import 'package:med_voy/features/home/data/repo/home_specialization_repo.dart';
import 'package:med_voy/features/home/logic/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this._homeSpecializationRepo) : super(const HomeState.initial());
  final HomeSpecializationRepo _homeSpecializationRepo;
  int selectedSpecializationInedx = 0;

  List<SpecializationDataList?>? specializationDataList = [];
  Future<void> getSpecialization() async {
    emit(const HomeState.specializationLoading());
    final result = await _homeSpecializationRepo.getSpecialization();
    result.when(
      success: (specializationResponse) {
        specializationDataList = specializationResponse.specializationDataList;
        // get the first Doctors list by specialization first id
        getDoctorsList(specializationId: specializationDataList?.first?.id);
        emit(HomeState.specializationSuccess(specializationDataList));
      },
      failure: (errorHandler) {
        emit(HomeState.specializationError(errorHandler: errorHandler));
      },
    );
  }

  getDoctorsList({int? specializationId}) {
    final List<Doctors>? doctorList =
        filterSpecializationListByID(specializationId: specializationId ?? 1);
    if (doctorList.isNullOrEmpty) {
      emit(HomeState.doctorError(
          ErrorHandler.handle('Sorry no doctors founed')));
    } else {
      emit(HomeState.doctorSuccess(doctorList));
    }
  }

  /// Returns the list of doctors by specialization id
  List<Doctors>? filterSpecializationListByID({required int specializationId}) {
    return specializationDataList
        ?.firstWhere((element) => element?.id == specializationId)
        ?.doctorsList;
  }

  setupSpecializationClick(int index) {
    selectedSpecializationInedx = index;
    getDoctorsList(specializationId: index);
  }
}

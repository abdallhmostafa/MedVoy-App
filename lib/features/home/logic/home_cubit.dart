import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:med_voy/features/home/data/repo/home_specialization_repo.dart';
import 'package:med_voy/features/home/logic/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this._homeSpecializationRepo) : super(const HomeState.initial());
  final HomeSpecializationRepo _homeSpecializationRepo;
  Future<void> getSpecialization() async {
    emit(const HomeState.specializationLoading());
    final result = await _homeSpecializationRepo.getSpecialization();
    result.when(
      success: (specializationResponse) {
        emit(HomeState.specializationSuccess(specializationResponse));
      },
      failure: (errorHandler) {
        emit(HomeState.specializationError(
            errorHandler: errorHandler));
      },
    );
  }
}

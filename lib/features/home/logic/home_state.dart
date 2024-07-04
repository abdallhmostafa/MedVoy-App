import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:med_voy/core/network/api_error_handler.dart';
import 'package:med_voy/features/home/data/model/home_specialization_response.dart';
part 'home_state.freezed.dart';
@freezed
class HomeState with _$HomeState {

// Specialization States 
  const factory HomeState.initial() = _Initial;
  const factory HomeState.specializationLoading() = SpecializationLoading;
  const factory HomeState.specializationSuccess( List<SpecializationDataList?>? specializationDataList ) = SpecializationSuccess;
  const factory HomeState.specializationError({required ErrorHandler errorHandler}) = SpecializationError;

// Doctors States
  const factory HomeState.doctorSuccess(List<Doctors?>? doctorsList )= DoctorSuccess;
  const factory HomeState.doctorError(ErrorHandler errorHandler )= DoctorError;
}
 
import 'package:med_voy/core/network/api_error_handler.dart';
import 'package:med_voy/core/network/api_result.dart';
import 'package:med_voy/features/home/data/api/home_api_service.dart';
import 'package:med_voy/features/home/data/model/home_specialization_response.dart';

class HomeSpecializationRepo {
  final HomeApiService _homeApiService;

  HomeSpecializationRepo(this._homeApiService);

  Future<ApiResult<HomeSpecializationResponse>> getSpecialization() async {
    try {
      final response = await _homeApiService.getSpecialization();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}

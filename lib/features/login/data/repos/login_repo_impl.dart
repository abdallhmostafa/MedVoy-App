import 'package:med_voy/core/network/api_error_handler.dart';
import 'package:med_voy/core/network/api_result.dart';
import 'package:med_voy/core/network/api_service.dart';
import 'package:med_voy/features/login/data/model/login_request_body.dart';
import 'package:med_voy/features/login/data/model/login_response.dart';
import 'package:med_voy/features/login/data/repos/login_repo.dart';

class LoginRepoImpl extends LoginRepo {
  final ApiService _apiService;

  LoginRepoImpl({required ApiService apiService}) : _apiService = apiService;

  @override
  Future<ApiResult<LoginResponse>> login(
      LoginRequestBody loginRequestBody) async {
    try {
      final response = await _apiService.login(loginRequestBody);
      return ApiResult.success(response);
    } catch (failure) {
      return ApiResult.failure(ErrorHandler.handle(failure));
    }
  }
}

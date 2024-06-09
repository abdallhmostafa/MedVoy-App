import 'package:med_voy/core/network/api_error_handler.dart';
import 'package:med_voy/core/network/api_result.dart';
import 'package:med_voy/core/network/api_service.dart';
import 'package:med_voy/features/auth/sign_up/data/model/sign_up_request.dart';
import 'package:med_voy/features/auth/sign_up/data/model/sign_up_response.dart';
import 'package:med_voy/features/auth/sign_up/data/repo/sign_up_repo.dart';

class SignUpRepoImpl extends SignUpRepo {
  final ApiService _apiService;

  SignUpRepoImpl(this._apiService);

  @override
  Future<ApiResult<SignUpResponse>> signUp(SignUpRequest signUpRequest) async {
    try {
      final response = await _apiService.signUp(signUpRequest);
      return ApiResult.success(response);
    } catch (failure) {
      return ApiResult.failure(ErrorHandler.handle(failure));
    }
  }
}

//   return _apiService.signUp(signUpRequest).then((response) {
//     return ApiResult.success(response);
//   }).catchError((error) {
//     return ApiResult.failure(ErrorHandler.handle(error));
//   });
// }

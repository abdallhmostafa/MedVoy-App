import 'package:med_voy/core/network/api_result.dart';
import 'package:med_voy/features/login/data/model/login_request_body.dart';
import 'package:med_voy/features/login/data/model/login_response.dart';

abstract class LoginRepo {
  Future<ApiResult<LoginResponse>> login(LoginRequestBody loginRequestBody);
}

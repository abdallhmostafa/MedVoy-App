import 'package:med_voy/core/network/api_result.dart';
import 'package:med_voy/features/auth/sign_up/data/model/sign_up_request.dart';
import 'package:med_voy/features/auth/sign_up/data/model/sign_up_response.dart';

abstract class SignUpRepo {
  Future<ApiResult<SignUpResponse>> signUp(SignUpRequest signUpRequest);
}

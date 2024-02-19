import 'package:dio/dio.dart';
import 'package:med_voy/core/network/api_constant.dart';
import 'package:med_voy/features/login/data/model/login_request_body.dart';
import 'package:med_voy/features/login/data/model/login_response.dart';
import 'package:retrofit/retrofit.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstant.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstant.login)
  Future<LoginResponse> login(
    @Body() LoginRequestBody loginRequestBody,
  );
}

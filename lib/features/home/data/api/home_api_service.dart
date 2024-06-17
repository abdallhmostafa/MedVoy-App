import 'package:dio/dio.dart';
import 'package:med_voy/core/network/api_constant.dart';
import 'package:med_voy/features/home/data/api/home_api_constants.dart';
import 'package:med_voy/features/home/data/model/home_specialization_response.dart';
import 'package:retrofit/retrofit.dart';
part 'home_api_service.g.dart';


@RestApi(baseUrl: ApiConstant.apiBaseUrl )
abstract class HomeApiService {
factory HomeApiService(Dio dio) = _HomeApiService;

@GET(HomeApiConstants.specializationEP)
Future<HomeSpecializationResponse> getSpecialization();
}
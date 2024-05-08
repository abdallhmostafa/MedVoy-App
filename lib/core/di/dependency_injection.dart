import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:med_voy/core/network/api_service.dart';
import 'package:med_voy/core/network/dio_factory.dart';
import 'package:med_voy/features/login/data/repos/login_repo_impl.dart';
import 'package:med_voy/features/login/logic/cubit/login_cubit.dart';
import 'package:med_voy/features/sign_up/data/repo/sign_up_repo_impl.dart';
import 'package:med_voy/features/sign_up/logic/sign_up_cubit.dart';

final GetIt getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Dio & Api Service
  Dio dio = await DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // Login
  getIt.registerLazySingleton<LoginRepoImpl>(
      () => LoginRepoImpl(apiService: getIt<ApiService>()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt<LoginRepoImpl>()));

  // SignUp
  getIt.registerLazySingleton<SignUpRepoImpl>(
      () => SignUpRepoImpl(getIt<ApiService>()));
  getIt
      .registerFactory<SignUpCubit>(() => SignUpCubit(getIt<SignUpRepoImpl>()));
}

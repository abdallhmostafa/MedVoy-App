import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:med_voy/core/network/api_service.dart';
import 'package:med_voy/core/network/dio_factory.dart';
import 'package:med_voy/features/auth/login/data/repos/login_repo_impl.dart';
import 'package:med_voy/features/auth/login/logic/cubit/login_cubit.dart';
import 'package:med_voy/features/auth/sign_up/data/repo/sign_up_repo_impl.dart';
import 'package:med_voy/features/auth/sign_up/logic/sign_up_cubit.dart';
import 'package:med_voy/features/home/data/api/home_api_service.dart';
import 'package:med_voy/features/home/data/repo/home_specialization_repo.dart';
import 'package:med_voy/features/home/logic/home_cubit.dart';

final GetIt getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // ----------------------------- Dio & Api Service -------------------------------- //
  Dio dio = await DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  //----------------------------- Login ----------------------------- //
  getIt.registerLazySingleton<LoginRepoImpl>(
      () => LoginRepoImpl(apiService: getIt<ApiService>()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt<LoginRepoImpl>()));

  // ----------------------------- SignUp ----------------------------- //
  getIt.registerLazySingleton<SignUpRepoImpl>(
      () => SignUpRepoImpl(getIt<ApiService>()));
  getIt
      .registerFactory<SignUpCubit>(() => SignUpCubit(getIt<SignUpRepoImpl>()));

  // ----------------------------- Home ----------------------------- //
  getIt.registerLazySingleton<HomeApiService>(() => HomeApiService(dio));
  getIt.registerLazySingleton<HomeSpecializationRepo>(
      () => HomeSpecializationRepo(getIt<HomeApiService>()));

  getIt.registerFactory<HomeCubit>(
      () => HomeCubit(getIt<HomeSpecializationRepo>()));
}

import 'package:dio/dio.dart';
import 'package:med_voy/core/helpers/app_constant.dart';
import 'package:med_voy/core/helpers/shared_pref_helper.dart';
// ignore: depend_on_referenced_packages
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory {
  /// This is Private Constructor to  Prevent an Creating an Instance of this class
  DioFactory._();

  static Dio? dio;
// Todo: Omer ahmed convert this func return to Dio withOut Future and async
  static Dio getDio() {
    Duration timeout = const Duration(seconds: 7);

    if (dio == null) {
      dio = Dio();
      dio!
        ..options.connectTimeout = timeout
        ..options.receiveTimeout = timeout;
      addDioInterceptor();
      addDioHeader();
      return dio!;
    } else {
      return dio!;
    }
  }

  static void addDioHeader() {
    dio?.options.headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      // 'Authorization': 'Bearer ${SharePrefHelper.getSecuredString(SharedPrefsKey.userToken)}',
      'Authorization': 'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL3ZjYXJlLmludGVncmF0aW9uMjUuY29tL2FwaS9hdXRoL2xvZ2luIiwiaWF0IjoxNzIwMTIyMjIzLCJleHAiOjE3MjAyMDg2MjMsIm5iZiI6MTcyMDEyMjIyMywianRpIjoidVdjSnZ4b0ZIVVdCQ1prOSIsInN1YiI6IjEyODkiLCJwcnYiOiIyM2JkNWM4OTQ5ZjYwMGFkYjM5ZTcwMWM0MDA4NzJkYjdhNTk3NmY3In0.ZfSnPXaLm1DxgZpZQIRXmUsi09Q4JN4V8iZCrn8V1dI',
    };
  }

  static Future<void> setIntoTokenAfterLogin(String token) async {
    dio?.options.headers = {
      'Authorization': 'Bearer $token',
    };
  }

  static void addDioInterceptor() {
    dio?.interceptors.add(PrettyDioLogger(
        request: true, requestHeader: true, responseHeader: true));
  }
}

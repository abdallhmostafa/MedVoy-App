import 'package:dio/dio.dart';
// ignore: depend_on_referenced_packages
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory {
  /// This is Private Constructor to  Prevent an Creating an Instance of this class
  DioFactory._();

  static Dio? dio;
// Todo: Omer ahmed convert this func return to Dio withOut Future and async
  static Future<Dio> getDio() async {
    Duration timeout = const Duration(seconds: 30);

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
      'Authorization': 'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL3ZjYXJlLmludGVncmF0aW9uMjUuY29tL2FwaS9hdXRoL2xvZ2luIiwiaWF0IjoxNzE4NjQwMzI5LCJleHAiOjE3MTg3MjY3MjksIm5iZiI6MTcxODY0MDMyOSwianRpIjoiSGR0VDlUVXJXTVFwcFo2RSIsInN1YiI6IjEyODkiLCJwcnYiOiIyM2JkNWM4OTQ5ZjYwMGFkYjM5ZTcwMWM0MDA4NzJkYjdhNTk3NmY3In0.QTdE8p0HTET1FSjZOsa4RpCK82g4LB27t6zsVw87ZQE',
    };
  }

  static void addDioInterceptor() {
    dio?.interceptors.add(PrettyDioLogger(
        request: true, requestHeader: true, responseHeader: true));
  }
}

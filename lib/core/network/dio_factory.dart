import 'package:dio/dio.dart';
// ignore: depend_on_referenced_packages
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
class DioFactory{
  /// This is Private Constructor to  Prevent an Creating an Instance of this class
  DioFactory._();

  static Dio? dio;
// Todo: Omer ahmed convert this func return to Dio withOut Future and async
  static Future<Dio> getDio()async{
    Duration timeout =const Duration(seconds: 30);

  if(dio == null){
    dio =Dio();
    dio!..options.connectTimeout= timeout..options.receiveTimeout= timeout;
    addDioInterceptor();
    return dio!;
  }else{

    return dio!;
  }

  }


  static void addDioInterceptor(){
    dio?.interceptors.add(PrettyDioLogger(
      request: true,
      requestHeader: true,
      responseHeader: true
    ));
  }

}
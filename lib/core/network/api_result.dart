import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:med_voy/core/network/api_error_handler.dart';

part 'api_result.freezed.dart';

@Freezed()
abstract class ApiResult<T> with _$ApiResult<T> {
  const factory ApiResult.success(T data) = success<T>;

  const factory ApiResult.failure(ErrorHandler errorHandler) = Failuer<T>;
}

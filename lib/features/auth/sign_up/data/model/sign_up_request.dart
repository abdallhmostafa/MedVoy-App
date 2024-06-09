import 'package:json_annotation/json_annotation.dart';

part 'sign_up_request.g.dart';

@JsonSerializable()
class SignUpRequest {
  final String name;
  final String email;
  final String phone;
  final int gender;
  final String password;
  @JsonKey(name: 'password_confirmation')
  final String passwordConfirmation;

  SignUpRequest(
      {required this.passwordConfirmation,
      required this.name,
      required this.email,
      required this.password,
      required this.phone,
      required this.gender});

  Map<String, dynamic> toJson() => _$SignUpRequestToJson(this);
}

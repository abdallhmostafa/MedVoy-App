import 'package:json_annotation/json_annotation.dart';
part 'home_specialization_response.g.dart';

@JsonSerializable()
class HomeSpecializationResponse {
  String? message;
  @JsonKey(name: 'data')
  List<SpecializationDataList>? specializationDataList;
  bool? status;
  int? code;

  HomeSpecializationResponse(
      {this.message, this.specializationDataList, this.status, this.code});
  factory HomeSpecializationResponse.fromJson(Map<String, dynamic> json) =>
      _$HomeSpecializationResponseFromJson(json);
}


@JsonSerializable()
class SpecializationDataList {
  int? id;
  String? name;
  @JsonKey(name: 'doctors')
  List<Doctors>? doctorsList;

  SpecializationDataList({this.id, this.name, this.doctorsList});
  factory SpecializationDataList.fromJson(Map<String, dynamic> json) =>
      _$SpecializationDataListFromJson(json);
}


@JsonSerializable()
class Doctors {
  int? id;
  String? name;
  String? email;
  String? phone;
  String? photo;
  String? gender;
  String? address;
  String? description;
  String? degree;
  Specialization? specialization;
  City? city;
  @JsonKey(name: 'appoint_price')
  int? appointPrice;
  @JsonKey(name: 'start_time')
  String? startTime;
  @JsonKey(name: 'end_time')
  String? endTime;

  Doctors(
      {this.id,
      this.name,
      this.email,
      this.phone,
      this.photo,
      this.gender,
      this.address,
      this.description,
      this.degree,
      this.specialization,
      this.city,
      this.appointPrice,
      this.startTime,
      this.endTime});
  factory Doctors.fromJson(Map<String, dynamic> json) => _$DoctorsFromJson(json);
}
@JsonSerializable()
class Specialization {
  int? id;
  String? name;

  Specialization({this.id, this.name});
  factory Specialization.fromJson(Map<String, dynamic> json) =>
      _$SpecializationFromJson(json);
}
@JsonSerializable()
class City {
  int? id;
  String? name;
  Specialization? governrate;

  City({this.id, this.name, this.governrate});
  factory City.fromJson(Map<String, dynamic> json) => _$CityFromJson(json);
}

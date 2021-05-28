import 'package:json_annotation/json_annotation.dart';
import 'package:health_planner_models/info_section.dart';
import 'package:health_planner_models/week_schedule.dart';

part 'doctor.g.dart';

enum Gender {
  male,
  female,
  unspecified,
}

@JsonSerializable(explicitToJson: true)
class DoctorModel {
  final String uid;

  final String name;

  final Gender gender;

  @JsonKey(defaultValue: '')
  final String specialty;

  @JsonKey(defaultValue: '')
  final String registrationNumber; // registration number with AHPRA.

  @JsonKey(defaultValue: ['English'])
  final List<String> languageList;

  @JsonKey(defaultValue: [])
  final List<InfoSectionModel> info;

  final List<String> clinicList;

  final String photoUrl;

  /// url of booking page(for web only) before; need use other platforms like hotdoc for now
  @JsonKey(defaultValue: '')
  final String thirdPartyUrl;

  DoctorModel({
    required this.uid,
    required this.name,
    required this.gender,
    required this.specialty,
    required this.registrationNumber,
    required this.languageList,
    required this.info,
    required this.clinicList,
    required this.photoUrl,
    required this.thirdPartyUrl,
  });

  factory DoctorModel.fromJson(Map<String, dynamic> json) =>
      _$DoctorModelFromJson(json);
  Map<String, dynamic> toJson() => _$DoctorModelToJson(this);

  @override
  String toString() {
    return 'DoctorModel(uid: $uid, name: $name, gender: ${gender.toString().split('.')[1]}, specialty: $specialty, registrationNumber: $registrationNumber, languageList: $languageList, info: $info, clinicList: $clinicList, photoUrl: $photoUrl, thirdPartyUrl: $thirdPartyUrl)';
  }

  @override
  bool operator ==(Object o) {
    return o is DoctorModel && o.toString() == toString();
  }

  @override
  int get hashCode => toString().hashCode;
}

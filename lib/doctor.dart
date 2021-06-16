import 'package:json_annotation/json_annotation.dart';

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

  @JsonKey(defaultValue: Gender.unspecified)
  final Gender gender;

  // this will be the identity for the doctor to login and view
  @JsonKey(defaultValue: '')
  final String email;

  @JsonKey(defaultValue: '')
  final String specialty;

  @JsonKey(defaultValue: '')
  final String registrationNumber; // registration number with AHPRA.

  @JsonKey(defaultValue: ['English'])
  final List<String> languageList;

  @JsonKey(defaultValue: '')
  final String info;

  @JsonKey(defaultValue: [])
  final List<String> clinicList;

  // clinic admins that can change the info of this doctor
  @JsonKey(defaultValue: [])
  final List<String> adminList;

  @JsonKey(defaultValue: '')
  final String photoUrl;

  DoctorModel({
    required this.uid,
    required this.name,
    required this.email,
    required this.gender,
    required this.specialty,
    required this.registrationNumber,
    required this.languageList,
    required this.info,
    required this.clinicList,
    required this.adminList,
    required this.photoUrl,
  });

  factory DoctorModel.fromJson(Map<String, dynamic> json) =>
      _$DoctorModelFromJson(json);
  Map<String, dynamic> toJson() => _$DoctorModelToJson(this);

  @override
  String toString() {
    return 'DoctorModel(uid: $uid, name: $name, gender: ${gender.toString().split('.')[1]}, specialty: $specialty, registrationNumber: $registrationNumber, languageList: $languageList, info: $info, clinicList: $clinicList, photoUrl: $photoUrl)';
  }

  @override
  bool operator ==(Object o) {
    return o is DoctorModel && o.toString() == toString();
  }

  @override
  int get hashCode => toString().hashCode;
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PatientModel _$PatientModelFromJson(Map<String, dynamic> json) {
  return PatientModel(
    firstName: json['firstName'] as String,
    lastName: json['lastName'] as String,
    uid: json['uid'] as String,
    address: AddressModel.fromJson(json['address'] as Map<String, dynamic>),
    phoneNumber: json['phoneNumber'] as String,
    medicareNumber: json['medicareNumber'] as String,
    dateOfBirth: json['dateOfBirth'] as String,
  );
}

Map<String, dynamic> _$PatientModelToJson(PatientModel instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'uid': instance.uid,
      'address': instance.address.toJson(),
      'phoneNumber': instance.phoneNumber,
      'medicareNumber': instance.medicareNumber,
      'dateOfBirth': instance.dateOfBirth,
    };

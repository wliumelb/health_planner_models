import 'package:json_annotation/json_annotation.dart';
import 'address.dart';

part 'patient.g.dart';

@JsonSerializable(explicitToJson: true)
class PatientModel {
  final String firstName;
  final String lastName;
  final String uid;
  final AddressModel address;
  final String phoneNumber;
  final String medicareNumber;
  final String dateOfBirth; // yyyy-MM-dd

  PatientModel({
    required this.firstName,
    required this.lastName,
    required this.uid,
    required this.address,
    required this.phoneNumber,
    required this.medicareNumber,
    required this.dateOfBirth,
  });

  factory PatientModel.fromJson(Map<String, dynamic> json) =>
      _$PatientModelFromJson(json);
  Map<String, dynamic> toJson() => _$PatientModelToJson(this);

  String get name => '${this.firstName} ${this.lastName}'.trim();
  @override
  String toString() {
    return 'PatientModel(uid: $uid, firstName: $firstName, lastName: $lastName, address: $address, phoneNumber: $phoneNumber, dateOfBirth: $dateOfBirth)';
  }

  @override
  bool operator ==(Object o) {
    return o is PatientModel && o.toString() == toString();
  }

  @override
  int get hashCode => toString().hashCode;
}

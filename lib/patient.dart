import 'package:flutter/foundation.dart';
import 'package:intl/intl.dart';

import 'address.dart';

class PatientModel {
  final String firstName;
  final String lastName;
  final String uid;
  final AddressModel address;
  final String phoneNumber;
  final String medicareNumber;
  final DateTime dateOfBirth;

  PatientModel({
    @required this.firstName,
    @required this.lastName,
    @required this.uid,
    @required this.address,
    @required this.phoneNumber,
    @required this.medicareNumber,
    @required this.dateOfBirth,
  });

  String get name => '${this.firstName ?? ''} ${this.lastName ?? ''}'.trim();

  static PatientModel fromMap(Map<String, dynamic> map) {
    final String uid = map['uid'];
    final address = AddressModel.fromMap(Map.from(map['address']));
    final dateOfBirth = DateTime.parse(map['dateOfBirth']);

    assert(uid != null);

    return PatientModel(
      firstName: map['firstName'],
      lastName: map['lastName'],
      uid: map['uid'],
      address: address,
      dateOfBirth: dateOfBirth,
      phoneNumber: map['phoneNumber'],
      medicareNumber: map['medicareNumber'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'firstName': this.firstName,
      'lastName': this.lastName,
      'uid': this.uid,
      'address': this.address.toMap(),
      'dateOfBirth': DateFormat('yyyy-MM-dd').format(this.dateOfBirth),
      'phoneNumber': this.phoneNumber,
      'medicareNumber': this.medicareNumber,
    };
  }
}

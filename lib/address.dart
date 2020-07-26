import 'package:flutter/foundation.dart';

class Address {
  final String unitNumber;
  final String streetAddress;
  final String suburb;
  final String state;
  final String postcode;
  Address({
    @required this.unitNumber,
    @required this.streetAddress,
    @required this.suburb,
    @required this.state,
    @required this.postcode,
  });
  static Address fromMap(Map<String, String> map) {
    return Address(
      unitNumber: map['unitNumber'],
      streetAddress: map['streetAddress'],
      suburb: map['suburb'],
      state: map['state'],
      postcode: map['postcode'],
    );
  }

  String toString() {
    if (unitNumber != null && unitNumber != '') {
      return '$unitNumber / $streetAddress, $suburb, $state $postcode';
    }

    return '$streetAddress, $suburb, $state $postcode';
  }

  Map<String, dynamic> toMap() {
    return {
      'unitNumber': this.unitNumber,
      'streetAddress': this.streetAddress,
      'suburb': this.suburb,
      'state': this.state,
      'postcode': this.postcode,
    };
  }
}

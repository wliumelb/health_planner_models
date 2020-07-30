import 'package:flutter/foundation.dart';

/// this file is copied from firestore library
import 'firestore_geopoint.dart';

class AddressModel {
  final String unitNumber;
  final String streetAddress;
  final String suburb;
  final String state;
  final String postcode;
  final GeoPoint position;
  AddressModel({
    @required this.unitNumber,
    @required this.streetAddress,
    @required this.suburb,
    @required this.state,
    @required this.postcode,
    @required this.position,
  });
  static AddressModel fromMap(Map<String, dynamic> map) {
    return AddressModel(
      unitNumber: map['unitNumber'],
      streetAddress: map['streetAddress'],
      suburb: map['suburb'],
      state: map['state'],
      postcode: map['postcode'],
      position: map['position'],
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
      'position': this.position,
    };
  }
}

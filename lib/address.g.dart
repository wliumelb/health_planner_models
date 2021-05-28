// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddressModel _$AddressModelFromJson(Map<String, dynamic> json) {
  return AddressModel(
    unitNumber: json['unitNumber'] as String,
    streetAddress: json['streetAddress'] as String,
    suburb: json['suburb'] as String,
    state: json['state'] as String,
    postcode: json['postcode'] as String,
  );
}

Map<String, dynamic> _$AddressModelToJson(AddressModel instance) =>
    <String, dynamic>{
      'unitNumber': instance.unitNumber,
      'streetAddress': instance.streetAddress,
      'suburb': instance.suburb,
      'state': instance.state,
      'postcode': instance.postcode,
    };

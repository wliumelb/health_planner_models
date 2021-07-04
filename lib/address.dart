import 'package:json_annotation/json_annotation.dart';

part 'address.g.dart';

@JsonSerializable(explicitToJson: true)
class AddressModel {
  final String unitNumber;
  final String streetAddress;
  final String suburb;
  final String state;
  final String postcode;
  AddressModel({
    required this.unitNumber,
    required this.streetAddress,
    required this.suburb,
    required this.state,
    required this.postcode,
  });

  static get empty => AddressModel(
        unitNumber: '',
        streetAddress: '',
        suburb: '',
        state: '',
        postcode: '',
      );

  factory AddressModel.fromJson(Map<String, dynamic> json) =>
      _$AddressModelFromJson(json);
  Map<String, dynamic> toJson() => _$AddressModelToJson(this);

  @override
  String toString() {
    if (unitNumber != '') {
      return '$unitNumber / $streetAddress, $suburb, $state $postcode';
    }

    return '$streetAddress, $suburb, $state $postcode';
  }

  @override
  bool operator ==(dynamic o) {
    return o is AddressModel && o.toString() == this.toString();
  }

  @override
  int get hashCode => this.toString().hashCode;
}

import 'package:json_annotation/json_annotation.dart';

part 'contact_info.g.dart';

@JsonSerializable(explicitToJson: true)
class ContactInfoModel {
  final String phone;
  final String email;
  final String fax;
  // home page of the clinic
  final String website;
  // page from third party platforms e.g. hotdoc
  final String thirdPartyUrl;

  ContactInfoModel({
    required this.phone,
    required this.email,
    required this.fax,
    required this.website,
    required this.thirdPartyUrl,
  });

  factory ContactInfoModel.fromJson(Map<String, dynamic> json) =>
      _$ContactInfoModelFromJson(json);
  Map<String, dynamic> toJson() => _$ContactInfoModelToJson(this);
}

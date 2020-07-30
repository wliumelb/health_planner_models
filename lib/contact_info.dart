import 'package:flutter/foundation.dart';

class ContactInfoModel {
  final String phone;
  final String email;
  final String fax;
  // home page of the clinic
  final String website;
  // page from third party platforms e.g. hotdoc
  final String thirdPartyUrl;

  ContactInfoModel({
    @required this.phone,
    @required this.email,
    @required this.fax,
    @required this.website,
    @required this.thirdPartyUrl,
  });
  static ContactInfoModel fromMap(Map<String, dynamic> map) {
    return ContactInfoModel(
      phone: map['phone'],
      email: map['email'],
      fax: map['fax'],
      website: map['website'],
      thirdPartyUrl: map['thirdPartyUrl'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'phone': this.phone,
      'email': this.email,
      'fax': this.fax,
      'website': this.website,
      'thirdPartyUrl': this.thirdPartyUrl,
    };
  }
}

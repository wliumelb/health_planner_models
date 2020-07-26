import 'package:flutter/foundation.dart';

import 'address.dart';
import 'display_section.dart';
import 'doctor.dart';
import 'info_section.dart';

class ClinicModel {
  final String uid;
  final String name;
  final List<InfoSectionModel> info; // infomation for the patients
  final List<InfoSectionModel> about; // about the clinic
  final List<InfoSectionModel> services; // about the clinic
  final List<InfoSectionModel> billingPolicy;
  final List<DisplaySectionModel> displayList; // photo and message on homepage
  final List<String> privacyPolicy;
  final List<InfoSectionModel> news;
  final InfoSectionModel
      intro; // some message to show to visitors. e.g. Covid-19 Notifications
  final String photoUrl;
  final String phone;
  final String fax;
  final Address address;
  final String email;
  final String thirdPartyUrl;
  final List<DoctorModel> doctorList;
  ClinicModel({
    @required this.uid,
    @required this.name,
    @required this.about,
    @required this.services,
    @required this.info,
    @required this.news,
    @required this.intro,
    @required this.billingPolicy,
    @required this.privacyPolicy,
    @required this.photoUrl,
    @required this.address,
    @required this.fax,
    @required this.phone,
    @required this.email,
    @required this.thirdPartyUrl,
    @required this.doctorList,
    @required this.displayList,
  });
  static ClinicModel fromMap(Map<String, dynamic> map) {
    final uid = map['uid'];
    assert(uid != null);
    final info = List<Map>.from(map['info'] ?? [])
        .map((e) => InfoSectionModel.fromMap(e))
        .toList();
    final about = List<Map>.from(map['about'] ?? [])
        .map((e) => InfoSectionModel.fromMap(e))
        .toList();
    final billingPolicy = List<Map>.from(map['billingPolicy'] ?? [])
        .map((e) => InfoSectionModel.fromMap(e))
        .toList();
    final services = List<Map>.from(map['services'] ?? [])
        .map((e) => InfoSectionModel.fromMap(e))
        .toList();
    final privacyPolicy =
        List<String>.from(map['privacyPolicy'] ?? []).toList();
    final news = List<Map>.from(map['news'] ?? [])
        .map((e) => InfoSectionModel.fromMap(e))
        .toList();
    final intro = InfoSectionModel.fromMap(Map.from(map['intro']));
    final doctorList = List<Map>.from(map['doctorList'])
        .map((e) => DoctorModel.fromMap(e))
        .toList();
    final displayList = List<Map>.from(map['displayList'])
        .map((e) => DisplaySectionModel.fromMap(e))
        .toList();
    final address = Address.fromMap(Map.from(map['address']));
    return ClinicModel(
      uid: uid,
      name: map['name'],
      about: about,
      services: services,
      info: info,
      news: news,
      intro: intro,
      billingPolicy: billingPolicy,
      privacyPolicy: privacyPolicy,
      phone: map['phone'],
      photoUrl: map['photoUrl'],
      address: address,
      email: map['email'],
      doctorList: doctorList,
      displayList: displayList,
      fax: map['fax'],
      thirdPartyUrl: map['thirdPartyUrl'],
    );
  }
}

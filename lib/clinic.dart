import 'package:flutter/foundation.dart';
import 'package:health_planner_models/contact_info.dart';
import 'package:health_planner_models/open_hours.dart';

import 'address.dart';
import 'display_section.dart';
import 'doctor.dart';
import 'info_section.dart';

class ClinicModel {
  final String uid;
  final String name;
  final bool isBulkBilling;
  final bool isChinese;
  final String specialty;
  final String photoUrl;
  final List<String> languages;
  final OpenHoursModel openHours;

  /// general information for patient; e.g. how to register & what to do when visit the clinic
  final List<InfoSectionModel> info;

  /// general information about the clinic
  final List<InfoSectionModel> about;

  /// list of services provided at the clinic
  final List<InfoSectionModel> services;

  /// information related to billing
  final List<InfoSectionModel> billingPolicy;

  /// news about the clinic
  final List<InfoSectionModel> news;

  /// what to display on the home page
  final List<DisplaySectionModel> displayList;

  final List<String> privacyPolicy;

  /// banner on the home page for important notifications
  final InfoSectionModel intro;

  final ContactInfoModel contactInfo;
  final AddressModel address;

  final List<DoctorModel> doctorList;
  ClinicModel({
    @required this.uid,
    @required this.name,
    @required this.photoUrl,
    @required this.specialty,
    @required this.openHours,
    @required this.isBulkBilling,
    @required this.isChinese,
    @required this.languages,
    @required this.about,
    @required this.services,
    @required this.info,
    @required this.news,
    @required this.intro,
    @required this.billingPolicy,
    @required this.privacyPolicy,
    @required this.address,
    @required this.contactInfo,
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
    final languages = List<String>.from(map['languages'] ?? []).toList();
    final openHours = OpenHoursModel.fromMap(Map.from(map['openHours']));
    // suburb and geopoint are saved at the root level of the firbase document for collection query
    final address = AddressModel.fromMap(map);
    final contactInfo = ContactInfoModel.fromMap(Map.from(map['contactInfo']));
    return ClinicModel(
      uid: uid,
      name: map['name'],
      specialty: map['specialty'],
      isBulkBilling: map['isBulkBilling'],
      openHours: openHours,
      isChinese: map['isChinese'],
      photoUrl: map['photoUrl'],
      languages: languages,
      about: about,
      services: services,
      info: info,
      news: news,
      intro: intro,
      billingPolicy: billingPolicy,
      privacyPolicy: privacyPolicy,
      address: address,
      contactInfo: contactInfo,
      doctorList: doctorList,
      displayList: displayList,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'uid': this.uid,
      'name': this.name,
      'specialty': this.specialty,
      'isBulkBilling': this.isBulkBilling,
      'isChinese': this.isChinese,
      'openHours': this.openHours.toMap(),
      'about': this.about.map((info) => info.toMap()).toList(),
      'info': this.info.map((info) => info.toMap()).toList(),
      'news': this.news.map((info) => info.toMap()).toList(),
      'billingPolicy': this.billingPolicy.map((info) => info.toMap()).toList(),
      'services': this.services.map((info) => info.toMap()).toList(),
      'doctorList': this.doctorList.map((doctor) => doctor.toMap()).toList(),
      'privacyPolicy': this.privacyPolicy,
      'intro': this.intro.toMap(),
      'contactInfo': this.contactInfo.toMap(),
      'photoUrl': this.photoUrl,
      'displayList':
          this.displayList.map((display) => display.toMap()).toList(),
      // save the address parameters at the root to make firebase collection query easier
      ...this.address.toMap(),
    };
  }
}

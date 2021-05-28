import 'package:health_planner_models/week_schedule.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:health_planner_models/contact_info.dart';

import 'address.dart';
import 'info_section.dart';

part 'clinic.g.dart';

@JsonSerializable(explicitToJson: true)
class ClinicModel {
  final String uid;
  final String name;

  @JsonKey(defaultValue: false)
  final bool isBulkBilling;

  @JsonKey(defaultValue: '')
  final String specialty;

  final String photoUrl;

  @JsonKey(defaultValue: ['English'])
  final List<String> languageList;

  final WeekScheduleModel openHours;

  /// general information for patient; e.g. how to register & what to do when visit the clinic
  @JsonKey(defaultValue: [])
  final List<InfoSectionModel> info;

  /// general information about the clinic
  @JsonKey(defaultValue: [])
  final List<InfoSectionModel> about;

  /// list of services provided at the clinic
  @JsonKey(defaultValue: [])
  final List<InfoSectionModel> services;

  /// information related to billing
  @JsonKey(defaultValue: [])
  final List<InfoSectionModel> billingPolicy;

  /// news about the clinic
  @JsonKey(defaultValue: [])
  final List<InfoSectionModel> news;

  /// what to display on the home page
  @JsonKey(defaultValue: [])
  final List<InfoSectionModel> displayList;

  @JsonKey(defaultValue: [])
  final List<String> privacyPolicy;

  /// banner on the home page for important notifications
  final InfoSectionModel intro;

  final ContactInfoModel contactInfo;

  final AddressModel address;

  /// list of doctors' uids
  final List<String> doctorList;
  ClinicModel({
    required this.uid,
    required this.name,
    required this.photoUrl,
    required this.specialty,
    required this.openHours,
    required this.isBulkBilling,
    required this.languageList,
    required this.about,
    required this.services,
    required this.info,
    required this.news,
    required this.intro,
    required this.billingPolicy,
    required this.privacyPolicy,
    required this.address,
    required this.contactInfo,
    required this.doctorList,
    required this.displayList,
  });

  factory ClinicModel.fromJson(Map<String, dynamic> json) =>
      _$ClinicModelFromJson(json);
  Map<String, dynamic> toJson() => _$ClinicModelToJson(this);
}

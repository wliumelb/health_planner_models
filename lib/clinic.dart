import 'package:flutter_quill/models/quill_delta.dart';
import 'package:health_planner_models/notification.dart';
import 'package:health_planner_models/week_schedule.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:health_planner_models/contact_info.dart';

import 'address.dart';

part 'clinic.g.dart';

class Specialty {
  static String get generalPractitioner => 'General Practitioner';
  static String get admin => 'Administration';
}

@DeltaConverter()
@JsonSerializable(explicitToJson: true)
class ClinicModel {
  final String uid;
  final String name;

  @JsonKey(defaultValue: false)
  final bool isBulkBilling;

  @JsonKey(defaultValue: '')
  final String specialty;

  final String photoUrl;

  final WeekScheduleModel openHours;

  /// general information for patient; e.g. how to register & what to do when visit the clinic
  final Delta infoForPatient;

  /// general information about the clinic
  final Delta about;

  /// list of services provided at the clinic
  final Delta services;

  /// information related to billing
  final Delta billingPolicy;

  /// news about the clinic
  @JsonKey(defaultValue: [])
  final List<NotificationModel> notificationList;

  /// what to display on the home page
  @JsonKey(defaultValue: '')
  final String displayPhotoUrl;

  final Delta privacyPolicy;

  final ContactInfoModel contactInfo;

  final AddressModel address;

  /// list of doctors' uids
  @JsonKey(defaultValue: [])
  final List<String> staffList;

  /// the list of uid of admin users that can modify this clinic's info
  @JsonKey(defaultValue: [])
  final List<String> adminList;
  ClinicModel({
    required this.uid,
    required this.name,
    required this.photoUrl,
    required this.specialty,
    required this.openHours,
    required this.isBulkBilling,
    required this.notificationList,
    required this.about,
    required this.services,
    required this.infoForPatient,
    required this.billingPolicy,
    required this.privacyPolicy,
    required this.address,
    required this.contactInfo,
    required this.staffList,
    required this.adminList,
    required this.displayPhotoUrl,
  });

  static empty({String uid = '', String adminUid = ''}) {
    final delta = Delta.fromJson([]);
    ClinicModel(
      uid: uid,
      name: '',
      photoUrl: '',
      specialty: '',
      openHours: WeekScheduleModel.empty,
      isBulkBilling: false,
      notificationList: [],
      about: delta,
      services: delta,
      infoForPatient: delta,
      billingPolicy: delta,
      privacyPolicy: delta,
      address: AddressModel.empty,
      contactInfo: ContactInfoModel.empty,
      staffList: [],
      adminList: [adminUid],
      displayPhotoUrl: '',
    );
  }

  factory ClinicModel.fromJson(Map<String, dynamic> json) => _$ClinicModelFromJson(json);
  Map<String, dynamic> toJson() => _$ClinicModelToJson(this);
}

class DeltaConverter implements JsonConverter<Delta, List<dynamic>> {
  const DeltaConverter();

  @override
  Delta fromJson(List<dynamic>? jsonList) {
    return Delta.fromJson(jsonList ?? []);
  }

  @override
  List toJson(Delta delta) => delta.toJson();
}

import 'package:flutter/foundation.dart';
import 'package:health_planner_models/info_section.dart';
import 'package:health_planner_models/schedule.dart';

class DoctorModel {
  final String name;
  final String chineseName;
  final String uid;
  // url of booking page(for web only) before; need use other platforms like hotdoc for now
  final String thirdPartyUrl;
  final String registrationNumber; // registration number with AHPRA.
  final bool genderIsMale;
  final List<InfoSectionModel> info;
  final List<InfoSectionModel> chineseInfo;
  final String photoUrl;
  final List<String> languages;
  final String specialty;
  final ScheduleModel schedule;

  DoctorModel({
    @required this.name,
    @required this.chineseName,
    @required this.uid,
    @required this.thirdPartyUrl,
    @required this.registrationNumber,
    @required this.genderIsMale,
    @required this.info,
    @required this.chineseInfo,
    @required this.photoUrl,
    @required this.languages,
    @required this.specialty,
    @required this.schedule,
  });

  static DoctorModel fromMap(Map<String, dynamic> map) {
    final String uid = map['uid'];
    final String clinicUid = map['clinicUid'];
    assert(uid != null);
    assert(clinicUid != null);

    return DoctorModel(
      name: map['name'],
      chineseName: map['chineseName'],
      uid: map['uid'],
      thirdPartyUrl: map['thirdPartyUrl'],
      registrationNumber: map['registrationNumber'],
      genderIsMale: map['genderIsMale'],
      info: List.from(map['info'] ?? [])
          .map((map) => InfoSectionModel.fromMap(map))
          .toList(),
      chineseInfo: List.from(map['chineseInfo'] ?? [])
          .map((map) => InfoSectionModel.fromMap(map))
          .toList(),
      photoUrl: map['photoUrl'],
      languages: List<String>.from(map['languages']),
      specialty: map['specialty'],
      schedule: ScheduleModel.fromMap(map['schedule'] ?? {}),
    );
  }

  Map<String, dynamic> toMap() {
    final info = this.info.map((infoSection) => infoSection.toMap()).toList();
    final chineseInfo =
        this.chineseInfo.map((infoSection) => infoSection.toMap()).toList();
    final schedule = this.schedule.toMap();

    return {
      'name': this.name,
      'uid': this.uid,
      'chineseName': this.chineseName,
      'thirdPartyUrl': this.thirdPartyUrl,
      'genderIsMale': this.genderIsMale,
      'photoUrl': this.photoUrl,
      'specialty': this.specialty,
      'languages': this.languages,
      'info': info,
      'chineseInfo': chineseInfo,
      'schedule': schedule,
    };
  }
}

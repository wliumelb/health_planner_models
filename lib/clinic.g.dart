// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clinic.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClinicModel _$ClinicModelFromJson(Map<String, dynamic> json) {
  return ClinicModel(
    uid: json['uid'] as String,
    name: json['name'] as String,
    photoUrl: json['photoUrl'] as String,
    specialty: json['specialty'] as String? ?? '',
    openHours:
        WeekScheduleModel.fromJson(json['openHours'] as Map<String, dynamic>),
    isBulkBilling: json['isBulkBilling'] as bool? ?? false,
    languageList: (json['languageList'] as List<dynamic>?)
            ?.map((e) => e as String)
            .toList() ??
        ['English'],
    about: (json['about'] as List<dynamic>?)
            ?.map((e) => InfoSectionModel.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    services: (json['services'] as List<dynamic>?)
            ?.map((e) => InfoSectionModel.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    info: (json['info'] as List<dynamic>?)
            ?.map((e) => InfoSectionModel.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    news: (json['news'] as List<dynamic>?)
            ?.map((e) => InfoSectionModel.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    intro: InfoSectionModel.fromJson(json['intro'] as Map<String, dynamic>),
    billingPolicy: (json['billingPolicy'] as List<dynamic>?)
            ?.map((e) => InfoSectionModel.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    privacyPolicy: (json['privacyPolicy'] as List<dynamic>?)
            ?.map((e) => e as String)
            .toList() ??
        [],
    address: AddressModel.fromJson(json['address'] as Map<String, dynamic>),
    contactInfo:
        ContactInfoModel.fromJson(json['contactInfo'] as Map<String, dynamic>),
    doctorList:
        (json['doctorList'] as List<dynamic>).map((e) => e as String).toList(),
    displayList: (json['displayList'] as List<dynamic>?)
            ?.map((e) => InfoSectionModel.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
  );
}

Map<String, dynamic> _$ClinicModelToJson(ClinicModel instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'name': instance.name,
      'isBulkBilling': instance.isBulkBilling,
      'specialty': instance.specialty,
      'photoUrl': instance.photoUrl,
      'languageList': instance.languageList,
      'openHours': instance.openHours.toJson(),
      'info': instance.info.map((e) => e.toJson()).toList(),
      'about': instance.about.map((e) => e.toJson()).toList(),
      'services': instance.services.map((e) => e.toJson()).toList(),
      'billingPolicy': instance.billingPolicy.map((e) => e.toJson()).toList(),
      'news': instance.news.map((e) => e.toJson()).toList(),
      'displayList': instance.displayList.map((e) => e.toJson()).toList(),
      'privacyPolicy': instance.privacyPolicy,
      'intro': instance.intro.toJson(),
      'contactInfo': instance.contactInfo.toJson(),
      'address': instance.address.toJson(),
      'doctorList': instance.doctorList,
    };

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
    notificationList: (json['notificationList'] as List<dynamic>?)
            ?.map((e) => NotificationModel.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    about: json['about'] as String? ?? '',
    services: json['services'] as String? ?? '',
    infoForPatient: json['infoForPatient'] as String? ?? '',
    billingPolicy: json['billingPolicy'] as String? ?? '',
    privacyPolicy: json['privacyPolicy'] as String? ?? '',
    address: AddressModel.fromJson(json['address'] as Map<String, dynamic>),
    contactInfo:
        ContactInfoModel.fromJson(json['contactInfo'] as Map<String, dynamic>),
    staffList:
        (json['staffList'] as List<dynamic>).map((e) => e as String).toList(),
    displayPhotoUrl: json['displayPhotoUrl'] as String? ?? '',
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
      'infoForPatient': instance.infoForPatient,
      'about': instance.about,
      'services': instance.services,
      'billingPolicy': instance.billingPolicy,
      'notificationList':
          instance.notificationList.map((e) => e.toJson()).toList(),
      'displayPhotoUrl': instance.displayPhotoUrl,
      'privacyPolicy': instance.privacyPolicy,
      'contactInfo': instance.contactInfo.toJson(),
      'address': instance.address.toJson(),
      'staffList': instance.staffList,
    };

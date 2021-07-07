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
    notificationList: (json['notificationList'] as List<dynamic>?)
            ?.map((e) => NotificationModel.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    about: const DeltaConverter().fromJson(json['about'] as List),
    services: const DeltaConverter().fromJson(json['services'] as List),
    infoForPatient:
        const DeltaConverter().fromJson(json['infoForPatient'] as List),
    billingPolicy:
        const DeltaConverter().fromJson(json['billingPolicy'] as List),
    privacyPolicy:
        const DeltaConverter().fromJson(json['privacyPolicy'] as List),
    address: AddressModel.fromJson(json['address'] as Map<String, dynamic>),
    contactInfo:
        ContactInfoModel.fromJson(json['contactInfo'] as Map<String, dynamic>),
    staffList: (json['staffList'] as List<dynamic>?)
            ?.map((e) => e as String)
            .toList() ??
        [],
    adminList: (json['adminList'] as List<dynamic>?)
            ?.map((e) => e as String)
            .toList() ??
        [],
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
      'openHours': instance.openHours.toJson(),
      'infoForPatient': const DeltaConverter().toJson(instance.infoForPatient),
      'about': const DeltaConverter().toJson(instance.about),
      'services': const DeltaConverter().toJson(instance.services),
      'billingPolicy': const DeltaConverter().toJson(instance.billingPolicy),
      'notificationList':
          instance.notificationList.map((e) => e.toJson()).toList(),
      'displayPhotoUrl': instance.displayPhotoUrl,
      'privacyPolicy': const DeltaConverter().toJson(instance.privacyPolicy),
      'contactInfo': instance.contactInfo.toJson(),
      'address': instance.address.toJson(),
      'staffList': instance.staffList,
      'adminList': instance.adminList,
    };
